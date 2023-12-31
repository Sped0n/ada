`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/13/2023 03:25:10 AM
// Design Name: 
// Module Name: acquisition_async_ram_rd_usb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module acquisition_async_ram_rd_usb (
    input             usb_clk,
    input             rst_n,
    // depth
    input      [15:0] depth,
    // start sending signal
    input             send_en,
    // acquisition enable signal
    input             acquisition_en,
    // depack signal
    input             depack,
    // packet corrupted signal
    input             packet_corrupted,
    // async ram interface
    input      [ 7:0] rd_data,
    output reg        rd_en,
    // uart interface
    output reg        usb_tx_en,
    output reg [ 7:0] usb_tx_data,
    input             usb_busy,
    // busy signal
    output reg        rd_busy
);
  // parameter define
  parameter DEPACK = 500;

  localparam IDLE = 5'b00001;
  localparam HOLD = 5'b00010;
  localparam HEADER = 5'b00100;
  localparam DATA = 5'b01000;
  localparam CHECKSUM = 5'b10000;

  // reg define
  reg [4:0] state;
  reg [4:0] next_state;

  reg [15:0] send_cnt;
  reg [15:0] total_send_cnt;
  reg [7:0] checksum;

  reg jmp;

  reg to_idle;

  reg [7:0] header_cnt;

  // main code

  // state machine

  // state transition
  always @(posedge usb_clk or negedge rst_n) begin
    if (!rst_n) state <= IDLE;
    else state <= next_state;
  end

  // state transition logic
  always @(*) begin
    case (state)
      IDLE: begin
        if (jmp) next_state = HOLD;
        else next_state = IDLE;
      end
      HOLD: begin
        if (jmp) next_state = HEADER;
        else if (to_idle) next_state = IDLE;
        else next_state = HOLD;
      end
      HEADER: begin
        if (jmp) next_state = DATA;
        else next_state = HEADER;
      end
      DATA: begin
        if (jmp) next_state = CHECKSUM;
        else next_state = DATA;
      end
      CHECKSUM: begin
        if (jmp) next_state = HOLD;
        else next_state = CHECKSUM;
      end
    endcase
  end

  // state machine output
  always @(posedge usb_clk or negedge rst_n) begin
    if (!rst_n) begin
      // state jump
      jmp <= 1'b0;
      // busy
      rd_busy <= 1'b0;
      // send_cnt
      send_cnt <= 16'd0;
      // total_send_cnt
      total_send_cnt <= 16'd0;
      // checksum
      checksum <= 8'd0;
      // rd_en
      rd_en <= 1'b0;
      // usb
      usb_tx_en <= 1'b0;
      usb_tx_data <= 8'h00;
      // total_send_cnt
      total_send_cnt <= 16'd0;
      // to_idle
      to_idle <= 1'b0;
      // header_cnt
      header_cnt <= 8'd0;
    end else begin
      jmp <= 1'b0;
      to_idle <= 1'b0;
      case (next_state)
        IDLE: begin
          // reset
          usb_tx_en      <= 1'b0;
          rd_busy        <= 1'b0;
          send_cnt       <= 16'd0;
          checksum       <= 8'd0;
          total_send_cnt <= 16'd0;
          rd_en          <= 1'b0;
          to_idle        <= 1'b0;
          header_cnt     <= 8'd0;
          if (send_en) begin
            jmp <= 1'b1;
          end
        end
        HOLD: begin
          rd_busy  <= 1'b1;
          checksum <= 8'd0;
          if ((total_send_cnt > depth - 1'b1) || (packet_corrupted)) begin
            to_idle <= 1'b1;
          end else if (!usb_busy) begin
            if (total_send_cnt == 16'd0) begin
              jmp <= 1'b1;
            end else if (depack) begin
              jmp <= 1'b1;
            end else begin
              jmp <= 1'b0;
            end
          end
        end
        HEADER: begin
          rd_busy   <= 1'b1;
          usb_tx_en <= 1'b1;
          case (send_cnt)
            16'd0: begin
              usb_tx_data <= 8'h55;
              checksum <= checksum + 8'h55;
            end
            16'd1: begin
              usb_tx_data <= header_cnt;
              checksum <= checksum + header_cnt;
            end
            16'd2: begin
              usb_tx_data <= DEPACK[15:8];
              checksum <= checksum + DEPACK[15:8];
              rd_en <= 1'b1;
            end
            16'd3: begin
              usb_tx_data <= DEPACK[7:0];
              checksum <= checksum + DEPACK[7:0];
              header_cnt <= header_cnt + 1'b1;
              jmp <= 1'b1;
            end
          endcase
          send_cnt <= send_cnt + 1'b1;
        end
        DATA: begin
          rd_busy <= 1'b1;
          usb_tx_en <= 1'b1;
          usb_tx_data <= rd_data;
          checksum <= checksum + rd_data;
          if (send_cnt == (DEPACK + 16'd2)) begin
            rd_en <= 1'b0;
          end else if (send_cnt == (DEPACK + 16'd3)) begin
            jmp <= 1'b1;
          end
          send_cnt <= send_cnt + 1'b1;
          total_send_cnt <= total_send_cnt + 1'b1;
        end
        CHECKSUM: begin
          rd_busy <= 1'b1;
          rd_en   <= 1'b0;
          if (send_cnt == (DEPACK + 16'd4)) begin
            usb_tx_en <= 1'b1;
            usb_tx_data <= checksum;
            send_cnt <= send_cnt + 1'b1;
          end else if (send_cnt == (DEPACK + 16'd5)) begin
            usb_tx_en <= 1'b0;
            usb_tx_data <= 8'h00;
            checksum <= 8'd0;
            send_cnt <= 16'd0;
            jmp <= 1'b1;
          end
        end
      endcase
    end
  end

endmodule
