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
  parameter DEBOUNCE_CNT_MAX = 20'd1000;  // debounce for 1000 * 20ns(1s/50MHz) = 20000ns / 20us

  // reg define
  reg sys_clk;  // system clock
  reg sys_rst_n;  // system reset active low
  reg [3:0] keys;  // keys

  // signal init
  initial begin
    keys = 4'b1111;
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    #200 sys_rst_n = 1'b1;
    // key signal change
    #32000 keys = 4'b1110;
    #2000 keys = 4'b1111;
    #5000 keys = 4'b1110;
    #4000 keys = 4'b1111;
    #2000 keys = 4'b1110;
    #30000 keys = 4'b1111;
    #5000 keys = 4'b1110;
    #4000 keys = 4'b1111;
    #30000 keys = 4'b1110;
  end

  // clock generator
  always #(CLK_PERIOD / 2) sys_clk = ~sys_clk;
  hs_ad_da #(
      .DEBOUNCE_CNT_MAX(DEBOUNCE_CNT_MAX)
  ) hs_ad_da_tb0 (
      .sys_clk  (sys_clk),    // system clock
      .sys_rst_n(sys_rst_n),  // system reset active low
      // dac interface
      .da_clk   (),           // dac clock
      .da_data  (),           // data to dac
      // adc interface
      .ad_data  (),           // adc input data
      .ad_otr   (),           // 0: adc data is valid, 1: adc data is invalid (over range)
      .ad_clk   (),           // adc clock
      // buzzer
      .buzzer   (),           // buzzer (beep when adc data is over range)
      // keys
      .keys     (keys),       // keys
      // 7-segment display
      .seg_sel  (),           // segment select
      .seg_disp ()            // segment display data
  );
endmodule
