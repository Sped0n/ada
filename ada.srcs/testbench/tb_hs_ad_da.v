`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/24/2023 08:32:12 PM
// Design Name: 
// Module Name: tb_hs_ad_da
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


module tb_hs_ad_da ();
  // parameter define
  parameter CLK_PERIOD = 20;  // clock period in ns

  // reg define
  reg sys_clk;  // system clock
  reg sys_rst_n;  // system reset active low

  // signal init
  initial begin
    sys_clk   = 1'b0;
    sys_rst_n = 1'b0;
    #200 sys_rst_n = 1'b1;
  end

  // clock generator
  always #(CLK_PERIOD / 2) sys_clk = ~sys_clk;
  hs_ad_da hs_ad_da_0 (
      .sys_clk  (sys_clk),    // system clock
      .sys_rst_n(sys_rst_n),  // system reset active low
      // dac interface
      .da_clk   (),           // dac clock
      .da_data  (),           // data to dac
      // adc interface
      .ad_data  (),           // adc input data
      .ad_otr   (),           // 0: adc data is valid, 1: adc data is invalid (over range)
      .ad_clk   ()            // adc clock
  );
endmodule
