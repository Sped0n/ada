`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 02:02:19 AM
// Design Name: spedon wen
// Module Name: uart_rx
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


module uart_rx (
    input sys_clk,   // system clock 50MHz
    input sys_rst_n, // system reset, low active

    input            uart_rxd,      // uart receive port
    output reg       uart_rx_done,  // high when uart receive data
    output reg [7:0] uart_rx_data   // uart receive data
);
  // paramteter define
  parameter SYS_CLK_FREQ = 50_000_000;  // system clock frequency
  parameter BAUD_RATE = 115_200;  // baud rate
  localparam BAUD_CNT_MAX = SYS_CLK_FREQ / BAUD_RATE;  // baud counter max value

  // reg define
  reg         uart_rxd_delay0;  // uart receive data delay 0
  reg         uart_rxd_delay1;  // uart receive data delay 1
  reg         uart_rxd_delay2;  // uart receive data delay 2
  reg         rx_flag;  // uart receive flag
  reg  [ 3:0] rx_cnt;  // uart receive data counter
  reg  [15:0] baud_cnt;  // baud counter
  reg  [ 7:0] rx_data_temp;  // uart receive data temp register

  // wire define
  wire        rx_trigger;  // uart receive trigger

  // main code

  assign rx_trigger = uart_rxd_delay2 & (~uart_rxd_delay1) & (~rx_flag);

  // synchronous processing for async signal
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      uart_rxd_delay0 <= 1'b0;
      uart_rxd_delay1 <= 1'b0;
      uart_rxd_delay2 <= 1'b0;
    end else begin
      uart_rxd_delay0 <= uart_rxd;
      uart_rxd_delay1 <= uart_rxd_delay0;
      uart_rxd_delay2 <= uart_rxd_delay1;
    end
  end

  // assign value for rx_flag
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      rx_flag <= 1'b0;
    end else if (rx_trigger) begin  // start bit detected
      rx_flag <= 1'b1;
    end else if ((rx_cnt == 4'd9) && (baud_cnt == BAUD_CNT_MAX/2 - 1'b1)) begin // receive complete
      rx_flag <= 1'b0;
    end else begin
      rx_flag <= rx_flag;
    end
  end

  // baud counter
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      baud_cnt <= 16'd0;
    end else if (rx_flag) begin  // activate baud counter when rx_flag is valid
      if (baud_cnt < BAUD_CNT_MAX - 1'b1) begin
        baud_cnt <= baud_cnt + 1'b1;
      end else begin
        baud_cnt <= 16'd0;  // reset baud counter when reach max value
      end
    end else begin
      baud_cnt <= 16'd0;  // receive complete, reset baud counter
    end
  end

  // rx counter
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      rx_cnt <= 4'd0;
    end else if (rx_flag) begin  // rx counter is active when rx_flag is valid
      if (baud_cnt == BAUD_CNT_MAX - 1'b1) begin  // one baud period
        rx_cnt <= rx_cnt + 1'b1;
      end else begin
        rx_cnt <= rx_cnt;
      end
    end else begin
      rx_cnt <= 4'd0;  // receive complete, reset rx counter
    end
  end

  // save uart receive data according to rx_cnt
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      rx_data_temp <= 8'd0;
    end else if (rx_flag) begin
      if (baud_cnt == BAUD_CNT_MAX/2 - 1'b1) begin  // save data when baud counter reach half value
        case (rx_cnt)
          4'd1: rx_data_temp[0] <= uart_rxd_delay2;
          4'd2: rx_data_temp[1] <= uart_rxd_delay2;
          4'd3: rx_data_temp[2] <= uart_rxd_delay2;
          4'd4: rx_data_temp[3] <= uart_rxd_delay2;
          4'd5: rx_data_temp[4] <= uart_rxd_delay2;
          4'd6: rx_data_temp[5] <= uart_rxd_delay2;
          4'd7: rx_data_temp[6] <= uart_rxd_delay2;
          4'd8: rx_data_temp[7] <= uart_rxd_delay2;
          default: rx_data_temp <= rx_data_temp;
        endcase
      end else begin
        rx_data_temp <= rx_data_temp;
      end
    end else begin
      rx_data_temp <= 8'd0;
    end
  end

  // uart_rx_done and uart_rx_data output
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
      uart_rx_done <= 1'b0;
      uart_rx_data <= 8'd0;
    end else if (rx_cnt == 4'd9 && baud_cnt == BAUD_CNT_MAX / 2 - 1'b1) begin  // receive complete
      uart_rx_done <= 1'b1;
      uart_rx_data <= rx_data_temp;
    end else begin
      uart_rx_done <= 1'b0;
      uart_rx_data <= uart_rx_data;
    end
  end

endmodule
