`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/28/2023 03:16:50 AM
// Design Name: 
// Module Name: tb_uart_loopback
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


module tb_uart_loopback ();

  // parameter define
  parameter CLK_PERIOD = 20;  // clock period is 20ns

  // reg define
  reg  sys_clk;
  reg  sys_rst_n;
  reg  uart_rxd;

  // wire define
  wire uart_txd;

  // main code

  // send data: 8'h55/8'b0101_0101
  initial begin
    sys_clk   <= 1'b0;
    sys_rst_n <= 1'b0;
    uart_rxd  <= 1'b1;
    #200 sys_rst_n <= 1'b1;
    #1000 uart_rxd <= 1'b0;  // start bit
    #8680 uart_rxd <= 1'b1;  // D0
    #8680 uart_rxd <= 1'b0;  // D1
    #8680 uart_rxd <= 1'b1;  // D2
    #8680 uart_rxd <= 1'b0;  // D3
    #8680 uart_rxd <= 1'b1;  // D4
    #8680 uart_rxd <= 1'b0;  // D5
    #8680 uart_rxd <= 1'b1;  // D6
    #8680 uart_rxd <= 1'b0;  // D7
    #8680 uart_rxd <= 1'b1;  // stop bit
    #8680 uart_rxd <= 1'b1;  // idle
  end

  // clock gen
  always #(CLK_PERIOD / 2) sys_clk = ~sys_clk;  // 50MHz

  // uart_loopback
  uart_loopback uart_loopback_tb0 (
      .sys_clk  (sys_clk),
      .sys_rst_n(sys_rst_n),
      .uart_rxd (uart_rxd),
      .uart_txd (uart_txd)
  );

endmodule
