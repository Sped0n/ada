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
  reg  [ 7:0] bin;
  reg  [ 8:0] i;

  // wire define
  wire [11:0] bcd;

  // initial block
  initial begin
    for (i = 0; i < 256; i = i + 1) begin
      bin = i;
      #10;  // delay 10ns
    end
    $finish;
  end

  //main code
  bin2bcd bin2bcd_0 (
      .bin(bin),
      .bcd(bcd)
  );

endmodule
