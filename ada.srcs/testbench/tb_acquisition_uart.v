`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/02/2023 01:23:01 AM
// Design Name:
// Module Name: tb_acquisition_uart
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


module tb_acquisition_uart ();
  // parameter define
  parameter CLK_PERIOD = 20;

  parameter SYS_CLK_FREQ = 50_000_000;  // system clock frequency
  parameter BAUD_RATE = 115_200;  // baud rate

  // reg define
  reg        sys_clk;
  reg        sys_rst_n;
  reg  [7:0] ad_data;
  reg        acquisition_en;

  // wire define
  wire       clk_50m;  // 50MHz clock
  wire       clk_25m;  // 25MHz clock
  wire       locked;  // pll lock signal
  wire       rst_n;  // reset signal, active low

  wire       uart_tx_en;
  wire [7:0] uart_tx_data;
  wire       uart_tx_busy;

  wire [7:0] mock_ad_data;

  // initial block
  initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    acquisition_en = 1'b0;
    #200 sys_rst_n = 1'b1;
    #10000 acquisition_en = 1'b1;
    #100 acquisition_en = 1'b0;
  end

  // main code

  assign rst_n = sys_rst_n & locked; // generate a new reset signal from system reset and pll lock signal

  assign mock_ad_data = ad_data - 8'd128;

  // clock gen
  always #(CLK_PERIOD / 2) sys_clk = ~sys_clk;  // 50MHz

  // ad simulation
  always @(posedge clk_25m or negedge rst_n) begin
    if (!rst_n) begin
      ad_data <= 8'd0;
    end else begin
      ad_data <= ad_data + 1'b1;
    end
  end

  // pll
  clk_wiz_0 clk_wiz_tb_au (
      .clk_50m     (clk_50m),  // 50MHz clock
      .clk_25m     (clk_25m),  // 25MHz clock
      .clk_25m_120d(),         // 25MHz clock 120 degree phase shift
      .locked      (locked),   // pll lock signal
      .clk_in1     (sys_clk)   // input clock
  );

  // acquisition_uart
  acquisition_uart acquisition_uart_0 (
      .clk_50m                (clk_50m),
      .clk_25m                (clk_25m),
      .sys_rst_n              (sys_rst_n),
      .acquisition_en         (acquisition_en),
      .ch1_ad_data            (ad_data),
      .ch2_ad_data            (mock_ad_data),
      .trigger_threshold      (8'd128),
      .trigger_is_rising_slope(1'b1),
      .trigger_position       (3'd0),
      .trigger_channel        (1'b0),
      .acquisition_pulse_sel  (4'd2),
      .uart_tx_en             (uart_tx_en),
      .uart_tx_data           (uart_tx_data),
      .uart_tx_busy           (uart_tx_busy),
      .acquisition_busy       ()
  );

  // uart transmission module
  uart_tx #(
      .SYS_CLK_FREQ(SYS_CLK_FREQ),
      .BAUD_RATE(BAUD_RATE)
  ) uart_tx_tbau0 (
      .sys_clk     (clk_50m),
      .sys_rst_n   (rst_n),
      .uart_tx_en  (uart_tx_en),
      .uart_tx_data(uart_tx_data),
      .uart_txd    (),
      .uart_tx_busy(uart_tx_busy)
  );

endmodule
