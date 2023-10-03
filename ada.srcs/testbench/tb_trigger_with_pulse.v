`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/30/2023 10:05:29 PM
// Design Name: 
// Module Name: tb_trigger_with_pulse
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


module tb_trigger_with_pulse ();
  // parameter define
  parameter CLK_PERIOD = 20;

  // reg define
  reg        sys_clk;
  reg        sys_rst_n;
  reg  [3:0] sel;
  reg  [7:0] ad_data;
  reg        is_rising_slope;

  // wire define
  wire       clk_50m;  // 50MHz clock
  wire       clk_25m;  // 25MHz clock
  wire       locked;  // pll lock signal
  wire       rst_n;  // reset signal, active low
  wire       pulse;  // acquisition pulse

  // initial block
  initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    sel = 4'd0;
    is_rising_slope = 1'b1;
    #200 sys_rst_n = 1'b1;
    #100000 sel = 4'd1;
    #100000 sel = 4'd0;
    #100000 sel = 4'd5;
    is_rising_slope = 1'b0;
  end

  // main code

  assign rst_n = sys_rst_n & locked; // generate a new reset signal from system reset and pll lock signal

  // ad simulation
  always @(posedge clk_25m or negedge rst_n) begin
    if (!rst_n) begin
      ad_data <= 8'd0;
    end else begin
      ad_data <= ad_data + 1'b1;
    end
  end

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
      .pulse(pulse)
  );

  // trigger
  trigger trigger_tb0 (
      .acquisition_clk(clk_25m),
      .rst_n(rst_n),
      .acquisition_pulse(pulse),
      .is_rising_slope(is_rising_slope),
      .threshold(8'd128),
      .ad_data(ad_data),
      .trigger()
  );

endmodule
