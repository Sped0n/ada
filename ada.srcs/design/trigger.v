`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/30/2023 09:44:42 PM
// Design Name: 
// Module Name: trigger
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


module trigger (
    input        acquisition_pulse,
    input        rst_n,
    // trigger params
    input        is_rising_slope,
    input  [7:0] threshold,
    // ad data
    input  [7:0] ad_data,
    // result
    output       trigger
);
  // reg define
  reg cmp0;
  reg cmp1;

  // main code

  assign trigger = (is_rising_slope ^ cmp0) & (is_rising_slope ^ ~cmp1);

  always @(posedge acquisition_pulse or rst_n) begin
    if (!rst_n) begin
      cmp0 <= 1'b0;
      cmp1 <= 1'b0;
    end else begin
      cmp0 <= (ad_data >= threshold);
      cmp1 <= cmp0;
    end
  end

endmodule
