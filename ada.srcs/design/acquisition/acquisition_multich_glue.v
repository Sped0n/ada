`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/04/2023 08:45:24 PM
// Design Name: 
// Module Name: acquisition_multich_glue
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


module acquisition_multich_glue (
    input            clk_25m,
    input            rst_n,
    // ch1
    input            ch1_cache_rd_en,
    input      [7:0] ch1_sample_data,
    input            ch1_push_ready,
    input            ch1_push_started,
    input            ch1_pushing_last_data,
    input            ch1_push_completed,
    output reg       ch1_push_en,
    // ch2
    input            ch2_cache_rd_en,
    input      [7:0] ch2_sample_data,
    input            ch2_push_ready,
    input            ch2_push_started,
    input            ch2_pushing_last_data,
    input            ch2_push_completed,
    output reg       ch2_push_en,
    // signal to fifo
    output           async_ram_wr_en,
    output reg       async_ram_wr_completed,
    output reg [7:0] sample_data
);
  // parameter define
  parameter IDLE = 4'b0001;
  parameter PUSH_CH1 = 4'b0010;
  parameter PUSH_CH2 = 4'b0100;
  parameter INFORM = 4'b1000;

  // reg define
  reg [3:0] state;
  reg [3:0] next_state;

  reg       ch1_cache_rd_en_delay0;
  reg       ch2_cache_rd_en_delay0;

  reg [2:0] async_ram_wr_completed_cnt;

  // main code

  // async_ram_wr_en
  assign async_ram_wr_en = ch1_cache_rd_en_delay0 | ch2_cache_rd_en_delay0;

  // cache_rd_en delay
  always @(posedge clk_25m or negedge rst_n) begin
    if (!rst_n) begin
      ch1_cache_rd_en_delay0 <= 1'b0;
      ch2_cache_rd_en_delay0 <= 1'b0;
    end else begin
      ch1_cache_rd_en_delay0 <= ch1_cache_rd_en;
      ch2_cache_rd_en_delay0 <= ch2_cache_rd_en;
    end
  end

  // sample data mux
  always @(*) begin
    case (state)
      IDLE: begin
        sample_data = 8'd0;
      end
      PUSH_CH1: begin
        sample_data = ch1_sample_data;
      end
      PUSH_CH2: begin
        sample_data = ch2_sample_data;
      end
      INFORM: begin
        sample_data = 8'd0;
      end
      default: begin
        sample_data = 8'd0;
      end
    endcase
  end

  // state machine

  // state transition
  always @(posedge clk_25m or negedge rst_n) begin
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
        if (ch1_push_ready && ch2_push_ready) begin
          next_state = PUSH_CH1;
        end else begin
          next_state = IDLE;
        end
      end
      PUSH_CH1: begin
        if (ch1_pushing_last_data) begin
          next_state = PUSH_CH2;
        end else begin
          next_state = PUSH_CH1;
        end
      end
      PUSH_CH2: begin
        if (ch2_push_completed) begin
          next_state = INFORM;
        end else begin
          next_state = PUSH_CH2;
        end
      end
      INFORM: begin
        if (async_ram_wr_completed_cnt == 3'd6) begin
          next_state = IDLE;
        end else begin
          next_state = INFORM;
        end
      end
      default: begin
        next_state = IDLE;
      end
    endcase
  end

  // state machine output logic
  always @(posedge clk_25m or negedge rst_n) begin
    if (!rst_n) begin
      ch1_push_en <= 1'b0;
      ch2_push_en <= 1'b0;
      async_ram_wr_completed <= 1'b0;
      async_ram_wr_completed_cnt <= 3'd0;
    end else begin
      case (next_state)  // instant response
        IDLE: begin
          ch1_push_en <= 1'b0;
          ch2_push_en <= 1'b0;
          async_ram_wr_completed <= 1'b0;
          async_ram_wr_completed_cnt <= 3'd0;
        end
        PUSH_CH1: begin
          ch1_push_en <= 1'b1;
          ch2_push_en <= 1'b0;
          async_ram_wr_completed <= 1'b0;
          async_ram_wr_completed_cnt <= 3'd0;
        end
        PUSH_CH2: begin
          ch1_push_en <= 1'b0;
          ch2_push_en <= 1'b1;
          async_ram_wr_completed <= 1'b0;
          async_ram_wr_completed_cnt <= 3'd0;
        end
        INFORM: begin
          ch1_push_en <= 1'b0;
          ch2_push_en <= 1'b0;
          if (async_ram_wr_completed_cnt > 3'd3) begin
            async_ram_wr_completed <= 1'b1;
          end else begin
            async_ram_wr_completed <= 1'b0;
          end
          async_ram_wr_completed_cnt <= async_ram_wr_completed_cnt + 1'b1;
        end
      endcase
    end
  end

endmodule
