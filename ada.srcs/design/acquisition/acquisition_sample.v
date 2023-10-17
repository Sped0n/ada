`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/01/2023 04:07:01 AM
// Design Name: 
// Module Name: acquisition_sample
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


module acquisition_sample (
    input         clk_25m,
    input         sys_rst_n,          // active low
    // enable signal
    input         acquisition_en,
    // ad data
    input  [ 7:0] ad_data,
    // data to fifo
    output [ 7:0] sample_data,
    // triggered and acquisition pulse
    input         triggered,
    input  [15:0] trigger_position,
    input         acquisition_pulse,
    // push
    input         push_en,
    output        push_ready,
    output        push_started,
    output        pushing_last_data,
    output        push_completed,
    // cache read enable signal for multich glue
    output        cache_rd_en,
    // debug
    output [ 4:0] cache_wr_state
);

  // wire define
  wire        rd_en;
  wire [14:0] rd_addr;
  wire [14:0] wr_addr;
  wire        wr_we;
  wire        wr_en;
  wire [ 7:0] wr_data;

  // main code

  assign cache_rd_en = rd_en;

  // dual port ram read
  acquisition_sync_cache_rd acquisition_sync_cache_rd_0 (
      .rd_clk           (clk_25m),
      .rst_n            (sys_rst_n),
      .push_en          (push_en),
      .start_addr       (wr_addr),
      .rd_en            (rd_en),
      .rd_addr          (rd_addr),
      .push_started     (push_started),
      .pushing_last_data(pushing_last_data),
      .push_completed   (push_completed)
  );

  // dual port ram write
  acquisition_sync_cache_wr acquisition_sync_cache_wr_0 (
      .wr_clk           (clk_25m),
      .rst_n            (sys_rst_n),
      .ad_data          (ad_data),
      .en               (acquisition_en),
      .trigger_position (trigger_position),
      .triggered        (triggered),
      .push_ready       (push_ready),
      .push_started     (push_started),
      .wr_we            (wr_we),
      .wr_en            (wr_en),
      .wr_addr          (wr_addr),
      .wr_data          (wr_data),
      .acquisition_pulse(acquisition_pulse),
      .cache_wr_state   (cache_wr_state)
  );

  // dual port ram
  acquisition_sync_cache acquisition_sync_cache_0 (
      .clka (clk_25m),
      .ena  (wr_en),
      .wea  (wr_we),
      .addra(wr_addr),
      .dina (wr_data),
      .clkb (clk_25m),
      .enb  (rd_en),
      .addrb(rd_addr),
      .doutb(sample_data)
  );

endmodule
