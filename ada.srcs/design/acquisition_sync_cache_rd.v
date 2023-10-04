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
    input            rd_clk,
    input            rst_n,
    // en flag
    input            en,
    // address to start reading
    input      [7:0] start_addr,
    // dual port ram
    output reg       rd_en,
    output reg [7:0] rd_addr,
    // fifo enable flag
    output           sample_completed,
    // reading last data flag
    output           pushing_last_data
);
  // parameter define
  parameter BRAM_DEPTH = 255;

  // reg define
  reg [7:0] rd_cnt;
  reg       rd_en_delay0;

  // main code

  assign sample_completed  = rd_en & (~rd_en_delay0);

  assign pushing_last_data = rd_en_delay0 & (~rd_en);

  // handle cache_wr_ready
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_en <= 1'b0;
    end else if (en) begin
      rd_en <= 1'b1;
    end else if (rd_cnt == BRAM_DEPTH - 1'b1) begin
      rd_en <= 1'b0;
    end else begin
      rd_en <= rd_en;
    end
  end

  // rd_addr and rd_cnt control
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr <= 8'd0;
      rd_cnt  <= 8'd0;
    end else begin
      if (rd_en) begin  // write enable
        rd_cnt <= rd_cnt + 1'b1;
        if (rd_addr == 8'd254) begin  // reach the end of ram
          rd_addr <= 8'd0;
        end else begin
          rd_addr <= rd_addr + 1'b1;
        end
      end else begin
        rd_addr <= start_addr;
      end
    end
  end

  // rd_en_delay0
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_en_delay0 <= 1'b0;
    end else begin
      rd_en_delay0 <= rd_en;
    end
  end

endmodule
