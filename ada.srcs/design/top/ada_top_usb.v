`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/13/2023 02:53:33 AM
// Design Name: 
// Module Name: ada_top_usb
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


module ada_top_usb (
    input        sys_clk,     // system clock
    input        sys_rst_n,   // system reset active low
    // dac interface
    output       da_clk,      // dac clock
    output [7:0] da_data,     // data to dac
    // adc interface
    input  [7:0] ad_data,     // adc input data
    input        ad_otr,      // 0: adc data is valid, 1: adc data is invalid (over range)
    output       ad_clk,      // adc clock
    // buzzer
    output       buzzer,      // buzzer (beep when adc data is over range)
    // keys
    input  [3:0] keys,        // keys
    // tpad
    input        tpad,        // touch pad
    // 7-segment display
    output [5:0] seg_sel,     // segment select
    output [7:0] seg_disp,    // segment display data
    // led
    output [3:0] led,         // led
    // usb
    input        usb_clk,     // FT232H clock (60MHz)
    input        usb_rxf_n,   // FT232H FIFO readable flag
    input        usb_txe_n,   // FT232H FIFO writable flag
    output       usb_oe_n,    // FT232H FIFO data output enable
    output       usb_rd_n,    // FT232H read enable
    output       usb_wr_n,    // FT232H write enable
    output       usb_siwu_n,  // send immediate/wake up
    inout  [7:0] usb_data     // FT232H bidirectional data bus
);
  // parameter define
  parameter DEBOUNCE_CNT_MAX = 20'd100_0000;  // debounce for 100_0000 * 20ns(1s/50MHz) = 20ms
  parameter SYS_CLK_FREQ = 50_000_000;  // system clock frequency
  parameter BAUD_RATE = 1000_000;  // baud rate

  // wire define
  wire        clk_50m;  // 50MHz clock
  wire        clk_25m;  // 25MHz clock
  wire        locked;  // pll lock signal
  wire        rst_n;  // reset signal, active low

  wire [ 7:0] rd_addr;  // address of data read from rom
  wire [ 7:0] rd_data;  // data read from rom
  wire [ 7:0] freq_adj;  // frequency adjust
  wire [ 3:0] filtered_keys;  // filtered keys
  wire        seg_en;  // 7-segment display enable
  wire [35:0] seg_data;  // 7-segment display data
  wire [ 5:0] seg_dots;  // 7-segment display dots

  wire        usb_tx_en;  // usb transmit enable
  wire [ 7:0] usb_tx_data;  // usb transmit data
  wire        usb_busy;  // usb busy flag

  wire        usb_rx_en;
  wire [ 7:0] usb_rx_data;

  wire [ 7:0] mock_ad_data;

  wire [ 3:0] acquisition_state;

  wire [ 2:0] dbg_state;

  // main code

  assign usb_siwu_n = 1'b1;  // send immediate/wake up
  assign rst_n = sys_rst_n & locked; // generate a new reset signal from system reset and pll lock signal
  assign ad_clk = clk_25m;  // adc clock is 25MHz
  assign buzzer = ad_otr;  // buzzer is on when adc data is over range
  assign led = (~filtered_keys) | acquisition_state;  // led is on when any key is pressed
  assign mock_ad_data = da_data;  // mock adc data

  // pll
  clk_wiz_0 pll_ad_da (
      .clk_50m (clk_50m),  // 50MHz clock
      .clk_25m (clk_25m),  // 25MHz clock
      .clk_200m(),
      .locked  (locked),   // pll lock signal
      .clk_in1 (sys_clk)   // input clock
  );

  // da_ctl
  da_ctl da_ctl_0 (
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
      .sys_clk  (clk_50m),
      .sys_rst_n(rst_n),
      .raw_keys (keys),
      .keys     (filtered_keys)
  );

  // touch
  touch touch_0 (
      .clk(clk_50m),
      .rst_n(rst_n),
      .tpad(tpad),
      .filtered_tpad(filtered_tpad)
  );

  // 7-segment display
  seg seg_0 (
      .sys_clk  (clk_50m),
      .sys_rst_n(rst_n),
      .data     (seg_data),
      .dots     (seg_dots),
      .en       (seg_en),
      .seg_sel  (seg_sel),
      .seg_disp (seg_disp)
  );

  // acquisition_top_usb
  acquisition_top_usb acquisition_top_usb_0 (
      .clk_50m           (clk_50m),
      .clk_25m           (clk_25m),
      .usb_clk           (usb_clk),
      .sys_rst_n         (rst_n),
      .ch1_ad_data       (ad_data),
      .ch2_ad_data       (mock_ad_data),
      .usb_tx_en         (usb_tx_en),
      .usb_tx_data       (usb_tx_data),
      .usb_busy          (usb_busy),
      .usb_rx_en         (usb_rx_en),
      .usb_rx_data       (usb_rx_data),
      .tpad              (tpad),
      .acquisition_busy  (),
      .acquisition_state (acquisition_state),
      .ch1_cache_wr_state(),
      .ch2_cache_wr_state()
  );

  // usb_rw
  usb_rw usb_rw0 (
      .usb_clk  (usb_clk),
      .rst_n    (rst_n),
      .usb_rxf_n(usb_rxf_n),
      .usb_txe_n(usb_txe_n),
      .usb_oe_n (usb_oe_n),
      .usb_rd_n (usb_rd_n),
      .usb_wr_n (usb_wr_n),
      .usb_data (usb_data),
      .tx_en    (usb_tx_en),
      .tx_data  (usb_tx_data),
      .rx_en    (usb_rx_en),
      .rx_data  (usb_rx_data),
      .busy     (usb_busy)
  );

endmodule
