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
    input  sys_clk,
    input  sys_rst_n,
    input  raw_tpad,
    output tpad
);
  // reg define
  reg raw_tpad_delay0;
  reg raw_tpad_delay1;

  // main code

  assign tpad = (~raw_tpad_delay1) & raw_tpad_delay0;

endmodule
