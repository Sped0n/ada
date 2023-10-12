`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/03/2023 09:19:05 PM
// Design Name: 
// Module Name: acquisition_ctl_uart
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


module acquisition_ctl_uart (
    input             clk_50m,
    input             sys_rst_n,
    // uart rx
    input             uart_rx_done,
    input      [ 7:0] uart_rx_data,
    // output
    output reg [ 7:0] trigger_threshold,
    output reg        trigger_is_rising_slope,
    output reg [15:0] trigger_position,
    output reg        trigger_channel,
    output reg [ 3:0] acquisition_pulse_sel,
    output reg        acquisition_en,
    output reg        packet_corrupted,
    // parse info
    output reg        parse_completed,
    output reg [ 7:0] parse_result,
    output reg [ 7:0] parse_cmd
);
  // parameter define
  parameter PACKET_HEADER = 8'h55;

  parameter TRG_THS = 8'h02;
  parameter TRG_SLOPE = 8'h03;
  parameter TRG_POS = 8'h04;
  parameter TRG_CH = 8'h05;
  parameter ACQ_PULSE = 8'h06;
  parameter ACQ_EN = 8'h07;
  parameter BAD_PKG = 8'h08;

  parameter ERR_HEADER = 8'hE0;
  parameter ERR_CMD = 8'hE1;
  parameter ERR_DATA_LEN = 8'hE2;
  parameter ERR_CHECKSUM = 8'hE3;
  parameter NO_ERR = 8'h00;

  localparam CAP_HEADER = 6'b000001;
  localparam CAP_CMD = 6'b000010;
  localparam CAP_DATALEN = 6'b000100;
  localparam CAP_DATA = 6'b001000;
  localparam CAP_CHECKSUM = 6'b010000;
  localparam RX_COMPLETE = 6'b100000;

  // reg define
  reg [5:0] state;
  reg [5:0] next_state;

  reg [2:0] data_cnt;
  reg [7:0] data_len;
  reg [7:0] rx_data;
  reg [7:0] rx_data_delay0;
  reg [7:0] checksum;
  reg       jmp;

  reg       acquisition_en_delay0;
  reg       packet_corrupted_delay0;

  // main code

  // state machine

  // state transition
  always @(posedge clk_50m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      state <= CAP_HEADER;
    end else begin
      state <= next_state;
    end
  end

  // state transition logic
  always @(*) begin
    case (state)
      CAP_HEADER: begin
        if (jmp) begin
          next_state = CAP_CMD;
        end else if (parse_result == ERR_HEADER) begin
          next_state = RX_COMPLETE;
        end else begin
          next_state = CAP_HEADER;
        end
      end
      CAP_CMD: begin
        if (jmp) begin
          next_state = CAP_DATALEN;
        end else if (parse_result == ERR_CMD) begin
          next_state = RX_COMPLETE;
        end else begin
          next_state = CAP_CMD;
        end
      end
      CAP_DATALEN: begin
        if (jmp) begin
          next_state = CAP_DATA;
        end else if (parse_result == ERR_DATA_LEN) begin
          next_state = RX_COMPLETE;
        end else begin
          next_state = CAP_DATALEN;
        end
      end
      CAP_DATA: begin
        if (jmp) begin
          next_state = CAP_CHECKSUM;
        end else begin
          next_state = CAP_DATA;
        end
      end
      CAP_CHECKSUM: begin
        if (jmp) begin
          next_state = RX_COMPLETE;
        end else if (parse_result == ERR_CHECKSUM) begin
          next_state = RX_COMPLETE;
        end else begin
          next_state = CAP_CHECKSUM;
        end
      end
      RX_COMPLETE: begin
        if (jmp) begin
          next_state = CAP_HEADER;
        end else begin
          next_state = RX_COMPLETE;
        end
      end
    endcase
  end

  // state machine output logic
  always @(posedge clk_50m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      data_cnt <= 3'd0;
      parse_result <= 8'h00;
      parse_cmd <= 8'd0;
      data_len <= 8'd0;
      parse_completed <= 1'b0;
      jmp <= 1'b0;
      rx_data <= 8'd0;
      rx_data_delay0 <= 8'd0;
      checksum <= 8'd0;
    end else begin
      jmp <= 1'b0;
      parse_completed <= 1'b0;
      case (state)
        CAP_HEADER: begin
          if (uart_rx_done) begin
            if (uart_rx_data == PACKET_HEADER) begin
              jmp <= 1'b1;
              checksum <= checksum + PACKET_HEADER;
            end else begin
              parse_result <= ERR_HEADER;
              parse_completed <= 1'b1;
            end
          end
        end
        CAP_CMD: begin
          if (uart_rx_done) begin
            if (uart_rx_data == TRG_THS ||
                uart_rx_data == TRG_SLOPE ||
                uart_rx_data == TRG_POS ||
                uart_rx_data == TRG_CH ||
                uart_rx_data == ACQ_PULSE ||
                uart_rx_data == ACQ_EN ||
                uart_rx_data == BAD_PKG ) begin
              jmp <= 1'b1;
              parse_cmd <= uart_rx_data;
              checksum <= checksum + uart_rx_data;
            end else begin
              parse_result <= ERR_CMD;
              parse_completed <= 1'b1;
            end
          end
        end
        CAP_DATALEN: begin
          if (uart_rx_done) begin
            if (uart_rx_data == 8'd0) begin
              parse_result <= ERR_DATA_LEN;
              parse_completed <= 1'b1;
            end else begin
              jmp <= 1'b1;
              data_len <= uart_rx_data;
              checksum <= checksum + uart_rx_data;
            end
          end
        end
        CAP_DATA: begin
          if (uart_rx_done) begin
            rx_data <= uart_rx_data;
            rx_data_delay0 <= rx_data;
            // data_cnt
            if (data_cnt < data_len - 8'd1) begin
              data_cnt <= data_cnt + 1'b1;
            end else begin
              data_cnt <= 3'd0;
              jmp <= 1'b1;
            end
            // checksum
            if (data_cnt < data_len) begin
              checksum <= checksum + uart_rx_data;
            end
          end
        end
        CAP_CHECKSUM: begin
          if (uart_rx_done) begin
            if (uart_rx_data == checksum) begin
              jmp <= 1'b1;
              parse_completed <= 1'b1;
            end else begin
              parse_result <= ERR_CHECKSUM;
              parse_completed <= 1'b1;
            end
          end
        end
        RX_COMPLETE: begin
          if (!jmp) begin
            jmp <= 1'b1;
            parse_completed <= 1'b0;
            parse_result <= 8'd0;
            parse_cmd <= 8'd0;
            data_len <= 8'd0;
            checksum <= 8'd0;
            rx_data <= 8'd0;
            rx_data_delay0 <= 8'd0;
          end
        end
      endcase
    end
  end

  // cmd processing
  always @(posedge clk_50m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      trigger_threshold <= 8'd128;  // trigger threshold is 128
      trigger_is_rising_slope <= 1'b1;  // rising slope
      trigger_position <= 16'hffff;  // trigger disabled
      trigger_channel <= 1'b0;  // channel 1
      acquisition_pulse_sel <= 4'd0;  // 25MHz (1us/div)
      acquisition_en <= 1'b0;  // acquisition disabled
      packet_corrupted <= 1'b0;  // packet not corrupted
    end else begin
      // cmd handling
      if ((parse_result == NO_ERR) && (parse_completed == 1'b1)) begin
        if ((parse_cmd == TRG_THS) && (data_len == 8'd1)) begin
          trigger_threshold <= rx_data;
        end else if ((parse_cmd == TRG_SLOPE) && (data_len == 8'd1)) begin
          trigger_is_rising_slope <= rx_data[0];
        end else if ((parse_cmd == TRG_POS) && (data_len == 8'd2)) begin
          trigger_position <= {rx_data_delay0, rx_data};
        end else if ((parse_cmd == TRG_CH) && (data_len == 8'd1)) begin
          trigger_channel <= rx_data[0];
        end else if ((parse_cmd == ACQ_PULSE) && (data_len == 8'd1)) begin
          acquisition_pulse_sel <= rx_data[3:0];
        end else if ((parse_cmd == ACQ_EN) && (data_len == 8'd1)) begin
          acquisition_en <= rx_data[0];
        end else if ((parse_cmd == BAD_PKG) && (data_len == 8'd1)) begin
          packet_corrupted <= rx_data[0];
        end
      end
      // generate a pulse instead of a level signal
      if (acquisition_en_delay0) begin
        acquisition_en <= 1'b0;
      end
      if (packet_corrupted_delay0) begin
        packet_corrupted <= 1'b0;
      end
    end
  end

  // delay
  always @(posedge clk_50m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      acquisition_en_delay0   <= 1'b0;
      packet_corrupted_delay0 <= 1'b0;
    end else begin
      acquisition_en_delay0   <= acquisition_en;
      packet_corrupted_delay0 <= packet_corrupted;
    end
  end

endmodule
