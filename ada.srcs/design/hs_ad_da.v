`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/24/2023 08:09:07 PM
// Design Name: 
// Module Name: hs_ad_da
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


module hs_ad_da (
    input        sys_clk,    // system clock
    input        sys_rst_n,  // system reset active low
    // dac interface
    output       da_clk,     // dac clock
    output [7:0] da_data,    // data to dac
    // adc interface
    input  [7:0] ad_data,    // adc input data
    input        ad_otr,     // 0: adc data is valid, 1: adc data is invalid (over range)
    output       ad_clk,     // adc clock
    // buzzer
    output       buzzer,     // buzzer (beep when adc data is over range)
    // keys
    input  [3:0] keys,       // keys
    // 7-segment display
    output [5:0] seg_sel,    // segment select
    output [7:0] seg_disp,   // segment display data
    // led
    output [3:0] led         // led
);
  // parameter define
  parameter DEBOUNCE_CNT_MAX = 20'd100_0000;  // debounce for 100_0000 * 20ns(1s/50MHz) = 20ms

  // wire define
  wire [ 7:0] rd_addr;  // address of data read from rom
  wire [ 7:0] rd_data;  // data read from rom
  wire        clk_50m;  // 50MHz clock
  wire        clk_25m;  // 25MHz clock
  wire        clk_25m_120d;  // 25MHz clock 120 degree phase shift
  wire        locked;  // pll lock signal
  wire        rst_n;  // reset signal, active low
  wire [ 7:0] freq_adj;  // frequency adjust
  wire [ 3:0] filtered_keys;  // filtered keys
  wire        seg_en;  // 7-segment display enable
  wire [35:0] seg_data;  // 7-segment display data
  wire [ 5:0] seg_dots;  // 7-segment display dots

  // main code

  assign rst_n = sys_rst_n & locked; // generate a new reset signal from system reset and pll lock signal
  assign ad_clk = clk_25m;  // adc clock is 25MHz
  assign buzzer = ad_otr;  // buzzer is on when adc data is over range
  assign led = filtered_keys;  // led is on when any key is pressed

  // pll
  clk_wiz_0 pll_ad_da (
      .clk_50m     (clk_50m),       // 50MHz clock
      .clk_25m     (clk_25m),       // 25MHz clock
      .clk_25m_120d(clk_25m_120d),  // 25MHz clock 120 degree phase shift
      .locked      (locked),        // pll lock signal
      .clk_in1     (sys_clk)        // input clock
  );

  // da_wave_send
  da_wave_send da_wave_send_0 (
      .clk     (clk_50m),   // clock
      .rst_n   (rst_n),     // reset active low
      .freq_adj(freq_adj),  // frequency adjust
      .rd_data (rd_data),   // data read from rom
      .rd_addr (rd_addr),   // address of data read from rom
      .da_clk  (da_clk),    // dac clock
      .da_data (da_data)    // dac data
  );

  // waveform_ctl
  waveform_ctl waveform_ctl_0 (
      .sys_clk      (clk_50m),        // system clock
      .sys_rst_n    (rst_n),          // system reset active low
      .filtered_keys(filtered_keys),  // filtered keys
      .addr         (rd_addr),        // address of data read from rom
      .data         (rd_data),        // data read from rom
      .freq_adj     (freq_adj),       // frequency adjust
      .seg_en       (seg_en),         // 7-segment display enable
      .seg_data     (seg_data),       // 7-segment display data
      .seg_dots     (seg_dots)        // 7-segment display dots
  );

  // key
  key #(
      .DEBOUNCE_CNT_MAX(DEBOUNCE_CNT_MAX)
  ) key_0 (
      .sys_clk(sys_clk),
      .sys_rst_n(rst_n),
      .raw_keys(keys),
      .keys(filtered_keys)
  );

  // 7-segment display
  seg seg_0 (
      .sys_clk  (sys_clk),
      .sys_rst_n(rst_n),
      .data     (seg_data),
      .dots     (seg_dots),
      .en       (seg_en),
      .seg_sel  (seg_sel),
      .seg_disp (seg_disp)
  );

  // intergrated logic analyzer
  ila_0 ila_0 (
      .clk   (clk_25m_120d),  // input wire clk
      .probe0(ad_data)        // input wire [7:0] probe0
  );

endmodule
