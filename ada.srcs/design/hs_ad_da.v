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
    output       ad_clk      // adc clock
);
  // wire define
  wire [7:0] rd_addr;  // address of data read from rom
  wire [7:0] rd_data;  // data read from rom
  wire       clk_50m;  // 50MHz clock
  wire       clk_25m;  // 25MHz clock
  wire       clk_25m_120d;  // 25MHz clock 120 degree phase shift
  wire       locked;  // pll lock signal
  wire       rst_n;  // reset signal, active low

  // main code

  assign rst_n = sys_rst_n & locked; // generate a new reset signal from system reset and pll lock signal
  assign ad_clk = clk_25m;  // adc clock is 25MHz

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
      .clk    (clk_50m),  // clock
      .rst_n  (rst_n),    // reset active low
      .rd_data(rd_data),  // data read from rom
      .rd_addr(rd_addr),  // address of data read from rom
      .da_clk (da_clk),   // dac clock
      .da_data(da_data)   // dac data
  );

  // sine rom waveform
  sin_rom_256x8b sine_wave (
      .clka (sys_clk),  // input wire clka
      .addra(rd_addr),  // input wire [7 : 0] addra
      .douta(rd_data)   // output wire [7 : 0] douta
  );

endmodule
