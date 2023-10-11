`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/01/2023 11:42:54 PM
// Design Name: 
// Module Name: acquisition_uart
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


module acquisition_uart (
    input             clk_50m,
    input             clk_25m,
    input             sys_rst_n,                // active low
    // enable signal
    input             acquisition_en,
    // ad data
    input      [ 7:0] ch1_ad_data,
    input      [ 7:0] ch2_ad_data,
    // trigger config
    input      [ 7:0] trigger_threshold,
    input             trigger_is_rising_slope,
    input      [15:0] trigger_position,
    input             trigger_channel,
    // acquisition pulse config
    input      [ 3:0] acquisition_pulse_sel,
    // packet corrupted
    input             packet_corrupted,
    // uart
    output            uart_tx_en,
    output     [ 7:0] uart_tx_data,
    input             uart_tx_busy,
    // busy signal
    output reg        acquisition_busy,
    // state for debug
    output     [ 3:0] acquisition_state,
    output     [ 4:0] ch1_cache_wr_state,
    output     [ 4:0] ch2_cache_wr_state
);
  // parameter define
  parameter IDLE = 4'b0001;
  parameter SETPARAM = 4'b0010;
  parameter SAMPLING = 4'b0100;
  parameter SENDING = 4'b1000;

  // wire define
  wire        ch1_cache_rd_en;
  wire [ 7:0] ch1_sample_data;
  wire        ch1_push_en;
  wire        ch1_push_ready;
  wire        ch1_push_started;
  wire        ch1_pushing_last_data;
  wire        ch1_push_completed;

  wire        ch2_cache_rd_en;
  wire [ 7:0] ch2_sample_data;
  wire        ch2_push_en;
  wire        ch2_push_ready;
  wire        ch2_push_started;
  wire        ch2_pushing_last_data;
  wire        ch2_push_completed;

  wire        async_ram_wr_en;
  wire [ 7:0] sample_data;
  wire        async_ram_wr_completed;

  wire        send_busy;
  wire        triggered;
  wire        acquisition_pulse;

  wire [ 7:0] trigger_ad_data;

  // reg define
  reg  [ 3:0] state;
  reg  [ 3:0] next_state;

  reg  [ 7:0] trigger_threshold_reg;
  reg         trigger_is_rising_slope_reg;
  reg  [15:0] trigger_position_reg;
  reg  [ 3:0] acquisition_pulse_sel_reg;
  reg         acquisition_en_reg;
  reg         trigger_channel_reg;

  reg         param_set;

  // main code

  assign acquisition_state = state;

  // trigger channel mux
  assign trigger_ad_data   = (trigger_channel_reg == 1'b0) ? ch1_ad_data : ch2_ad_data;

  // state machine

  // state transition
  always @(posedge clk_50m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      state <= IDLE;
    end else begin
      state <= next_state;
    end
  end

  // state transition logic
  always @(*) begin
    case (state)
      IDLE: begin
        if (acquisition_en) begin
          next_state = SETPARAM;
        end else begin
          next_state = IDLE;
        end
      end
      SETPARAM: begin
        if (param_set) begin
          next_state = SAMPLING;
        end else begin
          next_state = SETPARAM;
        end
      end
      SAMPLING: begin
        if (send_busy) begin
          next_state = SENDING;
        end else begin
          next_state = SAMPLING;
        end
      end
      SENDING: begin
        if (!send_busy) begin
          next_state = IDLE;
        end else begin
          next_state = SENDING;
        end
      end
      default: begin
        next_state = IDLE;
      end
    endcase
  end

  // state machine output logic
  always @(posedge clk_50m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      acquisition_busy <= 1'b0;
      param_set <= 1'b0;
      trigger_threshold_reg <= 8'd128;
      trigger_is_rising_slope_reg <= 1'b1;
      trigger_position_reg <= 16'hffff;
      trigger_channel_reg <= 1'b0;
      acquisition_pulse_sel_reg <= 4'd0;
      acquisition_en_reg <= 1'b0;
    end else begin
      case (state)
        IDLE: begin
          acquisition_busy <= 1'b0;
          param_set <= 1'b0;
          acquisition_en_reg <= 1'b0;
        end
        SETPARAM: begin
          acquisition_busy <= 1'b1;
          param_set <= 1'b1;
          trigger_threshold_reg <= trigger_threshold;
          trigger_is_rising_slope_reg <= trigger_is_rising_slope;
          trigger_position_reg <= trigger_position;
          acquisition_pulse_sel_reg <= acquisition_pulse_sel;
          trigger_channel_reg <= trigger_channel;
          acquisition_en_reg <= 1'b1;
        end
        SAMPLING: begin
          acquisition_en_reg <= 1'b0;
          acquisition_busy <= 1'b1;
          param_set <= 1'b0;
        end
        SENDING: begin
          acquisition_en_reg <= 1'b0;
          acquisition_busy <= 1'b1;
          param_set <= 1'b0;
        end
        default: begin
          acquisition_busy <= acquisition_busy;
          param_set <= param_set;
          trigger_threshold_reg <= trigger_threshold_reg;
          trigger_is_rising_slope_reg <= trigger_is_rising_slope_reg;
          trigger_position_reg <= trigger_position_reg;
          acquisition_pulse_sel_reg <= acquisition_pulse_sel_reg;
          trigger_channel_reg <= trigger_channel_reg;
          acquisition_en_reg <= acquisition_en_reg;
        end
      endcase
    end
  end

  // channel 1 sample
  acquisition_sample ch1 (
      .clk_50m          (clk_50m),
      .clk_25m          (clk_25m),
      .sys_rst_n        (sys_rst_n),
      .acquisition_en   (acquisition_en_reg),
      .ad_data          (ch1_ad_data),
      .sample_data      (ch1_sample_data),
      .triggered        (triggered),
      .trigger_position (trigger_position_reg),
      .acquisition_pulse(acquisition_pulse),
      .push_en          (ch1_push_en),
      .push_ready       (ch1_push_ready),
      .push_started     (ch1_push_started),
      .pushing_last_data(ch1_pushing_last_data),
      .push_completed   (ch1_push_completed),
      .cache_rd_en      (ch1_cache_rd_en),
      .cache_wr_state   (ch1_cache_wr_state)
  );

  // channel 2 sample
  acquisition_sample ch2 (
      .clk_50m          (clk_50m),
      .clk_25m          (clk_25m),
      .sys_rst_n        (sys_rst_n),
      .acquisition_en   (acquisition_en_reg),
      .ad_data          (ch2_ad_data),
      .sample_data      (ch2_sample_data),
      .triggered        (triggered),
      .trigger_position (trigger_position_reg),
      .acquisition_pulse(acquisition_pulse),
      .push_en          (ch2_push_en),
      .push_ready       (ch2_push_ready),
      .push_started     (ch2_push_started),
      .pushing_last_data(ch2_pushing_last_data),
      .push_completed   (ch2_push_completed),
      .cache_rd_en      (ch2_cache_rd_en),
      .cache_wr_state   (ch2_cache_wr_state)
  );

  // acquisition multi channel glue
  acquisition_multich_glue acquisition_multich_glue_0 (
      .clk_25m               (clk_25m),
      .rst_n                 (sys_rst_n),
      // channel 1
      .ch1_cache_rd_en       (ch1_cache_rd_en),
      .ch1_sample_data       (ch1_sample_data),
      .ch1_push_ready        (ch1_push_ready),
      .ch1_push_started      (ch1_push_started),
      .ch1_pushing_last_data (ch1_pushing_last_data),
      .ch1_push_completed    (ch1_push_completed),
      .ch1_push_en           (ch1_push_en),
      // channel 2
      .ch2_cache_rd_en       (ch2_cache_rd_en),
      .ch2_sample_data       (ch2_sample_data),
      .ch2_push_ready        (ch2_push_ready),
      .ch2_push_started      (ch2_push_started),
      .ch2_pushing_last_data (ch2_pushing_last_data),
      .ch2_push_completed    (ch2_push_completed),
      .ch2_push_en           (ch2_push_en),
      // signal to async ram
      .async_ram_wr_en       (async_ram_wr_en),
      .sample_data           (sample_data),
      .async_ram_wr_completed(async_ram_wr_completed)
  );

  // aqcquisition_send_uart
  acquisition_send_uart acquisition_send_uart_0 (
      .clk_50m               (clk_50m),
      .clk_25m               (clk_25m),
      .sys_rst_n             (sys_rst_n),
      .async_ram_wr_en       (async_ram_wr_en),
      .sample_data           (sample_data),
      .async_ram_wr_completed(async_ram_wr_completed),
      .uart_tx_en            (uart_tx_en),
      .uart_tx_data          (uart_tx_data),
      .uart_tx_busy          (uart_tx_busy),
      .acquisition_en        (acquisition_en),
      .packet_corrupted      (packet_corrupted),
      .send_busy             (send_busy)
  );

  // trigger
  trigger trigger_0 (
      .acquisition_clk  (clk_25m),
      .rst_n            (sys_rst_n),
      .acquisition_pulse(acquisition_pulse),
      .is_rising_slope  (trigger_is_rising_slope_reg),
      .threshold        (trigger_threshold_reg),
      .ad_data          (trigger_ad_data),
      .trigger          (triggered)
  );

  // acquisition pulse
  acquisition_pulse_gen acquisition_pulse_gen_0 (
      .clk_50m  (clk_50m),
      .clk_25m  (clk_25m),
      .sys_rst_n(sys_rst_n),
      .sel      (acquisition_pulse_sel_reg),
      .pulse    (acquisition_pulse)
  );

endmodule
