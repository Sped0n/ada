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
    input        rd_clk,
    input        rst_n,
    // fifo interface
    input        wr_rst_busy,
    input  [7:0] rd_data,
    input        full,
    input        empty,
    output       rd_en,
    // uart interface
    output       uart_txd
);
  // parameter define
  parameter IDLE = 4'b0001;
  parameter FETCH = 4'b0010;
  parameter SEND_ENABLE = 4'b0100;
  parameter SENDING = 4'b1000;

  parameter SYS_CLK_FREQ = 50_000_000;  // system clock frequency
  parameter BAUD_RATE = 115_200;  // baud rate

  // reg define
  reg [3:0] state;
  reg [3:0] next_state;

  reg full_delay0;
  reg full_delay1;
  reg wr_rst_busy_delay0;
  reg wr_rst_busy_delay1;
  reg rd_en_tmp;
  reg rd_en_tmp_delay0;
  reg rd_en_delay0;  // for state machine to swtich state more precisely (do not switch state when fifo is resetting)
  reg uart_tx_en;
  reg empty_delay0;  // fifo read delay, in order to get all data, we have to delay empty for one clock cycle

  // wire define
  wire uart_tx_busy;
  wire rd_en_pulse;

  // main code

  assign rd_en = rd_en_tmp & (~rd_en_tmp_delay0);

  // uart transmission module
  uart_tx #(
      .SYS_CLK_FREQ(SYS_CLK_FREQ),
      .BAUD_RATE(BAUD_RATE)
  ) uart_tx_afru0 (
      .sys_clk     (rd_clk),
      .sys_rst_n   (rst_n),
      .uart_tx_en  (uart_tx_en),
      .uart_tx_data(rd_data),
      .uart_txd    (uart_txd),
      .uart_tx_busy(uart_tx_busy)
  );

  // full and wr_rst_busy is from write clock domain
  // rd_en_tmp_delay and rd_en_delay
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      // full
      full_delay0 <= 1'b0;
      full_delay1 <= 1'b0;
      // wr_rst_busy
      wr_rst_busy_delay0 <= 1'b0;
      wr_rst_busy_delay1 <= 1'b0;
      // rd_en_tmp
      rd_en_tmp_delay0 <= 1'b0;
      // rd_en
      rd_en_delay0 <= 1'b0;
      // empty
      empty_delay0 <= 1'b0;
    end else begin
      // full
      full_delay0 <= full;
      full_delay1 <= full_delay0;
      // wr_rst_busy
      wr_rst_busy_delay0 <= wr_rst_busy;
      wr_rst_busy_delay1 <= wr_rst_busy_delay0;
      // rd_en_tmp
      rd_en_tmp_delay0 <= rd_en_tmp;
      // rd_en
      rd_en_delay0 <= rd_en;
      // empty
      empty_delay0 <= empty;
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
        if ((full_delay1 == 1'b1) && (wr_rst_busy_delay1 == 1'b0)) begin  // fifo is full and not reset busy, start reading data
          next_state = FETCH;
        end else begin
          next_state = IDLE;
        end
      end
      FETCH: begin  // fetch data from fifo
        if (empty_delay0) begin  // fifo is empty, stop reading data
          next_state = IDLE;
        end else begin
          if (rd_en_delay0 == 1'b1) begin
            next_state = SEND_ENABLE;
          end else begin
            next_state = FETCH;
          end
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
          next_state = FETCH;
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
  always @(posedge rd_clk or negedge rst_n) begin
    if (!rst_n) begin
      rd_en_tmp  <= 1'b0;
      uart_tx_en <= 1'b0;
    end else begin
      case (state)
        IDLE: begin
          rd_en_tmp  <= 1'b0;
          uart_tx_en <= 1'b0;
        end
        FETCH: begin
          rd_en_tmp  <= 1'b1;
          uart_tx_en <= 1'b0;
        end
        SEND_ENABLE: begin
          rd_en_tmp  <= 1'b0;
          uart_tx_en <= 1'b1;
        end
        SENDING: begin
          rd_en_tmp  <= 1'b0;
          uart_tx_en <= 1'b0;
        end
        default: begin
          rd_en_tmp  <= rd_en_tmp;
          uart_tx_en <= uart_tx_en;
        end
      endcase
    end
  end
endmodule
