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
    input        sys_clk,
    input        sys_rst_n,
    input  [3:0] raw_keys,
    input  [7:0] addr,
    output [7:0] data
);
  // parameter define
  parameter DEBOUNCE_CNT_MAX = 20'd100_0000;  // debounce for 100_0000 * 20ns(1s/50MHz) = 20ms

  // reg define
  reg  [2:0] mode;
  wire [3:0] keys;

  // main code

  key #(
      .DEBOUNCE_CNT_MAX(DEBOUNCE_CNT_MAX)
  ) key_0 (
      .sys_clk(sys_clk),
      .sys_rst_n(sys_rst_n),
      .raw_keys(raw_keys),
      .keys(keys)
  );

  waveform_mux waveform_mux_0 (
      .sys_clk(sys_clk),
      .addr(addr),
      .sel(mode),
      .data(data)
  );

  assign key_pressed = keys[0] & keys[1] & keys[2] & keys[3]; // key_pressed when any key is pressed (0)

  always @(negedge key_pressed or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      mode <= 3'd0;
    end else begin
      case (keys)
        // key 0
        4'b0111: begin
          if (mode < 3'd4) begin
            mode <= mode + 1'b1;
          end else begin
            mode <= 3'd0;
          end
        end
        // key 1
        4'b1011: begin
          if (mode > 3'd0) begin
            mode <= mode - 1'b1;
          end else begin
            mode <= 3'd4;
          end
        end
        default: mode <= mode;
      endcase
    end
  end



endmodule
