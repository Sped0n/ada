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
    input            async_ram_wr_en,
    input      [7:0] sample_data,
    input            async_ram_wr_completed,
    // uart interface
    output           uart_tx_en,
    output     [7:0] uart_tx_data,
    input            uart_tx_busy,
    // ack
    input            acquisition_en,
    input            packet_corrupted,
    // busy signal
    output reg       send_busy
);
  // parameter define
  parameter IDLE = 5'b00001;
  parameter WRITING = 5'b00010;
  parameter SEND_ENABLE = 5'b00100;
  parameter READING = 5'b01000;
  parameter WAITING_ACK = 5'b10000;

  // reg define
  reg  [ 4:0] state;
  reg  [ 4:0] next_state;

  reg  [14:0] wr_addr;
  reg  [14:0] rd_addr;
  reg         send_en;

  // wire define
  wire [ 7:0] rd_data;

  wire        rd_busy;

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
        if (async_ram_wr_en) begin  // enable flag is high, start writing
          next_state = WRITING;
        end else begin
          next_state = IDLE;
        end
      end
      WRITING: begin
        if (async_ram_wr_completed) begin  // finish writing
          next_state = SEND_ENABLE;
        end else begin
          next_state = WRITING;
        end
      end
      SEND_ENABLE: begin
        if (rd_busy) begin  // read started
          next_state = READING;
        end else begin
          next_state = SEND_ENABLE;
        end
      end
      READING: begin
        if (!rd_busy) begin  // read completed
          next_state = WAITING_ACK;
        end else begin
          next_state = READING;
        end
      end
      WAITING_ACK: begin
        if (acquisition_en) begin  // ack received
          next_state = IDLE;
        end else if (packet_corrupted) begin
          next_state = SEND_ENABLE;
        end else begin
          next_state = WAITING_ACK;
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
      rd_addr   <= 15'd0;
      send_en   <= 1'b0;
    end else begin
      // async ram rd_addr control
      if (rd_en) begin  // write enable
        rd_addr <= rd_addr + 1'b1;
      end
      // state machine
      case (state)
        IDLE: begin
          // reset
          send_busy <= 1'b0;
          rd_addr   <= 15'd0;
          send_en   <= 1'b0;
        end
        WRITING: begin
          send_busy <= 1'b1;
          send_en   <= 1'b0;
        end
        SEND_ENABLE: begin
          send_busy <= 1'b1;
          send_en   <= 1'b1;
        end
        READING: begin
          send_busy <= 1'b1;
          send_en   <= 1'b0;
        end
        WAITING_ACK: begin
          send_busy <= 1'b1;
          rd_addr   <= 15'd0;
          send_en   <= 1'b0;
        end
        default: begin
          send_busy <= send_busy;
        end
      endcase
    end
  end

  // async ram wr_addr control
  always @(posedge clk_25m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      wr_addr <= 15'd0;
    end else begin
      // async ram wr_addr control
      if (async_ram_wr_en) begin  // write enable
        wr_addr <= wr_addr + 1'b1;
      end
      // reset wr_addr
      if (state == READING) begin
        wr_addr <= 15'd0;
      end
    end
  end

  // async ram
  async_trans_ram async_trans_ram_0 (
      .clka (clk_25m),
      .ena  (async_ram_wr_en),
      .wea  (async_ram_wr_en),
      .addra(wr_addr),
      .dina (sample_data),
      .clkb (clk_50m),
      .enb  (rd_en),
      .addrb(rd_addr),
      .doutb(rd_data)
  );

  // fifo read
  acquisition_async_ram_rd_uart acquisition_async_ram_rd_uart_0 (
      .rd_clk      (clk_50m),
      .rst_n       (sys_rst_n),
      .send_en     (send_en),
      .rd_data     (rd_data),
      .rd_en       (rd_en),
      .uart_tx_en  (uart_tx_en),
      .uart_tx_data(uart_tx_data),
      .uart_tx_busy(uart_tx_busy),
      .rd_busy     (rd_busy)
  );

endmodule
