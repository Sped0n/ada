`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/27/2023 09:32:01 PM
// Design Name: 
// Module Name: bin2bcd
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


module bin2bcd (
    input      [ 7:0] bin,
    output reg [11:0] bcd
);
  // reg define
  reg [3:0] i;

  //main code

  always @(bin) begin
    bcd[11:0] = 12'd0;  // clear bcd
    for (i = 4'd0; i < 4'd8; i = i + 1'b1) begin  // run 8 iterations
      bcd = {bcd[10:0], bin[7-i]};  // shift bcd left 1 bit, and add 1 bit from bin

      // if a hex digit is greater than 4, add 3 to it
      if (i < 4'd7 && bcd[3:0] > 4'd4) begin
        bcd[3:0] = bcd[3:0] + 4'd3;
      end
      if (i < 4'd7 && bcd[7:4] > 4'd4) begin
        bcd[7:4] = bcd[7:4] + 4'd3;
      end
      if (i < 4'd7 && bcd[11:8] > 4'd4) begin
        bcd[11:8] = bcd[11:8] + 4'd3;
      end
    end
  end

endmodule
