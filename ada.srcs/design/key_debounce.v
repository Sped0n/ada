`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/25/2023 12:49:13 AM
// Design Name: 
// Module Name: key_debounce
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


module key_debounce (
    input sys_clk,   // system clock
    input sys_rst_n, // system reset active low

    input      key,          // key input
    output reg filtered_key  // filtered key output
);
  // parameter define
  parameter DEBOUNCE_CNT_MAX = 20'd100_0000;  // debounce for 100_0000 * 20ns(1s/50MHz) = 20ms

  // reg define
  reg [19:0] debounce_cnt;  // debounce counter
  reg        key_shift_reg0;  // shift register 0 for key input
  reg        key_shift_reg1;  // shift register 1 for key input

  // main code

  // shift register (2 clock cycles)
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      key_shift_reg0 <= 1'b0;
      key_shift_reg1 <= 1'b0;
    end else begin
      key_shift_reg0 <= key;
      key_shift_reg1 <= key_shift_reg0;
    end
  end

  // key value debounce
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      debounce_cnt <= 20'd0;
    end else begin
      if (key_shift_reg1 != key_shift_reg0) begin  // key value changed
        debounce_cnt <= DEBOUNCE_CNT_MAX;  // set counter to 20'd100_0000, delay 20ms
      end else begin  // if key value not changed, decrement counter to 0
        if (debounce_cnt > 20'd0) begin
          debounce_cnt <= debounce_cnt - 1'b1;
        end else begin
          debounce_cnt <= 20'd0;
        end
      end
    end
  end

  // filtered key output
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      filtered_key <= 1'b1;  // if key value is low(0), key is pressed
    end else if (debounce_cnt == 20'd1) begin
      filtered_key <= key_shift_reg1;  // send key value when debounce counter is 1
    end else begin
      filtered_key <= filtered_key;
    end
  end

endmodule
