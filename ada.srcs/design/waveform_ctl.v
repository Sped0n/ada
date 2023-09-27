`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/25/2023 07:04:35 PM
// Design Name: 
// Module Name: waveform_ctl
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


module waveform_ctl (
    input             sys_clk,
    input             sys_rst_n,
    input      [ 3:0] filtered_keys,
    input      [ 7:0] addr,
    output     [ 7:0] data,
    output reg [ 7:0] freq_adj,
    output reg        seg_en,
    output reg [35:0] seg_data,
    output reg [ 5:0] seg_dots
);
  // reg define
  reg  [ 2:0] mode;
  reg         key_pressed_delay0;
  reg         key_pressed_delay1;

  // wire define
  wire [11:0] freq_adj_bcd;

  // main code

  assign key_pressed = filtered_keys[0] & filtered_keys[1] & filtered_keys[2] & filtered_keys[3]; // key_pressed when any key is pressed (0)

  // waveform mux
  waveform_mux waveform_mux_0 (
      .sys_clk(sys_clk),
      .addr(addr),
      .sel(mode),
      .data(data)
  );

  // binary to bcd
  bin2bcd bin2bcd_0 (
      .bin(freq_adj),
      .bcd(freq_adj_bcd)
  );

  // key_pressed clock delay (2 clock cycles)
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      key_pressed_delay0 <= 1'b1;
      key_pressed_delay1 <= 1'b1;
    end else begin
      key_pressed_delay0 <= key_pressed;
      key_pressed_delay1 <= key_pressed_delay0;
    end
  end

  // frequency and waveform mode adjust
  // delay 1 clock cycle for stability
  always @(negedge key_pressed_delay0 or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      freq_adj <= 8'd5;
      mode <= 3'd0;
    end else begin
      case (filtered_keys)
        // key 0 (mode add)
        4'b1110: begin
          if (mode < 3'd6) begin
            mode <= mode + 1'b1;
          end else begin
            mode <= 3'd0;
          end
        end
        // key 1 (mode sub)
        4'b1101: begin
          if (mode > 3'd0) begin
            mode <= mode - 1'b1;
          end else begin
            mode <= 3'd6;
          end
        end
        // key 2 (freq add)
        4'b1011: freq_adj <= freq_adj + 1'b1;
        // key 3 (freq sub)
        4'b0111: freq_adj <= freq_adj - 1'b1;
        // default
        default: begin
          mode <= mode;
          freq_adj <= freq_adj;
        end
      endcase
    end
  end

  // update segment display info
  always @(negedge key_pressed_delay1 or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      seg_en   <= 1'b1;
      seg_data <= {6'd28, 6'd18, 6'd23, 6'd0, 6'd0, 6'd5};  // sin.005
      seg_dots <= 6'b001000;  // sin.005
    end else begin
      // seg enable
      seg_en   <= 1'b1;
      // dot as separator
      seg_dots <= 6'b001000;  // xxx.xxx
      // mode display
      case (mode)
        3'd0: seg_data[35:18] <= {6'd28, 6'd18, 6'd23};  // sin
        3'd1: seg_data[35:18] <= {6'd28, 6'd26, 6'd30};  // squ
        3'd2: seg_data[35:18] <= {6'd29, 6'd27, 6'd18};  // tri
        3'd3: seg_data[35:18] <= {6'd28, 6'd10, 6'd32};  // saw
        3'd4: seg_data[35:18] <= {6'd17, 6'd18, 6'd16};  // hig
        3'd5: seg_data[35:18] <= {6'd21, 6'd24, 6'd32};  // low
        3'd6: seg_data[35:18] <= {6'd24, 6'd15, 6'd15};  // off
      endcase
      // frequency adjust variable display
      seg_data[5:0]   <= {2'd0, freq_adj_bcd[3:0]};  // one
      seg_data[11:6]  <= {2'd0, freq_adj_bcd[7:4]};  // ten
      seg_data[17:12] <= {2'd0, freq_adj_bcd[11:8]};  // hundred
    end
  end

endmodule
