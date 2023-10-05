`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/04/2023 03:02:39 PM
// Design Name: 
// Module Name: tb_acquisition_ctl_uart
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


module tb_acquisition_ctl_uart ();
  // parameter define
  parameter CLK_PERIOD = 20;

  // reg define
  reg        sys_clk;
  reg        sys_rst_n;

  reg        uart_rx_done;
  reg  [7:0] uart_rx_data;

  // wire define
  wire       clk_50m;  // 50MHz clock
  wire       clk_25m;  // 25MHz clock
  wire       locked;  // pll lock signal
  wire       rst_n;  // reset signal, active low

  // initial block
  initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    uart_rx_done = 1'b0;
    uart_rx_data = 8'h00;
    #20 sys_rst_n = 1'b1;
    // trigger threshold control
    #150000 uart_rx_data <= 8'h55;  // header
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'h02;  // packet type
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd1;  // data length
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd200;  // data
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd32;  // checksum
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    // trigger slope control
    #150000 uart_rx_data <= 8'h55;  // header
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'h03;  // packet type
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd1;  // data length
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd0;  // data
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd89;  // checksum
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    // trigger position control
    #150000 uart_rx_data <= 8'h55;  // header
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'h04;  // packet type
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd1;  // data length
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd2;  // data
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd92;  // checksum
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    // trigger channel control
    #150000 uart_rx_data <= 8'h55;  // header
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'h05;  // packet type
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd1;  // data length
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd1;  // data
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd92;  // checksum
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    // acquisition pulse select control
    #150000 uart_rx_data <= 8'h55;  // header
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'h06;  // packet type
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd1;  // data length
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd4;  // data
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd96;  // checksum
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    // acquisition enable control
    #150000 uart_rx_data <= 8'h55;  // header
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'h07;  // packet type
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd1;  // data length
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd1;  // data
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
    #150000 uart_rx_data <= 8'd94;  // checksum
    uart_rx_done <= 1'b1;
    #20 uart_rx_done <= 1'b0;
  end

  // main code

  assign rst_n = sys_rst_n & locked; // generate a new reset signal from system reset and pll lock signal

  //clock gen
  always #(CLK_PERIOD / 2) sys_clk = ~sys_clk;  // 50MHz

  // pll
  clk_wiz_0 clk_wiz_tb_au (
      .clk_50m     (clk_50m),  // 50MHz clock
      .clk_25m     (clk_25m),  // 25MHz clock
      .clk_25m_120d(),         // 25MHz clock 120 degree phase shift
      .locked      (locked),   // pll lock signal
      .clk_in1     (sys_clk)   // input clock
  );

  // acquisition_ctl_uart
  acquisition_ctl_uart acquisition_ctl_uart_tb0 (
      .clk_50m(clk_50m),
      .sys_rst_n(rst_n),
      .uart_rx_done(uart_rx_done),
      .uart_rx_data(uart_rx_data),
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
