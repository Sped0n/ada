`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/28/2023 03:06:35 AM
// Design Name: 
// Module Name: uart_loopback
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


module uart_loopback (
    input sys_clk,
    input sys_rst_n,

    // uart port
    input  uart_rxd,  // uart receive port
    output uart_txd   // uart transmit port
);
  // parameter define
  parameter SYS_CLK_FREQ = 50_000_000;  // system clock frequency
  parameter BAUD_RATE = 115_200;  // baud rate

  // wire define
  wire uart_rx_done;  // uart receive done flag
  wire [7:0] uart_rx_data;  // uart receive data

  // main code
  uart_rx #(
      .SYS_CLK_FREQ(SYS_CLK_FREQ),
      .BAUD_RATE(BAUD_RATE)
  ) uart_rx_0 (
      .sys_clk     (sys_clk),
      .sys_rst_n   (sys_rst_n),
      .uart_rxd    (uart_rxd),
      .uart_rx_done(uart_rx_done),
      .uart_rx_data(uart_rx_data)
  );

  uart_tx #(
      .SYS_CLK_FREQ(SYS_CLK_FREQ),
      .BAUD_RATE(BAUD_RATE)
  ) uart_tx_0 (
      .sys_clk     (sys_clk),
      .sys_rst_n   (sys_rst_n),
      .uart_tx_en  (uart_rx_done),
      .uart_tx_data(uart_rx_data),
      .uart_txd    (uart_txd),
      .uart_tx_busy()
  );
  
endmodule
