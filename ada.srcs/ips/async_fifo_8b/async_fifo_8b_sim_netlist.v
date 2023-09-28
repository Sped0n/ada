// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Sep 29 01:17:12 2023
// Host        : Zen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/spedon/Documents/eeworks/FPGA/ada/ada.srcs/ips/async_fifo_8b/async_fifo_8b_sim_netlist.v
// Design      : async_fifo_8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_8b,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module async_fifo_8b
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    almost_empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [7:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [7:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "253" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "252" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  async_fifo_8b_fifo_generator_v13_2_7 U0
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module async_fifo_8b_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module async_fifo_8b_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module async_fifo_8b_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module async_fifo_8b_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module async_fifo_8b_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module async_fifo_8b_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 116320)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
