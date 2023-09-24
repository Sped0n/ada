`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/25/2023 01:32:14 AM
// Design Name: 
// Module Name: mux5_1
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


module mux5_1 (
    input            in0,
    input            in1,
    input            in2,
    input            in3,
    input            in4,
    input      [2:0] sel,
    output reg       out
);
  // main code
  always@(*) begin
    case (sel)
        3'd0: out <= in0;
        3'd1: out <= in1;
        3'd2: out <= in2;
        3'd3: out <= in3;
        3'd4: out <= in4;
        default: out <= 1'b0;
    endcase
  end

endmodule
