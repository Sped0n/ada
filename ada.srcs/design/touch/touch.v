`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/28/2023 01:49:33 AM
// Design Name: 
// Module Name: touch
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


module touch (
    input  clk,
    input  rst_n,
    input  tpad,
    output filtered_tpad
);
  // reg define
  reg raw_tpad_delay0;
  reg raw_tpad_delay1;

  // main code

  assign filtered_tpad = (~raw_tpad_delay1) & raw_tpad_delay0;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      raw_tpad_delay0 <= 1'b0;
      raw_tpad_delay1 <= 1'b0;
    end else begin
      raw_tpad_delay0 <= tpad;
      raw_tpad_delay1 <= raw_tpad_delay0;
    end
  end

endmodule
