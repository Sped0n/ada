`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 02:38:39 AM
// Design Name: spedon wen
// Module Name: uart_tx
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


module uart_tx (
    input sys_clk,   // system clock 50MHz
    input sys_rst_n, // system reset, low active

    input uart_tx_en,  // uart tx enable
    input [7:0] uart_tx_data,  // uart tx data
    output reg uart_txd,  // uart tx port
    output reg uart_tx_busy  // uart tx busy flag
);
  // paramteter define
  parameter SYS_CLK_FREQ = 50_000_000;  // system clock frequency
  parameter BAUD_RATE = 115_200;  // baud rate
  localparam BAUD_CNT_MAX = SYS_CLK_FREQ / BAUD_RATE;  // baud counter max value

  // reg define
  reg [ 7:0] tx_data_temp;  // uart tx data temp register
  reg [ 3:0] tx_cnt;  // uart tx data counter
  reg [15:0] baud_cnt;  // baud counter

  // main code

  // when uart_tx_en is high, save uart_tx_data to tx_data_temp and set uart_tx_busy to high
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      tx_data_temp <= 8'd0;
      uart_tx_busy <= 1'b0;
    end else if (uart_tx_en) begin  // uart_tx_en is high
      tx_data_temp <= uart_tx_data;
      uart_tx_busy <= 1'b1;
    end else if (tx_cnt == 4'd9 && baud_cnt == BAUD_CNT_MAX - BAUD_CNT_MAX / 16) begin // send complete
      tx_data_temp <= 8'd0;
      uart_tx_busy <= 1'b0;
    end else begin
      tx_data_temp <= tx_data_temp;
      uart_tx_busy <= uart_tx_busy;
    end
  end

  // baud counter
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      baud_cnt <= 16'd0;
    end else if (uart_tx_busy) begin
      if (baud_cnt < BAUD_CNT_MAX - 1'b1) begin
        baud_cnt <= baud_cnt + 1'b1;
      end else begin
        baud_cnt <= 16'd0;
      end
    end else begin
      baud_cnt <= 16'd0;
    end
  end

  // tx counter
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      tx_cnt <= 4'd0;
    end else if (uart_tx_busy) begin  // tx counter is active when uart_tx_busy is valid
      if (baud_cnt == BAUD_CNT_MAX - 1'b1) begin  // one baud period
        tx_cnt <= tx_cnt + 1'b1;
      end else begin
        tx_cnt <= tx_cnt;
      end
    end else begin
      tx_cnt <= 4'd0;  // receive complete, reset tx counter
    end
  end

  // assign value for uart_txd
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (~sys_rst_n) begin
      uart_txd <= 1'b1;
    end else if (uart_tx_busy) begin
      case (tx_cnt)
        4'd0: uart_txd <= 1'b0;  // start bit
        4'd1: uart_txd <= tx_data_temp[0];  // data bit 0
        4'd2: uart_txd <= tx_data_temp[1];  // data bit 1
        4'd3: uart_txd <= tx_data_temp[2];  // data bit 2
        4'd4: uart_txd <= tx_data_temp[3];  // data bit 3
        4'd5: uart_txd <= tx_data_temp[4];  // data bit 4
        4'd6: uart_txd <= tx_data_temp[5];  // data bit 5
        4'd7: uart_txd <= tx_data_temp[6];  // data bit 6
        4'd8: uart_txd <= tx_data_temp[7];  // data bit 7
        4'd9: uart_txd <= 1'b1;  // stop bit
        default: uart_txd <= 1'b1;
      endcase
    end else begin
      uart_txd <= 1'b1;  // idle state
    end
  end

endmodule
