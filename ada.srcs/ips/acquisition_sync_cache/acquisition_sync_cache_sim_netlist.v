// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Sep 30 20:05:00 2023
// Host        : Zen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/spedon/Documents/eeworks/FPGA/ada/ada.srcs/ips/acquisition_sync_cache/acquisition_sync_cache_sim_netlist.v
// Design      : acquisition_sync_cache
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "acquisition_sync_cache,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module acquisition_sync_cache
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.68455 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "acquisition_sync_cache.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "255" *) 
  (* C_READ_DEPTH_B = "255" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "255" *) 
  (* C_WRITE_DEPTH_B = "255" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  acquisition_sync_cache_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21680)
`pragma protect data_block
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
bokA5U3MRroHKy9ar+SxFfLUdQQ=
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
