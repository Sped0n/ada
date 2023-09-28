// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Sep 28 01:33:20 2023
// Host        : Zen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top async_fifo_8b -prefix
//               async_fifo_8b_ fifo_tx_sim_netlist.v
// Design      : fifo_tx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_tx,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
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
    rd_data_count,
    wr_data_count,
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
  output [7:0]rd_data_count;
  output [7:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [7:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire [7:0]wr_data_count;
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
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;

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
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
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
        .rd_data_count(rd_data_count),
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
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
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
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 127584)
`pragma protect data_block
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
c1+FlxjjbhrqIYL/R5ABKS0b
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
