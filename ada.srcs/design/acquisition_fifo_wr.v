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
    input      wr_clk,
    input      rst_n,
    // fifo interface
    input      wr_rst_busy,  // fifo write reset busy
    input      en,           // enable signal, active high
    input      almost_full,  // fifo almost full signal
    output reg wr_en         // fifo write enable
);
  // main code

  // assign value to fifo write enable, start pushing data when en is high till fifo is almost full
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      wr_en <= 1'b0;
    end else if (!wr_rst_busy) begin
      if (en) begin  // en is high, start writing data
        wr_en <= 1'b1;
      end else if (almost_full) begin  // fifo is almost full, stop writing data
        wr_en <= 1'b0;
      end else begin
        wr_en <= wr_en;
      end
    end
  end

endmodule
