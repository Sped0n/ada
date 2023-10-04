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
    input            clk_50m,
    input            clk_25m,
    input            sys_rst_n,                // active low
    // enable signal
    input            acquisition_en,
    // ad data
    input      [7:0] ad_data,
    // trigger config
    input      [7:0] trigger_threshold,
    input            trigger_is_rising_slope,
    input      [2:0] trigger_position,
    // acquisition pulse config
    input      [3:0] acquisition_pulse_sel,
    // uart
    output           uart_tx_en,
    output     [7:0] uart_tx_data,
    input            uart_tx_busy,
    // busy signal
    output reg       acquisition_busy
);
  // parameter define
  parameter IDLE = 4'b0001;
  parameter SETPARAM = 4'b0010;
  parameter SAMPLING = 4'b0100;
  parameter SENDING = 4'b1000;

  // wire define
  wire [7:0] sample_data;
  wire       sample_completed;
  wire       send_busy;
  wire       triggered;
  wire       acquisition_pulse;

  // reg define
  reg  [3:0] state;
  reg  [3:0] next_state;

  reg  [7:0] trigger_threshold_reg;
  reg        trigger_is_rising_slope_reg;
  reg  [2:0] trigger_position_reg;
  reg  [3:0] acquisition_pulse_sel_reg;
  reg        acquisition_en_reg;

  reg        param_set;

  // main code

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
      trigger_threshold_reg <= 8'd0;
      trigger_is_rising_slope_reg <= 1'b1;
      trigger_position_reg <= 3'd5;
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
          acquisition_en_reg <= acquisition_en_reg;
        end
      endcase
    end
  end

  // acquisition_sample
  acquisition_sample acquisition_sample_0 (
      .clk_50m          (clk_50m),
      .clk_25m          (clk_25m),
      .sys_rst_n        (sys_rst_n),
      .acquisition_en   (acquisition_en_reg),
      .ad_data          (ad_data),
      .sample_completed (sample_completed),
      .sample_data      (sample_data),
      .triggered        (triggered),
      .trigger_position (trigger_position_reg),
      .acquisition_pulse(acquisition_pulse)
  );

  // aqcquisition_send_uart
  acquisition_send_uart acquisition_send_uart_0 (
      .clk_50m         (clk_50m),
      .clk_25m         (clk_25m),
      .sys_rst_n       (sys_rst_n),
      .sample_completed(sample_completed),
      .sample_data     (sample_data),
      .uart_tx_en      (uart_tx_en),
      .uart_tx_data    (uart_tx_data),
      .uart_tx_busy    (uart_tx_busy),
      .send_busy       (send_busy)
  );

  // trigger
  trigger trigger_0 (
      .acquisition_clk  (clk_25m),
      .rst_n            (sys_rst_n),
      .acquisition_pulse(acquisition_pulse),
      .is_rising_slope  (trigger_is_rising_slope_reg),
      .threshold        (trigger_threshold_reg),
      .ad_data          (ad_data),
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
