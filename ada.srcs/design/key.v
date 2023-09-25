`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/25/2023 06:57:03 PM
// Design Name: 
// Module Name: key
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


module key (
    input        sys_clk,
    input        sys_rst_n,
    input  [3:0] raw_keys,
    output [3:0] keys
);

  // main code
  key_debounce key_debounce_0 (
      .sys_clk(sys_clk),
      .sys_rst_n(sys_rst_n),
      .key(raw_keys[0]),
      .filtered_key(keys[0])
  );

  key_debounce key_debounce_1 (
      .sys_clk(sys_clk),
      .sys_rst_n(sys_rst_n),
      .key(raw_keys[1]),
      .filtered_key(keys[1])
  );

  key_debounce key_debounce_2 (
      .sys_clk(sys_clk),
      .sys_rst_n(sys_rst_n),
      .key(raw_keys[2]),
      .filtered_key(keys[2])
  );

  key_debounce key_debounce_3 (
      .sys_clk(sys_clk),
      .sys_rst_n(sys_rst_n),
      .key(raw_keys[3]),
      .filtered_key(keys[3])
  );

endmodule
