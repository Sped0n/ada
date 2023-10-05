`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/01/2023 03:21:51 AM
// Design Name: 
// Module Name: acquisition_sync_cache_rd
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


module acquisition_sync_cache_rd (
    input            rd_clk,
    input            rst_n,
    // en flag
    input            push_en,
    // address to start reading
    input      [7:0] start_addr,
    // dual port ram
    output           rd_en,
    output reg [7:0] rd_addr,
    // push status
    output           push_started,
    output           pushing_last_data,
    output           push_completed
);
  // parameter define
  parameter BRAM_DEPTH = 255;

  parameter IDLE = 2'b01;
  parameter READING = 2'b10;

  // reg define
  reg [1:0] state;
  reg [1:0] next_state;

  reg [7:0] rd_cnt;
  reg       rd_en_delay0;
  reg       push_en_delay0;
  reg       pushing_last_data_delay0;

  // main code

  // push_started: posedge rd_en
  assign push_started = rd_en & (~rd_en_delay0);
  // push_completed: negedge rd_en
  assign pushing_last_data = rd_en_delay0 & (~rd_en);
  // push_completed: negedge pushing_last_data
  assign push_completed = pushing_last_data_delay0 & (~pushing_last_data);

  // rd_addr and rd_cnt control
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_addr <= 8'd0;
      rd_cnt  <= 8'd0;
    end else begin
      if (rd_en) begin  // write enable
        rd_cnt <= rd_cnt + 1'b1;
        if (rd_addr == 8'd254) begin  // reach the end of ram
          rd_addr <= 8'd0;
        end else begin
          rd_addr <= rd_addr + 1'b1;
        end
      end else begin
        rd_addr <= start_addr;
      end
    end
  end

  // delay
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_en_delay0 <= 1'b0;
      push_en_delay0 <= 1'b0;
      pushing_last_data_delay0 <= 1'b0;
    end else begin
      rd_en_delay0 <= rd_en;
      push_en_delay0 <= push_en;
      pushing_last_data_delay0 <= pushing_last_data;
    end
  end

  // state machine

  // state transition
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= IDLE;
    end else begin
      state <= next_state;
    end
  end

  // state transition logic
  always @(*) begin
    case (state)
      IDLE: begin
        if ((push_en == 1'b1) && (push_en_delay0 == 1'b0)) begin
          next_state = READING;
        end else begin
          next_state = IDLE;
        end
      end
      READING: begin
        if (rd_cnt == BRAM_DEPTH) begin
          next_state = IDLE;
        end else begin
          next_state = READING;
        end
      end
      default: begin
        next_state = IDLE;
      end
    endcase
  end

  // state machine output logic
  assign rd_en = (next_state == READING);

endmodule
