`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2023 12:38:50 AM
// Design Name: 
// Module Name: tb_acquisition_pulse_gen
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


module tb_acquisition_pulse_gen ();
  // parameter define
  parameter CLK_PERIOD = 20;

  // reg define
  reg        sys_clk;
  reg        sys_rst_n;
  reg  [3:0] sel;

  // wire define
  wire       clk_50m;  // 50MHz clock
  wire       clk_25m;  // 25MHz clock
  wire       locked;  // pll lock signal
  wire       rst_n;  // reset signal, active low

  // initial block
  initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    sel = 4'd0;
    #200 sys_rst_n = 1'b1;
    #100000 sel = 4'd1;
    #100000 sel = 4'd0;
    #100000 sel = 4'd2;
    #100000 sel = 4'd3;
    #100000 sel = 4'd4;
    #100000 sel = 4'd5;
    #100000 sel = 4'd6;
    #100000 sel = 4'd7;
    #100000 sel = 4'd8;
    #100000 sel = 4'd9;
    #1000000 sel = 4'd10;
    #1000000 sel = 4'd11;
    #1000000 sel = 4'd12;
    #10000000 sel = 4'd13;
    #10000000 sel = 4'd14;
    #10000000 sel = 4'd0;
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

  // acquisition_pulse_gen
  acquisition_pulse_gen acquisition_pulse_gen_tb0 (
      .clk_50m(clk_50m),  // 50MHz clock
      .clk_25m(clk_25m),  // 25MHz clock
      .sys_rst_n(rst_n),  // reset signal, active low
      .sel(sel),
      .pulse()
  );

endmodule
