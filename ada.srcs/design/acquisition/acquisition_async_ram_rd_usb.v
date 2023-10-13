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
    input            usb_clk,
    input            rst_n,
    // start sending signal
    input            send_en,
    // async ram interface
    input      [7:0] rd_data,
    output reg       rd_en,
    // uart interface
    output reg       usb_tx_en,
    output reg [7:0] usb_tx_data,
    input            usb_busy,
    // busy signal
    output reg       rd_busy
);
  // parameter define
  parameter DEPTH = 2500;

  localparam IDLE = 5'b00001;
  localparam HOLD = 5'b00010;
  localparam HEADER = 5'b00100;
  localparam DATA = 5'b01000;
  localparam CHECKSUM = 5'b10000;

  // reg define
  reg [4:0] state;
  reg [4:0] next_state;

  reg [15:0] send_cnt;
  reg [7:0] checksum;

  reg jmp;

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
        if (jmp) next_state = IDLE;
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
      // checksum
      checksum <= 8'd0;
      // rd_en
      rd_en <= 1'b0;
      // usb
      usb_tx_en <= 1'b0;
      usb_tx_data <= 8'h00;
    end else begin
      jmp <= 1'b0;
      case (next_state)
        IDLE: begin
          // reset
          usb_tx_en <= 1'b0;
          rd_busy   <= 1'b0;
          send_cnt  <= 16'd0;
          checksum  <= 8'd0;
          if (send_en) begin
            jmp <= 1'b1;
          end
        end
        HOLD: begin
          rd_busy <= 1'b1;
          if (!usb_busy) begin
            jmp <= 1'b1;
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
              usb_tx_data <= 8'h01;
              checksum <= checksum + 8'h01;
            end
            16'd2: begin
              usb_tx_data <= DEPTH[15:8];
              checksum <= checksum + DEPTH[15:8];
              rd_en <= 1'b1;
            end
            16'd3: begin
              usb_tx_data <= DEPTH[7:0];
              checksum <= checksum + DEPTH[7:0];
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
          if (send_cnt == (DEPTH + 16'd2)) begin
            rd_en <= 1'b0;
          end else if (send_cnt == (DEPTH + 16'd3)) begin
            jmp <= 1'b1;
          end
          send_cnt <= send_cnt + 1'b1;
        end
        CHECKSUM: begin
          rd_busy <= 1'b1;
          rd_en   <= 1'b0;
          if (send_cnt == (DEPTH + 16'd4)) begin
            usb_tx_en <= 1'b1;
            usb_tx_data <= checksum;
            send_cnt <= send_cnt + 1'b1;
          end else if (send_cnt == (DEPTH + 16'd5)) begin
            usb_tx_en <= 1'b0;
            usb_tx_data <= 8'h00;
            send_cnt <= 16'd0;
            jmp <= 1'b1;
          end
        end
      endcase
    end
  end

endmodule
