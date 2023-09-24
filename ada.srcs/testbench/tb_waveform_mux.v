`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/25/2023 02:02:55 AM
// Design Name: 
// Module Name: tb_waveform_mux
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


module tb_waveform_mux ();
  // parameter define
  parameter CLK_PERIOD = 20;  // clock period in ns

  // reg define
  reg        sys_clk;  // system clock
  reg  [2:0] sel;
  reg  [7:0] addr;  // address of data read from rom
  reg  [1:0] cnt;  // counter

  // wire define
  wire [7:0] out;  // data read from rom

  // initial block
  initial begin
    addr = 8'd0;  // address init
    cnt = 2'd0;  // counter init
    sys_clk = 1'b0;  // system clock init
    #2000000 sel = 3'd0;
    #2000000 sel = 3'd1;
    #2000000 sel = 3'd2;
    #2000000 sel = 3'd3;
    #2000000 sel = 3'd4;
    #2000000 sel = 3'd5;
    #2000000 sel = 3'd6;
    #2000000 sel = 3'd7;
    #2000000 sel = 3'd0;
  end

  // clock generator
  always #(CLK_PERIOD / 2) sys_clk = ~sys_clk;

  // address generator
  always @(posedge sys_clk) begin
    cnt <= cnt + 2'd1;
    if (cnt == 2'd3) begin
      addr <= addr + 8'd1;
    end
  end

  // waveform_mux instance
  waveform_mux waveform_mux_0 (
      .sys_clk(sys_clk),  // system clock
      .addr   (addr),     // address of data read from rom
      .sel    (sel),      // select waveform
      .data   (out)       // data read from rom
  );

endmodule
