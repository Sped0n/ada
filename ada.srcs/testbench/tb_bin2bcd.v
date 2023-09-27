`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 09:47:34 PM
// Design Name: 
// Module Name: tb_bin2bcd
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


module tb_bin2bcd ();
  // reg define
  reg         clk;
  reg  [ 7:0] bin;

  // wire define
  wire [11:0] bcd;

  // initial block
  initial begin
    clk = 0;
    repeat (20) begin
      bin = {$random} % 256;
      #20;
    end
  end

  bin2bcd bin2bcd_tb0 (
      .bin(bin),
      .bcd(bcd)
  );

  // clock generation
  always #10 clk = ~clk;

endmodule
