`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/29/2023 09:38:06 PM
// Design Name: 
// Module Name: acquisition_pulse_gen
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


module acquisition_pulse_gen (
    input            clk_50m,    // 50MHz
    input            clk_25m,    // 25MHz
    input            sys_rst_n,
    input      [3:0] sel,        // 15 clock to select
    output reg       pulse       // pulse (25MHz clock domain)
);
  // parameter define
  parameter CLK_CNT_MAX_25MHZ = 0;  // 25MHz (1us/div)
  parameter CLK_CNT_MAX_12_5MHZ = 1;  // 12.5MHz (2us/div)
  parameter CLK_CNT_MAX_5MHZ = 4;  // 5MHz (5us/div)
  parameter CLK_CNT_MAX_2_5MHZ = 9;  // 2.5MHz (10us/div)
  parameter CLK_CNT_MAX_1_25MHZ = 19;  // 1.25MHz (20us/div)
  parameter CLK_CNT_MAX_500KHZ = 49;  // 500KHz (50us/div)
  parameter CLK_CNT_MAX_250KHZ = 99;  // 250KHz (100us/div)
  parameter CLK_CNT_MAX_125KHZ = 199;  // 125KHz (200us/div)
  parameter CLK_CNT_MAX_50KHZ = 499;  // 50KHz (500us/div)
  parameter CLK_CNT_MAX_25KHZ = 999;  // 25KHz (1ms/div)
  parameter CLK_CNT_MAX_12_5KHZ = 1999;  // 12.5KHz (2ms/div)
  parameter CLK_CNT_MAX_5KHZ = 4999;  // 5KHz (5ms/div)
  parameter CLK_CNT_MAX_2_5KHZ = 9999;  // 2.5KHz (10ms/div)
  parameter CLK_CNT_MAX_1_25KHZ = 19999;  // 1.25KHz (20ms/div)
  parameter CLK_CNT_MAX_500HZ = 49999;  // 500Hz (50ms/div)

  // reg define
  reg         pulse_flag;
  reg  [15:0] clk_cnt;
  reg  [15:0] clk_cnt_max;
  reg  [ 3:0] sel_delay0;
  reg         pulse_flag_delay0;
  reg         pulse_flag_delay1;

  // wire define
  wire        sel_changed;

  // main code

  // sel_changed
  assign sel_changed = sel_delay0 != sel;

  // pulse
  always @(posedge clk_25m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      pulse <= 1'b0;
    end else begin
      if (sel == 4'd0) begin
        pulse <= 1'b1;
      end else begin
        pulse <= pulse_flag_delay0 & (~pulse_flag_delay1);
      end
    end
  end

  // sel_delay0 (50MHz clock domain)
  always @(posedge clk_50m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      sel_delay0 <= 4'd0;
    end else begin
      sel_delay0 <= sel;
    end
  end

  // pulse_flag is like a different clock, so we have to delay it to get the pulse in system clock domain
  // 25MHz clock domain
  always @(posedge clk_25m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      pulse_flag_delay0 <= 1'b0;
      pulse_flag_delay1 <= 1'b0;
    end else begin
      pulse_flag_delay0 <= pulse_flag;
      pulse_flag_delay1 <= pulse_flag_delay0;
    end
  end

  // clk_cnt_max switch
  always @(*) begin
    case (sel)
      4'd0: clk_cnt_max = CLK_CNT_MAX_25MHZ;  // 25MHz (1us/div)
      4'd1: clk_cnt_max = CLK_CNT_MAX_12_5MHZ;  // 12.5MHz (2us/div)
      4'd2: clk_cnt_max = CLK_CNT_MAX_5MHZ;  // 5MHz (5us/div)
      4'd3: clk_cnt_max = CLK_CNT_MAX_2_5MHZ;  // 2.5MHz (10us/div)
      4'd4: clk_cnt_max = CLK_CNT_MAX_1_25MHZ;  // 1.25MHz (20us/div)
      4'd5: clk_cnt_max = CLK_CNT_MAX_500KHZ;  // 500KHz (50us/div)
      4'd6: clk_cnt_max = CLK_CNT_MAX_250KHZ;  // 250KHz (100us/div)
      4'd7: clk_cnt_max = CLK_CNT_MAX_125KHZ;  // 125KHz (200us/div)
      4'd8: clk_cnt_max = CLK_CNT_MAX_50KHZ;  // 50KHz (500us/div)
      4'd9: clk_cnt_max = CLK_CNT_MAX_25KHZ;  // 25KHz (1ms/div)
      4'd10: clk_cnt_max = CLK_CNT_MAX_12_5KHZ;  // 12.5KHz (2ms/div)
      4'd11: clk_cnt_max = CLK_CNT_MAX_5KHZ;  // 5KHz (5ms/div)
      4'd12: clk_cnt_max = CLK_CNT_MAX_2_5KHZ;  // 2.5KHz (10ms/div)
      4'd13: clk_cnt_max = CLK_CNT_MAX_1_25KHZ;  // 1.25KHz (20ms/div)
      4'd14: clk_cnt_max = CLK_CNT_MAX_500HZ;  // 500Hz (50ms/div)
      default: clk_cnt_max = clk_cnt_max;
    endcase
  end

  // pulse flag gen
  always @(posedge clk_50m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      pulse_flag <= 1'b0;
      clk_cnt <= 16'd0;
    end else if (sel_changed) begin
      pulse_flag <= 1'b0;
      clk_cnt <= 16'd0;
    end else begin
      if (clk_cnt == clk_cnt_max) begin
        pulse_flag <= ~pulse_flag;
        clk_cnt <= 16'd0;
      end else begin
        pulse_flag <= pulse_flag;
        clk_cnt <= clk_cnt + 1'b1;
      end
    end
  end

endmodule
