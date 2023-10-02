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
    output           uart_txd,
    // busy signal
    output reg       acquisition_busy
);
  // parameter define
  parameter IDLE = 3'b001;
  parameter SAMPLING = 3'b010;
  parameter SENDING = 3'b100;

  // wire define
  wire [7:0] sample_data;
  wire       sample_completed;
  wire       send_busy;

  // reg define
  reg  [2:0] state;
  reg  [2:0] next_state;

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
          next_state = SAMPLING;
        end else begin
          next_state = IDLE;
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
    end else begin
      case (state)
        IDLE: begin
          acquisition_busy <= 1'b0;
        end
        SAMPLING: begin
          acquisition_busy <= 1'b1;
        end
        SENDING: begin
          acquisition_busy <= 1'b1;
        end
        default: begin
          acquisition_busy <= acquisition_busy;
        end
      endcase
    end
  end

  // acquisition_sample
  acquisition_sample acquisition_sample_0 (
      .clk_50m(clk_50m),
      .clk_25m(clk_25m),
      .sys_rst_n(sys_rst_n),
      .acquisition_en(acquisition_en),
      .ad_data(ad_data),
      .sample_completed(sample_completed),
      .sample_data(sample_data),
      .trigger_threshold(trigger_threshold),
      .trigger_is_rising_slope(trigger_is_rising_slope),
      .trigger_position(trigger_position),
      .acquisition_pulse_sel(acquisition_pulse_sel)
  );

  // aqcquisition_send_uart
  acquisition_send_uart acquisition_send_uart_0 (
      .clk_50m(clk_50m),
      .clk_25m(clk_25m),
      .sys_rst_n(sys_rst_n),
      .sample_completed(sample_completed),
      .sample_data(sample_data),
      .uart_txd(uart_txd),
      .send_busy(send_busy)
  );

endmodule
