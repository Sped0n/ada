`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 09/28/2023 08:56:37 PM
// Design Name: 
// Module Name: acquisition_fifo_rd_uart
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


module acquisition_fifo_rd_uart (
    // clock, use system clock here (50MHz)
    input rd_clk,
    input rst_n,
    // fifo interface
    input rd_rst_busy,
    input [7:0] rd_data,
    input full,
    input almost_empty,
    output reg rd_en,
    // uart interface
    output uart_txd
);
  // parameter define
  parameter IDLE = 5'b00001;
  parameter ARBIT = 5'b00010;
  parameter FETCH = 5'b00100;
  parameter SEND_ENABLE = 5'b01000;
  parameter SENDING = 5'b10000;

  parameter SYS_CLK_FREQ = 50_000_000;  // system clock frequency
  parameter BAUD_RATE = 115_200;  // baud rate

  // reg define
  reg full_delay0;
  reg full_delay1;
  reg [3:0] state;
  reg [4:0] next_state;
  reg rd_en_delay0;
  reg uart_tx_en;

  // wire define
  wire uart_tx_busy;
  wire rd_en_pulse;

  // main code

  assign rd_en_pulse = rd_en & ~rd_en_delay0;  // generate a pulse when rd_en is high

  // uart transmission module
  uart_tx #(
      .SYS_CLK_FREQ(SYS_CLK_FREQ),
      .BAUD_RATE(BAUD_RATE)
  ) uart_tx_0 (
      .sys_clk     (rd_clk),
      .sys_rst_n   (sys_rst_n),
      .uart_tx_en  (uart_tx_en),
      .uart_tx_data(rd_data),
      .uart_txd    (uart_txd),
      .uart_tx_busy(uart_tx_busy)
  );

  // full is from write clock domain
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      full_delay0 <= 1'b0;
      full_delay1 <= 1'b0;
    end else begin
      full_delay0 <= full;
      full_delay1 <= full_delay0;
    end
  end

  // rd_en_delay
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_en_delay0 <= 1'b0;
    end else begin
      rd_en_delay0 <= rd_en;
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

  // state update
  always @(*) begin
    case (state)
      IDLE: begin
        if (full_delay1) begin  // fifo is full, start reading data
          next_state = ARBIT;
        end else begin
          next_state = IDLE;
        end
      end
      ARBIT: begin  // a state to jump out when fifo is almost empty
        if (almost_empty) begin
          next_state = IDLE;
        end else begin
          next_state = FETCH;
        end
      end
      FETCH: begin  // fetch data from fifo
        if (rd_en_delay0 == 1'b1) begin
          next_state = SEND_ENABLE;
        end else begin
          next_state = FETCH;
        end
      end
      SEND_ENABLE: begin  // send data to uart
        if (uart_tx_busy) begin
          next_state = SENDING;
        end else begin
          next_state = SEND_ENABLE;
        end
      end
      SENDING: begin  // wait for uart to finish sending data
        if (!uart_tx_busy) begin
          next_state = ARBIT;
        end else begin
          next_state = SENDING;
        end
      end
      default: begin
        next_state = IDLE;
      end
    endcase
  end

  // state output
  always @(rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_en <= 1'b0;
      uart_tx_en <= 1'b0;
    end else begin
      case (state)
        IDLE: begin
          rd_en <= 1'b0;
          uart_tx_en <= 1'b0;
        end
        FETCH: begin
          rd_en <= 1'b1;
          uart_tx_en <= 1'b0;
        end
        SEND_ENABLE: begin
          rd_en <= 1'b0;
          uart_tx_en <= 1'b1;
        end
        SENDING: begin
          rd_en <= 1'b0;
          uart_tx_en <= 1'b0;
        end
        default: begin
          rd_en <= rd_en;
          uart_tx_en <= uart_tx_en;
        end
      endcase
    end
  end
endmodule
