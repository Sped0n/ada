`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/28/2023 08:24:00 PM
// Design Name: 
// Module Name: acquisition_fifo_wr
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


module acquisition_fifo_wr (
    // clock
    input wr_clk,
    input rst_n,
    // fifo interface
    input wr_rst_busy,  // fifo write reset busy
    input trigger,  // acquisition trigger signal, active high
    input alomost_full,  // fifo almost full signal
    output reg wr_en,  // fifo write enable
    output reg [7:0] wr_data,  // fifo write data
    // adc
    input [7:0] ad_data
);
  // reg define
  reg trigger_delay0;
  reg trigger_delay1;

  // main code

  // just incase trigger is in the different clock domain
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      trigger_delay0 <= 1'b0;
      trigger_delay1 <= 1'b0;
    end else begin
      trigger_delay0 <= trigger;
      trigger_delay1 <= trigger_delay0;
    end
  end

  // assign value to fifo write enable, start pushing data when trigger is high till fifo is almost full
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_en <= 1'b0;
    end else if (!wr_rst_busy) begin
      if (trigger_delay1) begin  // trigger is high, start writing data
        wr_en <= 1'b1;
      end else if (alomost_full) begin  // fifo is almost full, stop writing data
        wr_en <= 1'b0;
      end else begin
        wr_en <= wr_en;
      end
    end
  end

  // assign value to fifo write data
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_data <= 8'd0;
    end else if (wr_en) begin  // write adc data into fifo when wr_en is high
      wr_data <= ad_data;
    end else begin
      wr_data <= 8'd0;
    end
  end

endmodule
