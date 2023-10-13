`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/13/2023 03:12:22 AM
// Design Name: 
// Module Name: acquisition_top_usb
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


module acquisition_top_usb (
    input        clk_50m,
    input        clk_25m,
    input        usb_clk,
    input        sys_rst_n,
    // adc interface
    input  [7:0] ch1_ad_data,
    input  [7:0] ch2_ad_data,
    // usb
    output       usb_tx_en,
    output [7:0] usb_tx_data,
    input        usb_busy,
    input        usb_rx_en,
    input  [7:0] usb_rx_data,
    // tpad
    input        tpad,
    // acquisition busy
    output       acquisition_busy,
    // debug
    output [3:0] acquisition_state,
    output [4:0] ch1_cache_wr_state,
    output [4:0] ch2_cache_wr_state
);
  // wire define
  wire [ 7:0] trigger_threhold;
  wire        trigger_is_rising_slope;
  wire [15:0] trigger_position;
  wire        trigger_channel;
  wire [ 3:0] acquisition_pulse_sel;
  wire        acquisition_en;
  wire        packet_corrupted;

  wire        aq_en;

  // main code

  assign aq_en = acquisition_en | tpad;

  // acquisition_uart
  acquisition_usb acquisition_usb_0 (
      .clk_50m                (clk_50m),
      .clk_25m                (clk_25m),
      .usb_clk                (usb_clk),
      .sys_rst_n              (sys_rst_n),
      .acquisition_en         (aq_en),
      .ch1_ad_data            (ch1_ad_data),
      .ch2_ad_data            (ch2_ad_data),
      .trigger_threshold      (trigger_threhold),
      .trigger_is_rising_slope(trigger_is_rising_slope),
      .trigger_position       (trigger_position),
      .trigger_channel        (trigger_channel),
      .acquisition_pulse_sel  (acquisition_pulse_sel),
      .packet_corrupted       (packet_corrupted),
      .usb_tx_en              (usb_tx_en),
      .usb_tx_data            (usb_tx_data),
      .usb_busy               (usb_busy),
      .acquisition_busy       (acquisition_busy),
      .acquisition_state      (acquisition_state),
      .ch1_cache_wr_state     (ch1_cache_wr_state),
      .ch2_cache_wr_state     (ch2_cache_wr_state)
  );

  // acquisition_ctl_usb
  acquisition_ctl_usb acquisition_ctl_usb_0 (
      .usb_clk                (usb_clk),
      .clk_50m                (clk_50m),
      .sys_rst_n              (sys_rst_n),
      .usb_rx_en              (usb_rx_en),
      .usb_rx_data            (usb_rx_data),
      .trigger_threshold      (trigger_threhold),
      .trigger_is_rising_slope(trigger_is_rising_slope),
      .trigger_position       (trigger_position),
      .trigger_channel        (trigger_channel),
      .acquisition_pulse_sel  (acquisition_pulse_sel),
      .acquisition_en         (acquisition_en),
      .packet_corrupted       (packet_corrupted),
      .parse_completed        (),
      .parse_result           (),
      .parse_cmd              ()
  );

endmodule
