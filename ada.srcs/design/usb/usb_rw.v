`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: spedon wen
// 
// Create Date: 10/13/2023 01:12:16 AM
// Design Name: 
// Module Name: usb_rw
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


module usb_rw (
    input            usb_clk,    // 60MHz clock from FT232H
    input            rst_n,      // low active
    // FT232H
    input            usb_rxf_n,  // FT232H FIFO readable flag 
    input            usb_txe_n,  // FT232H FIFO writable flag
    output reg       usb_oe_n,   // FT232H data output enable
    output reg       usb_rd_n,   // FT232H read enable
    output reg       usb_wr_n,   // FT232H write enable
    inout      [7:0] usb_data,   // FT232H bidirectional data bus
    // user interface
    input            tx_en,      // transmit enable
    input      [7:0] tx_data,    // transmit data
    output reg       rx_en,      // receive enable
    output reg [7:0] rx_data,    // receive data
    output reg       busy,       // busy flag
    output           dbg_state   // debug state
);

  // parameter define    
  localparam IDLE = 3'b001;
  localparam READ = 3'b010;
  localparam WRITE = 3'b100;

  // reg define
  reg [2:0] state;
  reg [2:0] next_state;

  reg       usb_oe_n_delay0;

  // main code

  assign dbg_state = state;

  // at FT232H write state，assign input data to usb bus
  // otherwise assign high impedance
  assign usb_data  = (next_state == WRITE) ? tx_data : 8'hzz;

  // FT232H data output enable signal (usb_oe_n)
  always @(posedge usb_clk or negedge rst_n) begin
    if (!rst_n) usb_oe_n <= 1'b1;
    else if (!usb_rxf_n) usb_oe_n <= 1'b0;
    else usb_oe_n <= 1'b1;
  end

  // FT232H data output enable signal (usb_oe_n) delayed by one clock
  always @(posedge usb_clk or negedge rst_n) begin
    if (!rst_n) usb_oe_n_delay0 <= 1'b1;
    else usb_oe_n_delay0 <= usb_oe_n;
  end

  // state transition
  always @(posedge usb_clk or negedge rst_n) begin
    if (!rst_n) state <= IDLE;
    else state <= next_state;
  end

  // state transition logic
  always @(*) begin
    case (state)
      IDLE: begin
        if (usb_rxf_n == 1'b0) begin  // receive data from FT232H
          next_state <= READ;
        end else if ((usb_txe_n == 1'b0) && (tx_en == 1'b1)) begin // tx_en is high and FT232H is ready to send data
          next_state <= WRITE;
        end else begin
          next_state <= IDLE;
        end
      end
      READ: begin
        if ((usb_oe_n_delay0 == 1'b1) && (usb_rxf_n == 1'b1)) next_state <= IDLE;
        else next_state <= READ;
      end
      WRITE: begin
        if ((usb_txe_n == 1'b1) || (tx_en == 1'b0)) next_state <= IDLE;
        else next_state <= WRITE;
      end
      default: next_state <= IDLE;
    endcase
  end

  // state machine output
  always @(*) begin
    case (next_state)
      IDLE: begin
        rx_data  <= 8'hzz;
        usb_rd_n <= 1'b1;
        usb_wr_n <= 1'b1;
        rx_en    <= 1'b0;
        busy     <= 1'b0;
      end
      READ: begin
        rx_data  <= usb_data;
        usb_wr_n <= 1'b1;
        if ((usb_oe_n_delay0 == 0) && (usb_oe_n == 0)) usb_rd_n <= 1'b0;
        else usb_rd_n <= 1'b1;
        if ((usb_oe_n_delay0 == 0) && (usb_rxf_n == 0)) rx_en <= 1'b1;
        else rx_en <= 1'b0;
        busy <= 1'b1;
      end
      WRITE: begin
        rx_data  <= 8'hzz;
        usb_rd_n <= 1'b1;
        usb_wr_n <= 1'b0;
        rx_en    <= 1'b0;
        busy     <= 1'b1;
      end
      default: begin
        rx_data  <= 8'hzz;
        usb_rd_n <= 1'b1;
        usb_wr_n <= 1'b1;
        rx_en    <= 1'b0;
        busy     <= 1'b0;
      end
    endcase
  end

endmodule
