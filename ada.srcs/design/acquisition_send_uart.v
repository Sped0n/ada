`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/29/2023 01:03:43 AM
// Design Name: 
// Module Name: acquisition_send_uart
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


module acquisition_send_uart (
    input            clk_50m,
    input            clk_25m,
    input            sys_rst_n,
    // acquisition sample
    input            fifo_wr_en,
    input      [7:0] sample_data,
    input            fifo_wr_completed,
    // uart interface
    output           uart_tx_en,
    output     [7:0] uart_tx_data,
    input            uart_tx_busy,
    // busy signal
    output reg       send_busy
);
  // parameter define
  parameter IDLE = 3'b001;
  parameter WRITING = 3'b010;
  parameter READING = 3'b100;

  // reg define
  reg  [2:0] state;
  reg  [2:0] next_state;

  // wire define
  // fifo interface
  wire       wr_rst_busy;
  wire       wr_en;
  wire       rd_en;
  wire [7:0] wr_data;
  wire [7:0] rd_data;
  // others
  wire       rd_busy;

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
        if (fifo_wr_en) begin  // enable flag is high, start writing
          next_state = WRITING;
        end else begin
          next_state = IDLE;
        end
      end
      WRITING: begin
        if (rd_busy) begin  // fifo is full, stop writing and start reading
          next_state = READING;
        end else begin
          next_state = WRITING;
        end
      end
      READING: begin
        if (!rd_busy) begin  // fifo is empty, back to idle
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
  always @(posedge clk_50m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      send_busy <= 1'b0;
    end else begin
      case (state)
        IDLE: begin
          send_busy <= 1'b0;
        end
        WRITING: begin
          send_busy <= 1'b1;
        end
        READING: begin
          send_busy <= 1'b1;
        end
        default: begin
          send_busy <= send_busy;
        end
      endcase
    end
  end

  // fifo generator
  async_fifo_8b async_fifo_8b_0 (
      .rst         (~sys_rst_n),
      .wr_clk      (clk_25m),
      .rd_clk      (clk_50m),
      .wr_en       (fifo_wr_en),
      .rd_en       (rd_en),
      .din         (sample_data),
      .dout        (rd_data),
      .almost_full (),
      .almost_empty(),
      .full        (),
      .empty       (),
      .wr_rst_busy (wr_rst_busy),
      .rd_rst_busy ()
  );

  // fifo read
  acquisition_fifo_rd_uart acquisition_fifo_rd_uart_0 (
      .rd_clk           (clk_50m),
      .rst_n            (sys_rst_n),
      .fifo_wr_completed(fifo_wr_completed),
      .wr_rst_busy      (wr_rst_busy),
      .rd_data          (rd_data),
      .rd_en            (rd_en),
      .uart_tx_en       (uart_tx_en),
      .uart_tx_data     (uart_tx_data),
      .uart_tx_busy     (uart_tx_busy),
      .rd_busy          (rd_busy)
  );

endmodule
