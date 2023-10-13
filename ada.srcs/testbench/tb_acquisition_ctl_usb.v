`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 11:06:48 PM
// Design Name: 
// Module Name: tb_acquisition_ctl_usb
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


module tb_acquisition_ctl_usb ();
  // parameter define
  parameter CLK_PERIOD = 20;
  parameter USB_CLK_PERIOD = 16;

  parameter SYS_CLK_FREQ = 50_000_000;  // system clock frequency
  parameter BAUD_RATE = 115_200;  // baud rate

  // reg define
  reg        sys_clk;
  reg        usb_clk;  // 60MHz clock
  reg        sys_rst_n;

  reg        usb_rx_en;
  reg  [7:0] usb_rx_data;

  // wire define
  wire       clk_50m;  // 50MHz clock
  wire       locked;  // pll lock signal
  wire       rst_n;  // reset signal, active low

  // initial block
  initial begin
    sys_clk = 1'b0;
    usb_clk = 1'b0;
    sys_rst_n = 1'b0;
    usb_rx_en = 1'b0;
    usb_rx_data = 8'h00;
    #16 sys_rst_n = 1'b1;
    // trigger threshold control
    #3200 usb_rx_en = 1'b1;
    usb_rx_data = 8'h55;
    #16 usb_rx_data = 8'h02;
    #16 usb_rx_data = 8'h01;
    #16 usb_rx_data = 8'd200;
    #16 usb_rx_data = 8'd32;
    #16 usb_rx_en = 1'b0;
    // trigger slope control
    #320 usb_rx_en = 1'b1;
    usb_rx_data = 8'h55;
    #16 usb_rx_data = 8'h03;
    #16 usb_rx_data = 8'h01;
    #16 usb_rx_data = 8'd0;
    #16 usb_rx_data = 8'd89;
    #16 usb_rx_en = 1'b0;
    // trigger position control
    #320 usb_rx_en = 1'b1;
    usb_rx_data = 8'h55;
    #16 usb_rx_data = 8'h04;
    #16 usb_rx_data = 8'h02;
    #16 usb_rx_data = 8'd1;
    #16 usb_rx_data = 8'd255;
    #16 usb_rx_data = 8'd91;
    #16 usb_rx_en = 1'b0;
    // trigger channel control
    #320 usb_rx_en = 1'b1;
    usb_rx_data = 8'h55;
    #16 usb_rx_data = 8'h05;
    #16 usb_rx_data = 8'h01;
    #16 usb_rx_data = 8'd1;
    #16 usb_rx_data = 8'd92;
    #16 usb_rx_en = 1'b0;
    // acquisition pulse select control
    #320 usb_rx_en = 1'b1;
    usb_rx_data = 8'h55;
    #16 usb_rx_data = 8'h06;
    #16 usb_rx_data = 8'h01;
    #16 usb_rx_data = 8'd4;
    #16 usb_rx_data = 8'd96;
    #16 usb_rx_en = 1'b0;
    // acquisition enable control
    #320 usb_rx_en = 1'b1;
    usb_rx_data = 8'h55;
    #16 usb_rx_data = 8'h07;
    #16 usb_rx_data = 8'h01;
    #16 usb_rx_data = 8'd1;
    #16 usb_rx_data = 8'd94;
    #16 usb_rx_en = 1'b0;
    // packet corrupted
    #320 usb_rx_en = 1'b1;
    usb_rx_data = 8'h55;
    #16 usb_rx_data = 8'h08;
    #16 usb_rx_data = 8'h01;
    #16 usb_rx_data = 8'd1;
    #16 usb_rx_data = 8'd95;
    #16 usb_rx_en = 1'b0;
    $finish;
  end


  // main code

  assign rst_n = sys_rst_n & locked; // generate a new reset signal from system reset and pll lock signal

  // clock gen
  always #(CLK_PERIOD / 2) sys_clk = ~sys_clk;  // 50MHz
  always #(USB_CLK_PERIOD / 2) usb_clk = ~usb_clk;  // 60MHz

  // pll
  clk_wiz_0 clk_wiz_tb_acu (
      .clk_50m (clk_50m),  // 50MHz clock
      .clk_25m (),         // 25MHz clock
      .clk_200m(),         // 200MHz clock
      .locked  (locked),   // pll lock signal
      .clk_in1 (sys_clk)   // input clock
  );

  // acquisition_ctl_usb
  acquisition_ctl_usb acquisition_ctl_usb_tb0 (
      .usb_clk(usb_clk),
      .clk_50m(clk_50m),
      .sys_rst_n(rst_n),
      .usb_rx_en(usb_rx_en),
      .usb_rx_data(usb_rx_data),
      .trigger_threshold(),
      .trigger_is_rising_slope(),
      .trigger_position(),
      .trigger_channel(),
      .acquisition_pulse_sel(),
      .acquisition_en(),
      .parse_completed(),
      .parse_result(),
      .parse_cmd()
  );

endmodule
