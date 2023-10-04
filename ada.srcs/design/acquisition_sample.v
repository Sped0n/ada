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
    input        clk_50m,
    input        clk_25m,
    input        sys_rst_n,                // active low
    // enable signal
    input        acquisition_en,
    // ad data
    input  [7:0] ad_data,
    // data to fifo
    output       sample_completed,
    output [7:0] sample_data,
    // trigger config
    input  [7:0] trigger_threshold,
    input        trigger_is_rising_slope,
    input  [2:0] trigger_position,
    // acquisition pulse config
    input  [3:0] acquisition_pulse_sel
);

  // wire define
  // handshake
  wire       cache_wr_ready;
  // dual port ram
  wire       rd_en;
  wire [7:0] rd_addr;
  wire [7:0] wr_addr;
  wire       wr_we;
  wire       wr_en;
  wire [7:0] wr_data;
  // others
  wire       acquisition_pulse;
  wire       triggered;

  // main code

  // dual port ram read
  acquisition_sync_cache_rd acquisition_sync_cache_rd_0 (
      .rd_clk          (clk_25m),
      .rst_n           (sys_rst_n),
      .cache_wr_ready  (cache_wr_ready),
      .cache_rd_busy   (),
      .start_addr      (wr_addr),
      .rd_en           (rd_en),
      .rd_addr         (rd_addr),
      .sample_completed(sample_completed)
  );

  // dual port ram write
  acquisition_sync_cache_wr acquisition_sync_cache_wr_0 (
      .wr_clk           (clk_25m),
      .rst_n            (sys_rst_n),
      .ad_data          (ad_data),
      .en               (acquisition_en),
      .trigger_position (trigger_position),
      .triggered        (triggered),
      .cache_wr_ready   (cache_wr_ready),
      .wr_we            (wr_we),
      .wr_en            (wr_en),
      .wr_addr          (wr_addr),
      .wr_data          (wr_data),
      .acquisition_pulse(acquisition_pulse)
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

  // trigger
  trigger trigger_0 (
      .acquisition_clk  (clk_25m),
      .rst_n            (sys_rst_n),
      .acquisition_pulse(acquisition_pulse),
      .is_rising_slope  (trigger_is_rising_slope),
      .threshold        (trigger_threshold),
      .ad_data          (ad_data),
      .trigger          (triggered)
  );

  // acquisition pulse
  acquisition_pulse_gen acquisition_pulse_gen_0 (
      .clk_50m  (clk_50m),
      .clk_25m  (clk_25m),
      .sys_rst_n(sys_rst_n),
      .sel      (acquisition_pulse_sel),
      .pulse    (acquisition_pulse)
  );

endmodule
