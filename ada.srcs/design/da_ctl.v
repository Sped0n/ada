`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/24/2023 07:37:39 PM
// Design Name: 
// Module Name: da_ctl
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


module da_ctl (
    input clk,  // clock
    input rst_n,  // reset active low
    input [7:0] freq_adj,  // frequency adjust

    // rom
    input      [7:0] rd_data,  // data read from rom
    output reg [7:0] rd_addr,  // address of data read from rom
    // dac interface
    output           da_clk,   // dac clock
    output     [7:0] da_data   // dac data
);
  // reg define
  reg [7:0] freq_cnt;  // frequency counter

  // main code

  assign da_clk  = ~clk;  // latch data on falling edge of clock (for stability)
  assign da_data = rd_data;  // assign data read from rom to dac

  // frequency counter
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      freq_cnt <= 8'd0;
    end else begin
      if (freq_cnt == freq_adj) begin
        freq_cnt <= 8'd0;
      end else begin
        freq_cnt <= freq_cnt + 8'd1;
      end
    end
  end

  // address counter
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr <= 8'd0;
    end else begin
      if ((freq_cnt == freq_adj) && (rd_addr < 8'd255)) begin
        rd_addr <= rd_addr + 8'd1;
      end else if ((freq_cnt == freq_adj) && (rd_addr == 8'd255)) begin
        rd_addr <= 8'd0;
      end else begin
        rd_addr <= rd_addr;
      end
    end
  end

endmodule
