`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/01/2023 04:03:14 AM
// Design Name: 
// Module Name: tb_acquisition_sample
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


module tb_acquisition_sample ();
  // parameter define
  parameter CLK_PERIOD = 20;

  // reg define
  reg        sys_clk;
  reg        sys_rst_n;
  reg  [7:0] ad_data;
  reg        acquisition_en;

  // wire define
  wire       clk_50m;  // 50MHz clock
  wire       clk_25m;  // 25MHz clock
  wire       locked;  // pll lock signal
  wire       rst_n;  // reset signal, active low

  // initial block
  initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    acquisition_en = 1'b0;
    #200 sys_rst_n = 1'b1;
    #10000 acquisition_en = 1'b1;
    #100 acquisition_en = 1'b0;
  end

  // main code

  assign rst_n = sys_rst_n & locked; // generate a new reset signal from system reset and pll lock signal

  // clock gen
  always #(CLK_PERIOD / 2) sys_clk = ~sys_clk;  // 50MHz

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
      .clk_50m     (clk_50m),  // 50MHz clock
      .clk_25m     (clk_25m),  // 25MHz clock
      .clk_25m_120d(),         // 25MHz clock 120 degree phase shift
      .locked      (locked),   // pll lock signal
      .clk_in1     (sys_clk)   // input clock
  );

  acquisition_sample acquisition_sample_0 (
      .clk_50m                (clk_50m),
      .clk_25m                (clk_25m),
      .sys_rst_n              (rst_n),
      .acquisition_en         (acquisition_en),
      .ad_data                (ad_data),
      .fifo_en_flag           (),
      .acquisition_data       (),
      .trigger_threshold      (8'd128),
      .trigger_is_rising_slope(1'b1),
      .trigger_position       (3'd0),
      .acquisition_pulse_sel  (4'd4)
  );
endmodule
