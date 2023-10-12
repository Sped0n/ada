`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/01/2023 12:50:21 AM
// Design Name: 
// Module Name: acquisition_sync_cache_wr
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


module acquisition_sync_cache_wr (
    input             wr_clk,             // 25MHz
    input             rst_n,
    // config
    input      [ 7:0] ad_data,
    input             en,
    input      [15:0] trigger_position,
    // trigger signal
    input             triggered,
    // ready flag
    output reg        push_ready,
    input             push_started,
    // dual port ram
    output            wr_we,              // ram write enable
    output reg        wr_en,              // ram write port enable (same as ram_wr_we)
    output reg [13:0] wr_addr,            // ram write address (0-254)
    output     [ 7:0] wr_data,            // ram write data
    // acquisiton pulse
    input             acquisition_pulse,
    // debug
    output     [ 4:0] cache_wr_state
);
  // parameter define
  parameter BRAM_DEPTH = 1250;

  localparam IDLE = 5'b00001;
  localparam CACHING = 5'b00010;
  localparam WFT = 5'b00100;  // wait for trigger
  localparam WFRD = 5'b01000;  // wait for rest data
  localparam HANDSHAKE = 5'b10000;

  // just incase state machine won't be stucked if we don't meet the trigger condition in WFT state
  parameter WFT_CNT_MAX = 10000;

  // reg define
  reg [4:0] state;
  reg [4:0] next_state;

  reg [15:0] cache_cnt;

  reg [15:0] wfrd_cnt;
  reg [15:0] wfrd_cnt_max;

  reg [15:0] wft_cnt;

  reg trigger_enable;

  // main code

  assign wr_we = wr_en;
  assign wr_data = ad_data;

  assign cache_wr_state = state;

  // trigger_positon control
  always @(*) begin
    case (trigger_position)
      16'hffff: begin
        trigger_enable = 1'b0;
        wfrd_cnt_max   = 16'd0;
      end
      default: begin
        trigger_enable = 1'b1;
        if (trigger_position > BRAM_DEPTH) begin
          wfrd_cnt_max = 16'd0;
        end else begin
          wfrd_cnt_max = BRAM_DEPTH - trigger_position;
        end
      end
    endcase
  end

  // state machine

  // state transition
  always @(posedge wr_clk or negedge rst_n) begin
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
        if (en) begin
          next_state = CACHING;
        end else begin
          next_state = IDLE;
        end
      end
      CACHING: begin
        if (cache_cnt == BRAM_DEPTH) begin
          if (trigger_enable) begin
            next_state = WFT;
          end else begin
            next_state = HANDSHAKE;
          end
        end else begin
          next_state = CACHING;
        end
      end
      WFT: begin
        if (triggered) begin
          next_state = WFRD;
        end else if (wft_cnt == WFT_CNT_MAX) begin
          next_state = HANDSHAKE;
        end else begin
          next_state = WFT;
        end
      end
      WFRD: begin
        if (wfrd_cnt == wfrd_cnt_max) begin
          next_state = HANDSHAKE;
        end else begin
          next_state = WFRD;
        end
      end
      HANDSHAKE: begin
        if (push_started) begin
          next_state = IDLE;
        end else begin
          next_state = HANDSHAKE;
        end
      end
    endcase
  end

  // state machine output logic
  always @(posedge wr_clk or negedge rst_n) begin
    if (!rst_n) begin
      cache_cnt <= 16'd0;
      wr_en <= 1'b0;
      push_ready <= 1'b0;
      wfrd_cnt <= 16'd0;
      wft_cnt <= 16'd0;
      wr_addr <= 8'd0;
    end else begin
      // wr_addr control
      if (wr_en) begin  // write enable
        if (wr_addr == (BRAM_DEPTH - 1'b1)) begin  // reach the end of ram
          wr_addr <= 14'd0;
        end else begin
          wr_addr <= wr_addr + 1'b1;
        end
      end
      // state machine
      case (state)
        IDLE: begin
          // reset ready flag
          push_ready <= 1'b0;
          // reset
          cache_cnt <= 16'd0;
          wfrd_cnt <= 16'd0;
          wft_cnt <= 16'd0;
          wr_en <= 1'b0;
          wr_addr <= 8'd0;
        end
        CACHING: begin
          push_ready <= 1'b0;
          wfrd_cnt   <= 16'd0;
          wft_cnt    <= 16'd0;
          // filling cache, and use cache_cnt as the cache filled metric
          if (acquisition_pulse) begin
            cache_cnt <= cache_cnt + 1'b1;
            wr_en <= 1'b1;
          end else begin
            cache_cnt <= cache_cnt;
            wr_en <= 1'b0;
          end
        end
        WFT: begin
          push_ready <= 1'b0;
          cache_cnt  <= 16'd0;
          wfrd_cnt   <= 16'd0;
          // just keep sampling, state machine will automatically go to WFRD when trigger is detected
          if (acquisition_pulse) begin
            wr_en   <= 1'b1;
            wft_cnt <= wft_cnt + 1'b1;
          end else begin
            wr_en   <= 1'b0;
            wft_cnt <= wft_cnt;
          end
        end
        WFRD: begin
          push_ready <= 1'b0;
          cache_cnt  <= 16'd0;
          wft_cnt    <= 16'd0;
          // keep sampling, and use wfrd_cnt as the cache filled metric
          if (acquisition_pulse) begin
            wr_en <= 1'b1;
            wfrd_cnt <= wfrd_cnt + 1'b1;
          end else begin
            wr_en <= 1'b0;
            wfrd_cnt <= wfrd_cnt;
          end
        end
        HANDSHAKE: begin
          // enable ready flag
          push_ready <= 1'b1;
          // reset
          cache_cnt <= 16'd0;
          wfrd_cnt <= 16'd0;
          wft_cnt <= 16'd0;
          wr_en <= 1'b0;
        end
      endcase
    end
  end

endmodule
