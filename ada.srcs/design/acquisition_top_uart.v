`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/04/2023 04:08:49 PM
// Design Name: 
// Module Name: acquisition_top_uart
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


module acquisition_top_uart (
    input        clk_50m,
    input        clk_25m,
    input        sys_rst_n,
    // adc interface
    input  [7:0] ch1_ad_data,
    input  [7:0] ch2_ad_data,
    // uart tx
    output       uart_tx_en,
    output [7:0] uart_tx_data,
    input        uart_tx_busy,
    // uart rx
    input        uart_rx_done,
    input  [7:0] uart_rx_data,
    // acquisition busy
    output       acquisition_busy,
    // debug
    output [3:0] acquisition_state,
    output [4:0] ch1_cache_wr_state,
    output [4:0] ch2_cache_wr_state
);
  // wire define
  wire [7:0] trigger_threhold;
  wire       trigger_is_rising_slope;
  wire [2:0] trigger_position;
  wire       trigger_channel;
  wire [3:0] acquisition_pulse_sel;
  wire       acquisition_en;

  // main code

  // acquisition_uart
  acquisition_uart acquisition_uart_0 (
      .clk_50m                (clk_50m),
      .clk_25m                (clk_25m),
      .sys_rst_n              (sys_rst_n),
      .acquisition_en         (acquisition_en),
      .ch1_ad_data            (ch1_ad_data),
      .ch2_ad_data            (ch2_ad_data),
      .trigger_threshold      (trigger_threhold),
      .trigger_is_rising_slope(trigger_is_rising_slope),
      .trigger_position       (trigger_position),
      .trigger_channel        (trigger_channel),
      .acquisition_pulse_sel  (acquisition_pulse_sel),
      .uart_tx_en             (uart_tx_en),
      .uart_tx_data           (uart_tx_data),
      .uart_tx_busy           (uart_tx_busy),
      .acquisition_busy       (acquisition_busy),
      .acquisition_state      (acquisition_state),
      .ch1_cache_wr_state     (ch1_cache_wr_state),
      .ch2_cache_wr_state     (ch2_cache_wr_state)
  );

  // acquisition_ctl_uart
  acquisition_ctl_uart acquisition_ctl_uart_0 (
      .clk_50m                (clk_50m),
      .sys_rst_n              (sys_rst_n),
      .uart_rx_done           (uart_rx_done),
      .uart_rx_data           (uart_rx_data),
      .trigger_threshold      (trigger_threhold),
      .trigger_is_rising_slope(trigger_is_rising_slope),
      .trigger_position       (trigger_position),
      .trigger_channel        (trigger_channel),
      .acquisition_pulse_sel  (acquisition_pulse_sel),
      .acquisition_en         (acquisition_en),
      .parse_completed        (),
      .parse_result           (),
      .parse_cmd              ()
  );

endmodule
