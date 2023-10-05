`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/28/2023 08:56:37 PM
// Design Name: 
// Module Name: acquisition_fifo_rd_uart
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


module acquisition_fifo_rd_uart (
    // clock, use system clock here (50MHz)
    input            rd_clk,
    input            rst_n,
    // fifo interface
    input            wr_rst_busy,
    input      [7:0] rd_data,
    input            full,
    output           rd_en,
    // uart interface
    output reg       uart_tx_en,
    output reg [7:0] uart_tx_data,
    input            uart_tx_busy,
    // busy signal
    output reg       rd_busy
);
  // parameter define
  parameter FIFO_DEPTH = 16'd511;

  parameter IDLE = 4'b0001;
  parameter FETCH = 4'b0010;
  parameter SEND_ENABLE = 4'b0100;
  parameter SENDING = 4'b1000;

  // reg define
  reg [3:0] state;
  reg [3:0] next_state;

  reg full_delay0;
  reg full_delay1;
  reg wr_rst_busy_delay0; // for state machine to swtich state more precisely (do not switch state when fifo is resetting)
  reg wr_rst_busy_delay1;
  reg rd_en_tmp;
  reg rd_en_tmp_delay0;
  reg [15:0] send_cnt;
  reg [7:0] checksum;
  reg fetched;
  reg stat_refreshed;

  // wire define
  wire rd_en_pulse;

  // main code

  assign rd_en = rd_en_tmp & (~rd_en_tmp_delay0);

  // full and wr_rst_busy is from write clock domain
  // rd_en_tmp_delay and rd_en_delay
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      // full
      full_delay0 <= 1'b0;
      full_delay1 <= 1'b0;
      // wr_rst_busy
      wr_rst_busy_delay0 <= 1'b0;
      wr_rst_busy_delay1 <= 1'b0;
      // rd_en_tmp
      rd_en_tmp_delay0 <= 1'b0;
    end else begin
      // full
      full_delay0 <= full;
      full_delay1 <= full_delay0;
      // wr_rst_busy
      wr_rst_busy_delay0 <= wr_rst_busy;
      wr_rst_busy_delay1 <= wr_rst_busy_delay0;
      // rd_en_tmp
      rd_en_tmp_delay0 <= rd_en_tmp;
    end
  end

  // state machine

  // state transition
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= IDLE;
    end else begin
      state <= next_state;
    end
  end

  // state transition logic
  always @(*) begin
    case (state)
      IDLE: begin
        if ((full_delay1 == 1'b1) && (wr_rst_busy_delay1 == 1'b0)) begin  // fifo is full and not reset busy, start reading data
          next_state = FETCH;
        end else begin
          next_state = IDLE;
        end
      end
      FETCH: begin  // fetch data
        if (send_cnt == (FIFO_DEPTH + 16'd5)) begin
          next_state = IDLE;
        end else if (fetched) begin
          next_state = SEND_ENABLE;
        end else begin
          next_state = FETCH;
        end
      end
      SEND_ENABLE: begin  // send data to uart
        if (uart_tx_busy) begin
          next_state = SENDING;
        end else begin
          next_state = SEND_ENABLE;
        end
      end
      SENDING: begin  // wait for uart to finish sending data
        if (!uart_tx_busy) begin
          next_state = FETCH;
        end else begin
          next_state = SENDING;
        end
      end
      default: begin
        next_state = IDLE;
      end
    endcase
  end

  // state machine output logic
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_en_tmp  <= 1'b0;
      uart_tx_en <= 1'b0;
      rd_busy    <= 1'b0;
      send_cnt   <= 16'd0;
      uart_tx_data <= 8'd0;
      checksum  <= 8'd0;
      fetched    <= 1'b0;
    end else begin
      case (state)
        IDLE: begin
          rd_en_tmp  <= 1'b0;
          uart_tx_en <= 1'b0;
          rd_busy    <= 1'b0;
          send_cnt   <= 16'd0;
          uart_tx_data <= 8'd0;
          checksum  <= 8'd0;
          fetched    <= 1'b0;
          stat_refreshed <= 1'b0;
        end
        FETCH: begin
          if ((send_cnt > 16'd3) && (send_cnt < (FIFO_DEPTH + 16'd4))) begin
            rd_en_tmp <= 1'b1;
          end else begin
            rd_en_tmp <= 1'b0;
          end
          uart_tx_en <= 1'b0;
          rd_busy    <= 1'b1;
          fetched    <= 1'b1;
          stat_refreshed <= 1'b0;
        end
        SEND_ENABLE: begin
          if (send_cnt == 16'd0) begin
            uart_tx_data <= 8'h55;  // packet header
          end else if (send_cnt == 16'd1) begin
            uart_tx_data <= 8'h01;  // packet type
          end else if (send_cnt == 16'd2) begin
            uart_tx_data <= 8'd1;  // packet data length (upper byte of 511)
          end else if (send_cnt == 16'd3) begin
            uart_tx_data <= 8'd255;  // packet data length (lower byte of 511)
          end else if ((send_cnt > 16'd3) && (send_cnt < (FIFO_DEPTH + 16'd4))) begin
            uart_tx_data <= rd_data;
          end else if (send_cnt == (FIFO_DEPTH + 16'd4)) begin
            uart_tx_data <= checksum;
          end else begin
            uart_tx_data <= 8'h00;
          end
          rd_en_tmp  <= 1'b0;
          uart_tx_en <= 1'b1;
          rd_busy    <= 1'b1;
          fetched    <= 1'b0;
          stat_refreshed <= 1'b0;
        end
        SENDING: begin
          if (!stat_refreshed) begin
            checksum <= checksum + uart_tx_data;
            send_cnt <= send_cnt + 1'b1;
            stat_refreshed <= 1'b1;
          end
          rd_en_tmp  <= 1'b0;
          uart_tx_en <= 1'b0;
          rd_busy    <= 1'b1;
          fetched    <= 1'b0;
        end
        default: begin
          rd_en_tmp  <= rd_en_tmp;
          uart_tx_en <= uart_tx_en;
          rd_busy    <= rd_busy;
          send_cnt   <= send_cnt;
          uart_tx_data <= uart_tx_data;
          checksum  <= checksum;
          fetched    <= fetched;
        end
      endcase
    end
  end

endmodule
