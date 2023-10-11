`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/25/2023 01:43:03 AM
// Design Name: 
// Module Name: waveform_mux
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


module waveform_mux (
    input            sys_clk,  // system clock
    input      [7:0] addr,     // address of data read from rom
    input      [2:0] sel,      // select waveform
    output reg [7:0] data      // data read from rom
);
  // parameter define
  parameter MAINTAIN_HIGH = 8'd255;  // maintain high level
  parameter MAINTAIN_LOW = 8'd0;  // maintain low level
  parameter OFF = 8'd127;  // turn off

  // wire define
  wire [7:0] sine_wave;  // sine wave
  wire [7:0] square_wave;  // square wave
  wire [7:0] triangle_wave;  // triangle wave
  wire [7:0] sawtooth_wave;  // sawtooth wave

  // main code

  // block rom setup
  sin_rom_256x8b sin_wave (
      .clka(sys_clk),  // input wire clka
      .addra(addr),  // input wire [7:0] addra
      .douta(sine_wave)  // output wire [7:0] douta
  );
  squ_rom_256x8b squ_wave (
      .clka(sys_clk),  // input wire clka
      .addra(addr),  // input wire [7:0] addra
      .douta(square_wave)  // output wire [7:0] douta
  );
  tri_rom_256x8b tri_wave (
      .clka(sys_clk),  // input wire clka
      .addra(addr),  // input wire [7:0] addra
      .douta(triangle_wave)  // output wire [7:0] douta
  );
  saw_rom_256x8b saw_wave (
      .clka(sys_clk),  // input wire clka
      .addra(addr),  // input wire [7:0] addra
      .douta(sawtooth_wave)  // output wire [7:0] douta
  );

  // waveform mux
  always@(*) begin
    case (sel)
      3'd0: data <= sine_wave;
      3'd1: data <= square_wave;
      3'd2: data <= triangle_wave;
      3'd3: data <= sawtooth_wave;
      3'd4: data <= MAINTAIN_HIGH;
      3'd5: data <= MAINTAIN_LOW;
      3'd6: data <= OFF;
      default: data <= OFF;
    endcase
  end

endmodule
