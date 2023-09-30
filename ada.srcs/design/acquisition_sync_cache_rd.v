`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/01/2023 03:21:51 AM
// Design Name: 
// Module Name: acquisition_sync_cache_rd
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


module acquisition_sync_cache_rd (
    input rd_clk,
    input rst_n,
    // handshake
    input cache_wr_ready,
    output cache_rd_busy,
    // address to start reading
    input [7:0] start_addr,
    // dual port ram
    output reg rd_en,
    output reg [7:0] rd_addr
);
  // parameter define
  parameter RD_CNT_MAX = 255;

  // reg define
  reg [7:0] rd_cnt;

  // main code

  assign cache_rd_busy = rd_en;

  // handle cache_wr_ready
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_en <= 1'b0;
    end else if (cache_wr_ready) begin
      rd_en <= 1'b1;
    end else if (rd_cnt == RD_CNT_MAX) begin
      rd_en <= 1'b0;
    end else begin
      rd_en <= rd_en;
    end
  end

  // rd_addr control
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr <= 8'd0;
    end else begin
      if (rd_en) begin  // write enable
        if (rd_addr == 8'd0) begin  // reach the end of ram
          rd_addr <= 8'd254;
        end else begin
          rd_addr <= rd_addr - 1'b1;
        end
      end else begin
        rd_addr <= start_addr;
      end
    end
  end

endmodule
