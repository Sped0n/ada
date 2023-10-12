`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/24/2023 08:09:07 PM
// Design Name: 
// Module Name: ada_top
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


module ada_top (
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
    output [3:0] led,        // led
    // uart
    input        uart_rxd,   // uart receive data
    output       uart_txd    // uart transmit data
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

  wire        uart_tx_en;
  wire [ 7:0] uart_tx_data;
  wire        uart_tx_busy;
  wire        uart_rx_done;
  wire [ 7:0] uart_rx_data;

  wire [ 7:0] mock_ad_data;

  wire [ 3:0] acquisition_state;

  // main code

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

  // acquisition_top_uart
  acquisition_top_uart acquisition_top_uart_0 (
      .clk_50m           (clk_50m),
      .clk_25m           (clk_25m),
      .sys_rst_n         (rst_n),
      .ch1_ad_data       (ad_data),
      .ch2_ad_data       (mock_ad_data),
      .uart_tx_en        (uart_tx_en),
      .uart_tx_data      (uart_tx_data),
      .uart_tx_busy      (uart_tx_busy),
      .uart_rx_done      (uart_rx_done),
      .uart_rx_data      (uart_rx_data),
      .acquisition_busy  (),
      .acquisition_state (acquisition_state),
      .ch1_cache_wr_state(),
      .ch2_cache_wr_state()
  );

  // uart rx
  uart_rx #(
      .SYS_CLK_FREQ(SYS_CLK_FREQ),
      .BAUD_RATE(BAUD_RATE)
  ) uart_rx_0 (
      .sys_clk     (clk_50m),
      .sys_rst_n   (rst_n),
      .uart_rxd    (uart_rxd),
      .uart_rx_done(uart_rx_done),
      .uart_rx_data(uart_rx_data)
  );

  // uart tx
  uart_tx #(
      .SYS_CLK_FREQ(SYS_CLK_FREQ),
      .BAUD_RATE(BAUD_RATE)
  ) uart_tx_0 (
      .sys_clk     (clk_50m),
      .sys_rst_n   (rst_n),
      .uart_tx_en  (uart_tx_en),
      .uart_tx_data(uart_tx_data),
      .uart_txd    (uart_txd),
      .uart_tx_busy(uart_tx_busy)
  );

endmodule
