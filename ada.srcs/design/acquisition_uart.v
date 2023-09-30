`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/29/2023 01:03:43 AM
// Design Name: 
// Module Name: acquisition_uart
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


module acquisition_uart (
    input        clk_50m,
    input        clk_25m,
    input        sys_rst_n,
    input        en,
    input  [7:0] ad_data,
    output       uart_txd
);
  // wire define
  wire wr_rst_busy;
  wire rd_rst_busy;
  wire wr_en;
  wire rd_en;
  wire [7:0] wr_data;
  wire [7:0] rd_data;
  wire almost_full;
  wire empty;
  wire full;

  // main code

  // fifo generator
  async_fifo_8b async_fifo_8b_0 (
      .rst         (~sys_rst_n),
      .wr_clk      (clk_25m),
      .rd_clk      (clk_50m),
      .wr_en       (wr_en),
      .rd_en       (rd_en),
      .din         (wr_data),
      .dout        (rd_data),
      .almost_full (almost_full),
      .almost_empty(),
      .full        (full),
      .empty       (empty),
      .wr_rst_busy (wr_rst_busy),
      .rd_rst_busy (rd_rst_busy)
  );

  // fifo write
  acquisition_fifo_wr acquisition_fifo_wr_0 (
      .wr_clk     (clk_25m),
      .rst_n      (sys_rst_n),
      .wr_rst_busy(wr_rst_busy),
      .en         (en),
      .almost_full(almost_full),
      .wr_en      (wr_en),
      .wr_data    (wr_data),
      .ad_data    (ad_data)
  );

  // fifo read
  acquisition_fifo_rd_uart acquisition_fifo_rd_uart_0 (
      .rd_clk     (clk_50m),
      .rst_n      (sys_rst_n),
      .wr_rst_busy(wr_rst_busy),
      .rd_data    (rd_data),
      .full       (full),
      .empty      (empty),
      .rd_en      (rd_en),
      .uart_txd   (uart_txd)
  );
endmodule
