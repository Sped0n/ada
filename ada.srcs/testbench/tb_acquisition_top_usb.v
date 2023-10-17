`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/04/2023 04:33:41 PM
// Design Name: 
// Module Name: tb_acquisition_top_uart
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


module tb_acquisition_top_usb ();
  // parameter define
  parameter CLK_PERIOD = 20;
  parameter USB_CLK_PERIOD = 16;

  parameter SYS_CLK_FREQ = 50_000_000;  // system clock frequency
  parameter BAUD_RATE = 115_200;  // baud rate

  // reg define
  reg        sys_clk;
  reg        usb_clk;
  reg        sys_rst_n;

  reg  [7:0] ad_data;

  reg        tpad;


  // wire define
  wire       clk_50m;  // 50MHz clock
  wire       clk_25m;  // 25MHz clock
  wire       locked;  // pll lock signal
  wire       rst_n;  // reset signal, active low

  wire [7:0] mock_ad_data;

  // initial block
  initial begin
    sys_clk   = 1'b0;
    usb_clk   = 1'b0;
    sys_rst_n = 1'b0;
    tpad      = 1'b0;
    #16 sys_rst_n = 1'b1;
    #3200 tpad = 1'b1;
  end


  // main code

  assign rst_n = sys_rst_n & locked; // generate a new reset signal from system reset and pll lock signal

  assign mock_ad_data = ad_data - 8'd128;

  // clock gen
  always #(CLK_PERIOD / 2) sys_clk = ~sys_clk;  // 50MHz
  always #(USB_CLK_PERIOD / 2) usb_clk = ~usb_clk;  // 60MHz

  // ad simulation
  always @(posedge clk_25m or negedge rst_n) begin
    if (!rst_n) begin
      ad_data <= 8'd0;
    end else begin
      ad_data <= ad_data + 1'b1;
    end
  end

  // pll
  clk_wiz_0 clk_wiz_tb_au (
      .clk_50m (clk_50m),  // 50MHz clock
      .clk_25m (clk_25m),  // 25MHz clock
      .clk_200m(),         // 200MHz clock
      .locked  (locked),   // pll lock signal
      .clk_in1 (sys_clk)   // input clock
  );

  // acquisition_top_usb
  acquisition_top_usb acquisition_top_usb_tb0 (
      .clk_50m    (clk_50m),
      .clk_25m    (clk_25m),
      .usb_clk    (usb_clk),
      .sys_rst_n  (sys_rst_n),
      .ch1_ad_data(ad_data),
      .ch2_ad_data(mock_ad_data),
      .usb_tx_en  (),
      .usb_tx_data(),
      .usb_busy   (1'b0),
      .usb_rx_en  (),
      .usb_rx_data(),
      .tpad       (tpad)
  );

endmodule
