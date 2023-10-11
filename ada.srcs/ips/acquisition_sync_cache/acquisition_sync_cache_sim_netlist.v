// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Oct 11 05:19:10 2023
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
  (* C_READ_DEPTH_A = "250" *) 
  (* C_READ_DEPTH_B = "250" *) 
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
  (* C_WRITE_DEPTH_A = "250" *) 
  (* C_WRITE_DEPTH_B = "250" *) 
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
7OggRqFAUJkTqkkD4uSHcwowOBEDF1Oe0BkkldVemaPm6oQzB999JiBIVKx9UsMPuXo4149E6y9n
z1TcSsp2ZAHrziYgVGf/TddsYNKgBp8WuWmXm27Iv1QCcv7f/dHNVhcHZy5wZroh+hPZ6qtSF7SE
tjy6/94Nnx4sx6RQujbfr1TQv7Vak7nvdfuBv8phI9bnbAP8+eZ8Wb3s2oOmjstAml8fxKwgiSFp
neSmiMnNUuPpekoXCcy+5aMnjni+iJi0VBhLeGHDbXUuppsVNRuFs/dixaZ0iG2CfpjVt6lxshd/
Do74g9kROU+TTtkBJ/iDOkxwFnRjYFa7ira/GinzU0LGm55DX2GEgLb3+aKRFEVD/EpAPmfHQYsC
bDFRWxNKqX7banzcRvJo+Zp2e1zVDcjyEhG+YPOgJwsD0gUSy6Zr8ce740GQrYxrAKlfgHY4IjoE
L+elmlQ0ObvHCJPmOCU8sZsoY25KQoWhIJd/Q+DwdQVaYFSDks5/kuBl7zTGbtyTWW6W2y4EWrBI
iDBIyxjqJP88cUwDk/LBRMv2XqG0s4l0Svgz/SO+/FsqP0TNXvWsrK//NoGaVeD4TyXkdWQuYoD3
tBAjGI1zmhJ0hWdjpfA0apEF+DbaXF2wLq2evW4lrQeq6osOfvgCbl3BgdA9n+s0r1kTnAsPlikD
RNEVw+6paXwlvSRK71+mTF5+4SPse01ksW7d5n9i8zFPaOB8YSemndXIKBlVA91J85YQaKlhy3VX
bJya5A9Jg1r0aWD3PCrezXBykItBU06Qmn2oHbktsEqduqAapSvpD/OAUNRH9HrSK84/OsrW0hnO
v5jybj3/wd6rOu7nPK/v2ZBYNkNfoKIju2ia0W2u9BzIgVCIQMSJ56DZ6BOZte9XYiGTWuKqYjUm
iovAiFHXo/intyTDxObJOcQgu+Xl9BjFrc0TmvsQWtmVf82REBi9ouCSi628Ycuf0zmsJi2Tdedw
CM4Bw7dOnXpma3V+vVBoVJMlSZV5KUop2RPdEJp82997kTmpymqjpL28QP56uKrEdeo8avjVcUHj
s5rg1k7fC00jWK2ibYCapOMrJ96zqy+eMDSdEUXHTQ5akM5i4AWLC2zra99OjRvobvxeNd8oiIdU
VnRDNsgA2fHndJNbYdxP/8r603imZfrb2V5IDswLcNBUlFXsk6mpkxLrq5kvIURs3Jr49bK62vat
wivYKPAoL/SKbM9LUJ0mI4FV691cxpol603r2uC0bbn8dgoxex1E3cWXOaSRxj+0gQ7obM/t8L0p
67RtA2OOJQ7cjsLl6o2b0aukkZ6zsDAcsVXRxsbJgwKu3T4N8jz4Glyufp9qJ/nkvckTAOWK6kAN
FrJTRzSEcYDceo29R7gRCjgasuj2jptgmZBkSa4DpBP+a/7cnjr8MUsHFSDIq3lufczA07cwo8lc
9bxmlrl15HU/bZUId1+y98jf4Jug1W8u0Oc0xhVhN1PXCK4WOezonXeycNgyDEbAvaIfg66ardQe
zK7jXdbwqUTM/jQIQH650vPALRu/Fvbw99/nD7UXZUwddhiZXMJ4uVK1nRi5n4qKfLLXrrIGTWIt
O0IglvvQagGBEmV9xz+qZAsmFFMKQELYfESIPDIOJ6fHJOcq4C/drelvJlyJGZsvwp8EvU6FwYxo
8F2gGUK4GKf+wUx4MwahEkfRGyqHyrc4Ivml3yuIDZKugFz0ZwaRObz+PEuNnMaY9XdEiKScbVjT
Uqr/DztMZOCPk6esOpsz843nmI4qR8lBws8jZlfK1DBKQ83w2sFq3Z7inJ8aVP163oRrX5QAKSdX
+nQ15m+AhZihyvtXHRUridjY/5p4yB9MRS96plp0irVPsgHBGYc/yG23hLpAytIV7P58hxKbEMGJ
/za7JomnrBX5rJlZmupvAvfbED7bJzlYrg6VCAEejS9fRHlDDpzO4p3iiOHHW/zlx9rN3Hv7Bfxn
hND7nK9em+4zP8fNQN+Nq5icr4Ikpy03alswBQNtuOB7dtNpnmnnDI3OW8z4W7B8ps9aqEzGahDB
tvnBieDKT+1G6wcBNOxiIVjwtKXzUcBBmivwb9bk1P70mG2vcrnLXikKsjgsGmsyOq+2I1HAC1PM
ni86rkU44Cp3edgKA2v/am9iR2vAfVFg3pIfqR+t0LDnwBteN/xqOs7Sjl6UFek0Q6Z1n4qITr7h
EjehWEMQKd53/IyscnfoG+YmMqDEizZBn9LcsEVg0XjR8WsErvHgjhKTnE1jhmlvbTlyKtVKw4Po
Aonpwb6iONFBYuE4Szwg4cmZgzZ949Cy56RF+Mrz7oVIvssCI34KmJ2+AL/xNA32xMhAWh4pd3CS
kXWBCutb7zt4ZCYyT3bKJxsJxFqi01+ysHNfgNptNT+33F+Am3hMX9b2rVxJpGg0xvWxDUWCsi5b
IwbGhyDPjYWWGtuo1+KRJhDxwxHLsQlTHJZdjsKQeGHQcdxabrp7lpXAR6cBllP1BBwsgOSHOCy8
HvJVsUm7lWWQaixrLbP+GgEE0Fxw/0v9QDfLNFmEEXKOzolTBrP0jGh3DI6HiTH/cyXXrlNc13A8
5lDqT8AAgSbz5jtlGK1oU6WbxlsW4dg8GZSt0TyHSxOz2dLyR8YFkvyGo9uaErYr2roKB6ZEbZIW
D6Bk3DDVsnd+9iDgjmdoUVIzYZ/XR7qA4K4XExDrg64HhrPu6Ikgo6KNLHu1SiuZTv7JeXzbGLEp
C4sf1SiUaokVzmthVNZQJDPm6oWNOjfNBOk+FG3DzAk9eYc34cmzy3LhQS/NsZQdVBwFXmkE//do
Nq4R1ahUX5JreQxSiEFOAOjvb547BbYhdg10nLANiimb77YNz/Kb0rhN6J9Tn3NzQMcUv2iN/8oC
5LEqDzF1cNjHWnf42EaMTjoN5qcW/ua9otBkgFf/jcSa8524cPVDugYVLHV35cy2o9YJJKdrlQXl
9PZ9NC0ge0neDxa7UFjv62dao1IG82Zy4BHRqLXivM4XyPqguIYzDaUEBmiAk522FCljckNFN/F1
BgKpPAhI3XwiGfPpdG8H7Km0FsxoOjD868lL/RAFcFO7I+U7h4sktER4KpCIY//HHvsjqoXAasqE
UN/14dQotIcxlmYSI4ffkbVJKgQPf9H4r/rPtbaa/hrZ4clq6cIq115Up02qnoWLFA7Nh14W+8v/
agXva6xKUz+mtcJ/PbhPSrP2tGhHSv+kQ2eIGjh7gZtyxHauZRRxoIEHaGqtnZu1cebGf0DlpBNN
4wDWdoRIs2IxtTfQjjciO4cc7frsXG+vl8c851lQoybv4DPc5DikVTgjTLX+iPcJt+Ktsu4PK6WW
Ub95fJUc4PK+2VQJqkiL/o5MrN7+brAZnKhniVcLNNWwOJEsIM5RBEi7TrA0lRQPLzc2p4x0mWgn
v1Ohmz4m5EJo2mHajUyiyNjaQiDGxIcdz4VKio5ZaQ+raj1LjHVUs6zLsX8Oa+kr1PSlZqSyRXeJ
gfPrxLvqPXxm6MX77kXrFTaoR+Ldg+86/w4VPYnf5I4SwX8zy/baKV8ACOz742TXLl8KOVRU1X53
gchsu/WqseOUFwLST5zErsBBSGrhHxFHFl8jv4nS3zcGq2vbKpirPkN3NwZSDto5gbhqey8XcYyw
MZ7inwdhQq8j0UdiivMBASa643NpvmktDMW4jsMxgPzNN07VZUyflGdxtFjVQE564zCa9u+gXE6N
e7m8wMriWgH8pafJ0fckl9kBvLMCU+FH+cA2XahxZwZDXe9a9PZlfGOtcav+32DSGmSQyzW/F5RW
xe5TUMlq4vGnIdSuAyoCXk9+2JuxJe5R+pilFLJkxqBbWxtI9X4dyaUqxv5kdBgkcBQOVa3CclSi
89puknNuU5A6GhVOt0PrRceQLayITFWvuJ8T9zzJYvB78NAmF6cFxMXzynwIUKsZ3wS33gclEGeA
gGd4S+N3+pEEU9Bq2aGjmuAbeCNvvKjZxKqJWgjDs+oJe24FLA3VLaD2qoNIFopAl6FocUHB9V+Y
YfOTirR41I7TPYKtpPSY2e1+YIbsMTctHpHe3RVMYtI3pPmurti6F+SCk8DN/io7m/rhOkihORJY
pdW1uY4VRCvDnn4Xgw1sXF8LXZmr0uKgDtz+LTuWavxtWWo2Ek4flljUQNMtB6M6qr1pkgC2GtjG
FuiBZpac4hW2OTmatODesnyZZug2oluAGAFrlCESVifxUDZjLixf91WoCHBOoD/JZwWEt/wz4SFX
gm0oxPAcdHxrjmrZUlOgm2xrnSOrxEu9X28jB+JLTgkZlfppc3sJr5K463g0WmCB9PLXmpWtYxp1
dFWo+D2k83utX7T/LwnvkFY3jUuq7X7KceeoiJ43nSZ4dl5U+OlZlPvrK6Bpy1eVgrghF0vdXIw4
SRmuGdXD2bgUVkHWmIWdXnYVoQVUXnYvNQwL2pKkec19V1Dx5oot+RREKJwglrswOeXRF77OhgOw
frbGNTQoUGTOoO6qDKeKPviqY4pKfuYP+Wb0mcAyLVeYWIpFdonnsJUa1t/4TxP5B77k76UCxGQW
oE+peThpG6+6J2T+AB/RG2xj8pjNiRtXzjgyhHE5ss86vdvXFPukBFK+j1PlYaPpzL2rP4qI6YDc
chcY6TYTECvvAXQHtIG49j9BanYVJLFraCpnvcqA73Z3/2Y4viqP4b6fjtJrRn0PFazv1qeqxTFY
Wh/lZdie3CpNj5J0IeOdXQZQnxlbjH9LLjxqkcyxdv1ac9k9vqZZvw5ePg8rMy157E+tJduMJxdh
O40VQrl770dIPOJsFhKZOkavbNTpGRHK3OZe/Z9jdLtCRPpQU5qOPjv3pXv/ycUmBTdHiYl3lNR6
GsGzFCKpAQvww3epCiJW6pXbTfbEBONWpGoTMvdYDvs8KsRPVnMOAlkXM91qjKBhiu9efo0Cu5dT
FC465oP8Q8+GKshfhC8yJqiYczG+3XgXcJgl5ftiMQElKNh/aIwxNezgFTz0Qh3O2jcrpwvttLFc
PlBzHuaSq3Yb+k8jqRjIUBPjh1CkrfK65RBVjUKUPFthnRGctzMkGyJAOt7wxozDF7l6yiXnBJbm
FIx/kf2y2lx0hrdtXNRwbRW6IshYlOd8HbGSwTRK9zU9SQdZJlUq54wAM1kqpGj3xaUazzdbusJU
XxAJjnaQ3vW4XwVUH7kj4afIhJcwDDuJmmkdDvrQoHca5y7dZP3vT/PecWl3mZlXj9Qkpii8dOZb
lSEjL/lNU/EgWWPKwYLiNrhVSWTDfjlcBMfV6oQj/CZdkfEyLCXshGoCHWkd+5VV9vTuSJm9pwFM
ko9moM7IQgbY7Oq+uv/1xs7jn97iTYD5S7mNsFOIoFmo6mVefhC3Azkm4TpaPkLh4rud9pPBr6xW
iTuaytYKn5PSpnj0qycB/14/uw6F3SRect/1zaho4jZa5llj58a6yZrTX+k/Xf58YTl1seJ6V4j+
3qGRNopZqUu57HU1aKRBhcklxBxt1KJI+4FWMWOtQGIRTWex5cbeoXZQ41dn2hHxzUWMrnSI8b0q
7w3qslEKKv6+D82HqCduib407gpbcYKwSDmP6ggHM3hNq7hOM/5Q/Hju0zbUdUHi4yyICQ9Arahi
VUlc3DwwNDzg7i6LlfbN6ymbXVrpsy0mWAt3IBmLCmh/JbnMOQeutFQbSxAzKqjd+iTKNTMktN9P
DXH/VKlzchuw6CHf3kcp+C7JqGbt+k09z/SKac5P6/mYg2suz4sZdwzvZ5/bLiGNRFg7FsqDiiCP
iq4qdBgf/ZMuvdtA4BZGn2oS70GQWVq9b+OevVF7A0V9B4VsIriEFX/ISH5OSuOIyV7SrD1gslWT
l3kMnrvqdKQ79pq+U/MvxhnIZpbaA+RoYWcePh6pmS9LeX6VZay7EjDX5j7NsoMTpTnii9lbVPJa
VTHkFb5nGkPEYdGXWPwzA6kFP7fG/uChqJMIdw608hIfotmvR3QQruybEC9lgxOzWLbeZv8AnL0Q
vqswVMv+46+zWO1VV1izv55Du656Ym+o4pnYFKPHhjpM5pbCSY0pDhhKl3fiHVwG66d+R9+cS4nY
n6wJzOYRNnBf/3ItxRDnrmsMQKOPD7kDBS+PGlPgU8UT9TKo28KERiE/QxrTdXO56hoDmUx/FY/Q
1rHqOMEXtmpPRRAEOg9AxVFzt9xaAJqANMZ7ZxfmLaD5b9xR6Gx+x1lhwJbEyCb7RQv3MHe4c/vS
WAuHMRNpuYbv9wAeq8BgXcTDfAtGY6XdR2wDhZ196jyw7zuzHgEgmrFbklU4loqSb3kxhShjGLII
+jfxFZrzU23HvhFsesMfNmXGa9xWi/vVzSWhoMvK3rY6M+BPEps49JWt0RqQd6SIja6C7KiTiYgM
AOdDwwHLXcwyA1E7iU5HHQf42/mPUwzMgB3Mj0vK/jekdbPq2kEl2+N+vOVGHJzD3ZA9pGuATWPY
esoks/4q+WDSJ5B6EAOOu1m7qmciVuCEKo+el0+fChYTqBGdNzhFCXrXT4wk/0X4XQSe3Ztyur8p
NmHZ03tdlPMfqnSFtamKYuH5UfdE9/DiMjr6pRoYxGK/j669rWliEtdyJ8+HwbUuAU2wWFfA+TBG
WQbPYciH/jWHHH5CbPJL8V0xaE8Lq2HRfHXYD1OMGTCj3BxvnrbYNF4ohoSyEndGZ0Os9mUAa1XT
laV+SR4S6JXfRYx9ME1gHLrnpBmliJDZV9c67X1cD2VisN0CiNAeSSmCA/r6CBYCiMpje3SzD060
t++JfG97SCbeazJPKrKetDXR7Zitb87+gwOpixXz5SRZH3DITCK4u04vEtUVqO0bBCgD+61I/5Dt
T0G2exdWM8W3HhZtursdtf0nIKjTxIy0HesYkNdn0A0ecjxz9eFfv2N/kKw6nTeaCpGMBPJ4Cvm5
merzUuoP4EjDiZIN3zLeR7qmhEPG9DvtEKLMZfp+CfNWWnjAV/l2UiO6zFD6XyxMAPYfzLeXt3uC
GvUQwevu3zaVicVERElDACAVZPbchNhGZvCV9TVTkvMkXrljPzU3JQL9DmNlxutmodCHsA5MHf2W
VEofNJJsTMbUqDNblGiM4mtZQDlBMa+yzxLdLKWDIvSh2LQdtiHJOh/EEO+uWF++50/MAW8f60KA
9WJNX3Pjxs4ECw+NJluWbXt1u+Bntfg9NR7RhpqrDxi7iO7WTFGwATpH7H95gc6jTu2J6KSZClAR
98AXTO/866UXyCWXeREYlqerglRWNNSNXELnj+V20sxrnBIl3vr7Vy/P6T5BsKYr3vweJfMYjoRw
z7RjeXSfB7zPiZmxrz0F6PY4XIb/BZdzWF1NtWES9paqy8LWVLc962wqxfF1taLVDtPzktqQPPEJ
CVI0UmT592qelY618pWqz0Aodh5fkAUTExmMOPqYYsGKj9ZERVlNdXr3mc6FsdarBz9A9TfMX7yr
I765beEgdtqZ7wZCbN61oAj2PqbJJYFNJ8v8/VG3Qapmf5DpuuJToNs0fOPO+NYvO+Tobc2pg27p
mAFGOj+60DXISaXI9VFkz5QBKZ1iUv3KeR4tu3IRV3LGOpOogc7Py01d+IU2Nw3Pd3luPizt0MLI
bOyvKBSeH2ircxmS0a4h/AERQNt3apkwBqOR24x1LDGKVRFbAth2fHDs/VJt0js/imFRmaskq1yc
MnPgnhfrCcKhz8fQg/i7yahLaOY90cicwYhX/2BIGxlhKJyyFlRqoa/lKHlNpErL7WhACAzn83Jg
CDgC4I7IRvda+R5hTXmVUphIGrnQH7noLfHz5LbLHHie83w1ajseRDDFseYafNzIRkKpE0x4pP9Y
UfrGe4kHr8ooJ4iKHPYj7SJtSuInzkYPt72Fwt64LwF1bNPWXVGnQNtNLtHhN/L4LfRpq3yWo2QQ
pW0dzhFAnhYofatqIsSSe7weDwq9F+p3w91JNPRoeykf3B7eZ6LZ7CmMeUydjlIEpoEapvWgvdt4
NzcwKbmzcs+1b8Hgj/WVkoj+kR1h3sBvAC7vBGmILzrennd/UPmRIewapKsL9Q2pCET8HEimXdFB
4eqnoO1MRKK7UhhCRYkjUCcXsqOHibn7GT6+AAJacLjnle7wlpuznpfXbOod3MIyNysg2PhuNX4U
VhDTzYjkNWpCsF3l1kqfd1ttTmJZpp5cKv7waVtpE4OhimRCAsUM9K+REcp9HgSjAOfSp8yd2QYl
Z27Lm4qUrmTIFyRlV8lGtInaq4DRVpViiFpOikyhflucrbH/pJYiMNqCc+3WKzD4lG5zht2VthRy
l21IgwtibpIPdj2nYvtHh4z3/4qnQkgEShAd+o8LEKN0H4t7417Nz19GWf/bRsYyHes63mx2Q4nk
KIv1oq+6i4VZAhHoMc1sGCKPZzL7feXXmCEQpCsm/UJD/Gs14EnSiXAsjGuJL3Ni9CbVQGsEyM0L
4YX4MpoAuwiW467JfN2SeY+6x3yC+ldvK115dNj3AatNR0uBX6ySmfnNNB3uqMTDji9BXtxfmjih
QbhlE7zffN4gNktWVqYMU1oN3TIGPi0YlbD7BjGRoWJk8H2UZBHtvDUqQr/PzPstRvMAlw7/vj6h
qp/Kl4dzCB9/IXGpdQnRwU6N+oRyko0GKeI0aDhaD9DGohI/rRvWhKw9EOtrdlq7SYmzpqT4EHLK
YtivAw1LmXgccklg23zUtm+8B82oVhZ0iWS6NdU+y48ou4sJeZDU6cHJ4v4dbbu+Dsg1KrGBqcH8
+1zUAefsKUGDDFMc7O8/IOPYNoZiC8vEfwqHloKACXTh+UvyhPV6cMhICyhtJ5ecB2Jdmgu2Cinj
9ECsaQKpwWRDFU54+amna57+khE3lts1fWgtpvHwWfjd6E85D1ynJlzdmUzTuC7Djrv6KSsrnp5u
rRNjAvWyQPPZcmYfZE+Uo5i1qf6hwVD3590tjpCWAYixvuUSxQPyBJxE0NRWeT6YWpACOl+9bwLB
6nMRiE6PpUzYzxDAIb89NIKkQOkiYYcTHoSKCoTy5XPtWvg/QGq745RjJ6XKB+WRop1ZEjo8gnvW
Nw6kc8qvJb97nIyrBL4U2Fg3BgNvLK6wDwwBis8R83oViabuZQDSntmxKEnSekovjNQ5LouGHH2m
mHQ7xkc+jP8fitH1YK5k3+o2AbKVt6Q2V3wbiS6rpk0r7AXJx9wVaKVk71JnyV+8o4lLXp/HqC4m
xG8xo6szDPK10oKnsFKKe0DTo0cwJ9CPQGXiX1LPEChpDYvY3deQ/Z7PKVTdX6ttZg8nY4QjV5YM
+rgM4kM/DR2i94qkfAs4USSzcabI87nWbl3BRFzXs0+npWvYPwoYk9SSFbMM0wOOC7fv/4JCEXR+
BPK0yNx4qu/3Yqqv3z3oAstdenUGsHromeEYWOj12kML1X6+ECwJWKU5X3/hk9OxaXvuuxJQ8omE
4lFz02a+OsZBH+MlKOqTpWvU1HH2C70aeXmA8949eoJXVyyRrTa+QwDofivopSRu0ztr2RhAJIMn
R0qV0IDL/S6HKqvYXpt75BiyzZjk1LdPZ+9IPVV8zWAqNwGgUajmQ0x9uUsmPRlQf2Q2remZdP+4
w0CEi4iH2n2d6JLNJjunfW2BQLDabOpCMT+7N9+Fq5VJE1qeV9zyXQTjhmJWaP0r7zu58PZmIC0j
u2z0mZOXxfOM0zV5/mV/jYYMHr1orjochm1qC0jn46O+3ItiyOf/NmKZQ9tAAzsrt7a0C5AllM4M
y++GMWYk2PKvmhocBGnQUVqXbaXC8f4xPth6H6uDGu2GIK/PT5cAhKupL9x0AIn3ywPsXikMKI15
Gcu2PSo5I9Qv3Rp1JoMq/z2w44dCd+kJnlzWGMewZYSovhX7czTflyhp57+Wt3DlkQBRqflUzacc
x0w6JF54ZTllXOJpHD5ZVR5Da2TTcOxk82qo+26pXBt8qib1F8iZz9TJkgXiIgRxTCJdxHkZe5UP
R8OUkI0j0eTfqUTMP9NNiXpSBMJYxjevoQ9M11Qih9aT8SzoPhu5k9K1FUe8bh9MzmefkyFuXFZ/
dHt4ER7sNI3o82CuKrPPPnz3QQb94d6KB6Zfg3Z5EiS93Ib8++IP6bqTlcTtWPvvv1UVr1y9LgYy
eCxbGPAkxDr8SqWEbIK5Zg2G+k6XC1hP+wwrnwxkw3k1cVDvd5oOrS3Phl3MgpnpFobxWM3Cqgqf
QghUxGbcduWTcXrh1L/GyHqoLlsBcdKdhv3G7m0tpr+XAXRe1BdIi+BUUgacoLp5ojUF4vzvHJ8X
VqEiLXpz6TIMLxESNFenA/oaOsfI7qTrXAd3ITBsV33FuGEsq/3uRJkPYTB8Hoci5JckrZHaA5vX
XTvynengREb4rqQQxeyq53zvG1wRzjpQeGJHo7fbZYELgU5iIGAGr9CBdEMevRG10cg07AUUovSM
+2bB2tQgXNJqhnCyLCKsXvmA6mOwDGA5SLsk48NpQsSj8rVcc8p8foMRqVegsBRGReShjoGeJWy0
7Zv+LmI/uh81DXitPpHMvc297bkdVn+BdJ5uJEOfLhUgfENcYCjSMTj3gZmcByCL1zKQonCi+Y+3
na9ko+6RcyarHlQ8aq8FYXBmdih3HH4Y+wRWS1RopRMB0g8Edu7mTLdqmIwmbNQ1MMQxYSKy0Gdg
iK0Q3gwEmk/nh7K9Fy8MauTSYXM4dG2B0duQDwcEB1nvb1/9grPmvziTO1wje9+uDb9TBue4VJcj
PoPaLFLejQgxWpJHysdlGV6SVoOtNpKF4HrF7fnTJF1DsEnoeayrWLAOZovL5IGuLhWyKY1xbItB
zzwOxHAnbP5AI3ZDF5fu0ybjAOilT0AkQEitoCXakxBmoCGg4Lh3tj+gaBtNdPETDfrFROc8RSbj
lnOBUYkv4E0kSHTQYPgzPuke6mANdjBcb3rJI/QWRcC/68W5QOIQC6D1RCAE15wV17+glgowWmId
LpdJDsEYnu4HGaFoihOmTxfRAnKeCoIQ7ZZqjiRXEKKVESaHfG5flhE22Zi5YmKLJFEzr3iJRs3y
Cx7PQuu8tS16UxciyP8+ZKN+8LAEC7v008vI+Vq2l6LjyT4ARX8Lgq7b+zgUFDfxvDGwqMeyt5gr
L8NjVGarz/HUhMSwJms+V/LpSI+jdOKhXnivfoIkoQrs7ytt0aodiViHqqbWyJwDcYQUnqAjPF8l
1EF+nUOWuIesfl+l74072JGYSv1nedMJa31a4/1qGr5YcG/+jBygaN0lzwRvAn0A86C3sRTnbMta
Hjc2pwf3qcRP0vIwrBNHMeDY3In4s3dI6URgAlPkBxl3biqqh/xIayTprRQsTDgCXC/cXR6RW8eQ
VPGqIGPrTfijwHUou4NkPEd3fqJ0x925CcT9DiuMHA4bbceozmm5tGU92D+J3KpUD9VTPehlCEUy
HUnwHY8dLdDAGWgzS8jk8Arl3vD0DgslpsFTugu/MnO19soB9qU9qulZ9iWUgelIoS+WrBbK3gzf
VYzQB1xugNaQAQmSrJWLWh49wcYGq96rDgPz2kR0/+PA0kC/DWfIN/qYL8h/4GoDuJbg5lbsrpJt
J/qy9hhrmOcTxkKkxlmg1ra7y8OO4kVTkUQZDGa9O4sgsaoIzMn9pEEXfRmZBLzqVh57UxCEB0zW
cDDlCJeAL3t1AfT4c/sfs+i7BQSsSLJr0XsnH9+1VdIuh/ZUgd67UYRMcxi6zf3H0Ucv9esPvaC0
DbW6Cwxa5K5VKMWzYRVrCTQElYjX9tOlIAEtXXgVF32Odo5Hm2a0bB+JExQP1S2SLRGvAMLCOKDw
PThVBf8wpSEdoTAHkC4pRAtf1tjR0jv1aFGplEBDNmbYRCI09uHhlHBz0w67PTK6NvTwzh496B3L
WvqY1HLo2wTUFTLRhRAbVTmWI2GnMXd3zluKNuq7imhXzsRXx57dlQwF16m7/JIhz7XN9bhSUnGL
nzQIVke9SA5YS+8sk3GL+PgBiZnHSfybOhg1KYJBAfGJuGy9vRaq58Ho1WpLTVsiTb2sVrI7ytEQ
QELt9puAAgCYrBo8qmMjRU+Tiv44YLoloTMixthkHyV26PAvBZuoVRQqeKmwQMApdgfhuuGg1CDJ
21Bcj82z3X5xzEJah8mGQH/ULqxEEruHOmGaI9SbjEbq0qP58O/uSzKDqaS8eFQIF661tkaMSb1a
2ohs2bvBuhRsixdP5xyJGKhyhNExN+wgCdfGRTF7SSUC/1EiLsEWY2sSMeEkRLy/vhcs7Dwr0UiI
UNm8Nbhw16zAPdlDAoaG+jJWLwkl2PRMHtlFAPmYkVLRdPLnkzIdxo6Jws7NO8N7bi7WIFOXCU8n
ekW+sQvQ/yKt+vnGMv3BBRhL9dzBFOH3mGBKdea97yATTFgcRXqMuyPVBeX1FefsXdhh6ZFKy6NL
qwDgIZ8OTyU1y8LnFmoGxTuVTwt61jbJoa9fanQZcNXQWyBGr5Ny4rjnrdKkb/YSaDYSNNRkfHrK
pjxC3unca4+VFxsT9VvwOBjczvu2xXSNTYIlQ4xkQb09SO01pCxRwf8sKsYM+zNcUaW8ABmaP9C7
L3EyVnkyff6j3FCBySmBNSFoTWtLnd8WdTXxt0RLE3EUJNPA+RRvvsaTUwCEJLWx1eWP4iCRTHOm
8/wKx+N6GZ1k5hHsZWmjEGvFTQ01cUg/U/F0m7DRQUMDOX4P4mbZhlZ9XgETozkPbNidz+USrdGL
GeMpL0+oq3eqmvCX9xljUHoJIbqAX+xRAjeUnvOFHXvTvEdV316Ay3M7xgd29+aMfFcMVLVv9RPL
FYSQvr0YahUa4tzmJNNVH5cvUqW1a158AOM9Yn76YcuouszybTKPXSl8dqqI995Irhyh336+pPW/
xS2w+ReCFeCwRelXc4iczyNZ05rvhWqwefbfON+F5SKlNp07LcMQOex4ymxAvAbX7v/PAqB3Al4D
gbRjRy2aduUvHEZ04BeYSAl/3W0GaJ0GutidsZL03h/A0RRWEOVMw8ZnWx7YhDJ99jDKv0CtBKON
mkWSG3ki9J1gQsWbNk4Im2U1JyWtABaiMVcyEyYp5EjhamwcFnagX7Qu/GQSHfvH2t0TR8k5idp5
+IGYJQTp4MwNr4ku2Vt/WzFHKr8Ep2CfkQa3YgoULUNYgYV+mkBbBy0d74eynO8MaTXRmew0Qi4s
A16bcqeuQrfAG92Q34F5B7XuaNV30BQmb2VyuvnEMSgw9ch88+rmp8OrPemU9L/4Ih73yURYlILi
bFxKA7LMvlFqAKkjWSP3p2KqT+tht8g3uUOXJrS7H069jNMNDRwkqgo/mJuFNWCe0+/1K1M8VytU
kovliFIHtRZ8s2+sU39teLBEf/LH8ENmwulDIjR9KAzFyc/3Nobwg+1jeJhVjUrYn79BsUQlUSPF
QZsbsCaub5J+nNlY7GPLu6hEVSmOTMorHpQXA29zdySU8tDHql8rqUBr5ZLjUWccTBzwhiuzJx4H
dvFEuWcjBDD6V2xmzdX/badkpQyDg3ErJaNwy6qqkuVD8S2tm6pZedltFBoANc5h5jt8Yf+PFheb
MvDH2xmPUpVeDgNpLuoSDhp3iaAgIJ6MQv3PK++7iFAolfQ2NCULoaLcGEx9AZF7t7EgeFlIUjFC
33usnuRdeQxuaRWHH48m9NFrNP6DDZrcQnnaT5WDz6w0Uh8BJtROEqSg6ATzsU/kDe5Cfqk6AXjC
8KeT+043sgeIYpn9OmNWi4YXsNk95PQbITAvyMFP9M53nORaOZNj/D7Dmq5Tu1B1/UMHddlAgUVY
RlJFgIVjub64sVsRbC+89YQtL/JSebREhvebq8SK84otYScoGPXb8zJQsDVwmh2xVqY7mmdIFgi1
t5q3oNi2ooj6+vG3oyBTuUvCNeSuT10dPalwlxQdZv0ofjRIxdeDwlZ15uKepHtp1b8LuxPnzwq5
UoXGA60M4P9hh/aCAdjX25PhIeCPjRF6d1LXm22nGxnpWHOtEba+dvtpGWhzOOnlZ8NfuFhTCPF+
Mi4Fvz42tg3M1GMcX0cVHPyw+ANuc75CSMvECFLD82XO9NR6A81rukbBgoaPcbwqmuGtfNbh2AKM
5tT4KgRMQp1ifwHc3B0DoBB6CUNqRWbKkNiFzDcSIjMsEQT/HgueA5BSzW8SoGXzN4NwrVC4jE0d
+/ZIEm8ieC8C2PNwF/RdVFd13YE+33eqgBNPqadxMgMOBnrsCKl/vUep4YoQedkPLvGvgCvVJu50
qhNq+GvS8pjccdm8zeiHraoXGeEmA3iXOue4D61CGavP5h1Yav8iNwALO+Wkewy2Z9ffV07f5e/N
TQX5tvhLolHRKlfhFibKRTonbEtjSxl1BevJuqezH2O0eHSohW0bIn2SvzHxpkc4cWkiPaUKXQMn
KWdq9r/a1O77ZLNWSraJdAhrc1cyOYsVgqAtr41/XvvdY0oG4bJDnOCRzwHNZApWzojtgLXJ4Vh8
mmZl0Ox/HAD1932hem0D7Kls5YrZ73PpVtuYGCDhTMdEjuY6sUaBe2z2Rzhmam1vp95TrqP61Y6u
Fv+3uFIDtcWK9c8n7FNrjIww9RwGSBgCsc5o9+qmJ+4QE0DNV+hmeWsykQZ4c1S1rz2x2mUp4Zsa
YEFwdBlkD6wuKZqaYwZZrpL0XJ8GRkykuPBA+ACQjeV2JHOq9K7u3z1ycO6JYzDERdzhyYRXWKr2
w8y/OoEtPuKtY8qeomYu+ZFrEWHlKcg+YTlz6uXfV7GcqWnLfPXzL2te0SBlqcQ9geF7eubBg0ye
pW0bBciWfT7X+fhwnm32ZscekCTQPYcggYmYk63FLlizNcNv7PXuelTRWHXxclcCFZqlHyB3trP2
BmoOReujDIIJGvCVFlPYCP11MSARdDvcIp1W/UBuI3vC32Q7zr+eYbmuOhEZwfJb4jIZyZ4ZdJqd
7cOpnO27KGIJZOjqm6odPA+xH66IojL/gaOHi2x0AkcYbtW705QUC8jFzWrmH4xCcKrYmDWcQpmu
eiM0VgE1AsAglcaBOMIruq3fP+eG+yUbc/84CK+2eEBaJqMM/lD7+bbGviVM4zulNhum7Ehd3R8q
lV2cuYWABxgbndsyPhuBc1X45Ud2z7UPr7Dj5AuiR6MDAsfldMkRjgm9Ng15S/JbBkVTF2uItCy3
W2tY9aSQ2FG4jVkJTlrBOYfLgisDwZowkCbw1Fad6oFChsdUWr14DbNkuR7c/Mo0DwuSWGiHP0QB
iUqSYB2sLnVug4XpFBeIVptBoOQlRmP+Lc3OYOCUzNQfS9PNwL5sQPdeTlYYniFJdlblQwO4g8yl
yUSOTcZfb6TU/zeNovrglVotbIZRhN8Di06/GJawhN4G9DJb0Q8zl64y1dutL/WL30TkiKHXbryb
RYVwbIXsUtN1n4+8LSxGCmmvFZWcBk1OFnblY9peTsDRKcL9tDChZceYBEpV/hqPU9PwYPxEH1/U
5tkRepSD0ViPSTXZ9GM1919ommrqVojJnw6xxqadSbPPhyFnpzTibHdRtjzV3t8E7VlKLz5n0/Ma
vjcmZtd3e0RZ56rI9CFnXBkfxOAsCfG642ND4v/a/7k3Skygdd4e8CgpR2fjRJlEpm81kJtqNiEo
evO/gigbjPtnFKlRjcnLCulbMBLFmazKydWHBbcF7dnGtgjniVdKM60AWuGISgimtOXz7ydbe6rR
H5bQ+iBFe7uyXuplQWONdx8Pj1aIzvJX7xhWIbTwK0PEidJkD23TZlvhw6pE/gNykCKlmGjs/zFM
4vDofhbG113cjX/Nx+EEShtaXriS4Sfcoq7lk8J4b7y060ZKfxTxQCww0wvhtQmrgd8Gg8+6kjhA
496WeLbK8kJY/ymLgSdJYqzmBjFHLjdMV/TDIrV7QSY47rmMiSgIUoinpG1LVNMVEUD09TlTNqut
aqwYs5GyI/qdo4GXv2vvsrnvyAoHqG+s4yiiduYM0Z7Warx5brC/m13Q5Y1h1udNiGC9D7bF9FgN
bsYSVwz+acrGNxwrtD+Q17vsRlOqE/GoklPTxufR3wn7Jiz4WeRMpildObGxKmbz0Z0CazqCFMM5
kxPZ/I0eaSaARs6ceM53+aShT/CBzhbZrc8qFAnGIN1fiyLIsXObRaP2xSAwIwZH7WruS8SgbEcb
4EW/vaVak2J6RoVhtUKqsUnerDF+cxICCSpD7druAVjH8LeUsXKSqqbgdmNHmCW0r3DEc6Zan/Aw
DsbMFzS4UJ6aM+DjVLIKr5jlgAHjDp427F4hzG23ZBwFmIJ47456cbvwcBmOk18jfTxGY0PZdlwF
agmUm0QoErVVIuCcKCL9mIPyLc+34I93szTiedusQUFrce0+dHFChKWod5aw7xNs1qQgzrhQF9MB
PSDnQyygWioN1ZMQgeCiqowKFrMkx35E76hWv4Zwy6hlf6JOfWk9CmTIP3IjuzYwHnYV8xpjb7FW
g+4KnelHbVGB4A7sZIdcvi1mxxhX/XfFaFoVhUKXrzvRhxTuf+FAdlTG0XBuHkcclvKtXhp9Mv/r
SbcYAp8q5Nx2phsSxjpj9ZXxbOOTxnFit7Fhpx/1fGrPEgam6wRJXytfPEwrY5dHnYhp++orMr/D
h5lmM3W0dJzU00X82BWHgMdz851x/5WLKG5SSLQchXbmRFKFU4TppDdSH1U1r7pwH+sAGL4mWNr2
tbeomZj9nT7+bnsuklGgkQxfE63itcAP8liJ0WlYaqWPmmg89xAb1X/GQPHZxOa3Q9o8wXg3EitM
XvXyrpyNFXb83Xv3/SA+YTbpltBGZk8axJRRHxa2DXb8hmXCXYgpg2dpPKs17VlJ0x9g+oMjxYeA
mkrLEaRWhC2b5ukiFT1LeX8GJNAy0QFOA6M3dghWApGfQwdEMT6/w3q6Jm9JFd8FvnDctvTUP39t
36bRzfp277wEK7jYESkV9WWUoHWHtM/ZxiR8bnvz9odRT2eFVDZFUz14YI3LNrGRPtNLiAYDYK/L
K7BcqEc9D1mOc7Bumz/0lcqJaeK9vbIY+oZFe78sdLmc6JUTRTt3Ypi5h28k7uNAN4FugGwn4aPS
D5oS2sqBcMBWsBKvWUPFuacI1a2U6b6GiuHXiF4RsgeUBdVYNBKFdo23mwSJX7MqYt5I2riNl5yh
feg0AF4U7lJfMvvFkTCfd1vnQng82L7TXr+0HpMiA8XvjPR5Erl+a/G41TEJPLVNg81RJKWVDtFo
2qDL8lKQ+ZXONbzoDwAMb8ld7WhcC0SlG7f954MkioKCoWEFVOYDqNRi7W84rRdsSx1THHerDquy
KrD0VtP+AGfqxfOoI1B1Vt7M0BMAKPedQT2Ma7RELcO+gsKReNTthvL3eXZzT6M09Kw2Harm/m+/
AKFrtldUdvjqj6Wx4YgxXtqwlFAarMWAfoWgWxqvgFt7UkCp+05NzSTwVqtMsOd99Ihjk6CAG9AH
Brj0+dboVdXR/0ozXhy2qWZCDajSFYd9O5UIDS2EGLhSBdhJV84a3EQ9FMRWjwR6NA3m4G3gzGZq
6n6R3xtY5ZUWR90mlfG53CaFxuAA2mqNXv340NO5MzW1644r2x4b/pEoMONq6ORLiyb53uXss6WG
HIZU6b/JSKOhBf4pp1OTySFEhOTxSG2ZSEjyegHhSKqAUJTxuBiSSMtGpJ4MuhLcbHNKvsIitqVR
RzEQ+ne35+ucbNeP+Xc/VICrkRNl+XwSSyhGVcjw2UBYdMKU+UPRe7Sudt7bLkl1zsIfQixQQSE3
wNBtIcDa+FRuG8AI6L4Xxcz9cVXRjzf9Oe3I8uTn5zC3uq7IuiqFlytI/XqAlrxvJO4wKoxHEKdl
PcIcry3ImmUpn+cqjnoT7kkr0Q4h3Khs3WE1QR72NChWPOBidKZjCv4eLBSUdZaEg0srZk3mB5T/
xFgjjJZz8NoLiIpyEA+cF2aeIMRyFMVnEJXG8KvVkmXmh2gIWBwx0O+xzmR5ye1P2zN81ECJbvRe
HBvbo00wvaMnLM7UAeyC92CVXxcenXgIgHJcNReQop6VGbbAK5OnEfzI5cmMEOSEGn3tpSRMZ9Ga
4c7ehOGh4HCb63jUpoYCN7JcbKHkp7YegvSlViTSUagGJByfLHG7ZvR/kOjuilshKehXaaLP1D5m
MFqUtl31lt7skNTiiYWwygQcWmFq1PV5uzkYt1FfCXzJ1UqlhKMHXElnpmQsU2kY3AibzvsyBsl3
cExUrp6X+tbjG/KQh3SqceKu59sSv+92KBfojXnCsXBfNKSKf7TVsdcwFBJrmt7XVDKluPFdCYLL
sAZeRSLKJnCjEMkV6xgKpG+4PwZW7lIa3bbY1COehNtifNBHpbUvXijtpsNYj1po1QP0IESrWFAq
GZDa+Az+/BlNwjn6ryYbVz/DDO4tRpyfR1t15I6Afk5XTn9UvmoMu4djYmV0N8ntxprT7mq1Z6SG
2TgNm1VZyENyhXIkEK6XXzOyl7Z4wuYHu59Qw5FDB3dXsMOMZ2KOapi6XWPa+vdWsatLavjmwQSv
RzuprcCYHuX8FaKCDolaZ0iDdlLrh69Dd1xMksBFl98wW7OF/cO1IJgtcKXrxGre7oG4XnYGBnEo
UHAuDes/wNFyI6HexNFEQBueVxlRUS2jjzgiItkSEoB07XS2rwaLRcKqLLgAfi/YWHXFEfVvfyZw
N9l7/d4Rc3Uqj6TpInFBoyRFEEr6Fpsb8aC5yHliM6EQtojvp3qBahV8dWG2gjV26eStoiPOpnsM
dzSn1bcPiNTuNVXS7FbM2dHHzR1AtjAqWDxuddYmKn2GHbZErgkwbbuVM3km5nfAdFVx2vO9XNfa
y69me7LGqMvU/nVAsst25lAI7OKlpFJ9YSej3SC0ZDca4kHwHc8VC3l7sI+hE7sQwLMoOhNFBHHt
rxgITP3TOQuYA0Q8jybLkRaxSzHMgnCmg7KP8grs0fo8GCpCcxQaRSWRB/pWCLfhenkBfdgLdGgu
iW6cNvc8hq1L9SyV3Ei7olobVAIeMcyrWKtoM7Omi6NiOI/H0ynXXgW/P0wHU+RvT2m022sMii3P
w7ipVOOJMx9ijZi2KdhM9mll1f7pY4iiKPcNiwSdj6CDtFmvGRt0ZCOoMCtqJJ4yYToVhuhKR6vr
/TI0wwh8UMEmv9hHfQpHKTUb5X4uIwJvRYCVS4YdE7sJzDtUfStU0nkAPBq18AbznqsWYAwOpp/p
MRDKptK9x3kMd2LLxxCa+K0zUqVhjb46KzDeYgOANuAdTxUPVAcrm4radGYRKuLfCBZOLPi3VPuA
94i7/PrMma78E9D9FGDwLtRTkXC/PtKAMEIRtqKMuhMN2fnJAQ6hDJXv33LKnwiscX9dln0WQFyn
6QPw0TywiaDoGTfasFTwaEb64uGXWfRRlD988/Tm+WquNN6BYM1xnB3fFeVn362EcA40C7gOm5R4
R7CfPHYWZtXNGzFzej0yJKgXf8k7bszskrZlN8r6e4zOZO81aSpwdQHbWesExtiOmpbt3Gy4frlY
sahREDya5ommB8u95XnN4tiH4sOQUDGrhbUMRFDHWTnvEepIlbSx1N/s+8rzzWi5PpN63jNgNfI2
xWu/UT94NCprMrdQXiK3IgR/BcX71dLRsXFldPJW50LE7FhgsroYDM//tb7k/G4tXnRfxQD2M8qu
DbwXofg4G8B64Dovv7AfC7NTay3ObJDFBZUAe2MI0lgCdRQbo6yUYTYCbteKIN07Mr4MdmvxAJq5
ZXfj+0T8j1Wv3dL7z1TPH4NpMao3OsY0GxRcU/xdlJ3NQo7YzDt4057A7vZk5JxePuV0rYmQ8ySt
dLqSn/hzuJRXncirYlIFkIa5N0R4mlVl/YIzezf7l8FM1+silgbpJCyluSTPr1SNJHnAxAYsVdll
0lTZ2iikncXzjD5jZv4p5CoBsP4L+9WETReY4Y7Nt7EcxVF1Rp8dpec6qQp7B5un8YikR6QZ50Q5
82bREZwm1kZw9AT8OXLjflysUf6RDujtASBfXpyFcjsamqV1XFkPkFkKmZ20MOUtm4Z9AeXpk21X
Ussy0DrGfzun2HNQWtxuf1s6QYi1Y1Ij/nMR14O6mJJzrw9zvi/CMMdqXW6xXfIfweixWPepF4qI
vZnro6cx8eE5ZRsRUouL/DUpObg+cYKLIE9qkN5wrwqDYe4vko2dyf+ApBPn8ajNm2l3gVo2DWBV
jtR7Ge4mY/dtsGYHprtDMmNVTUmk44D7pfmljtNn4Uh+bX+dvhcoGzqjsPW2AFu4r4KER6BuRLJX
m1XJp8xtuABFvKd3GSaHMUSjCbaxgQOa7aWpEoWGvUeJW0Cy2SZQu8HVs/2t7I6PydbbAc+z98RA
Vb4Y+eMlM8SUCr2LgjokV2iH60ewzgbdY6OdSqWGzbxBbYTJx/N+PsffEmIEtzW1yhvWoHUQ4MB3
DoVvnQ063njYkvkTMkgi24MMKeyyW1uO1oHRi21lruGS9CvS3cgwHUXLDmi8kE7tMyma1SRmO5rD
f05sem8qc7X1S2tDEhFkdT59ea6p+GTiXy4YjlVhIZldAE5WucGXP7j3xjgBNiBsSNZp2Eaf6d7N
p8zAL/kxRiIJ2SOblj9IeM7ASBxlBKjbxbbOa9tPnd7/B7fIGMivlG4XOqfD4SYg4Zblw7KcqdPK
Z6oJ4MiZVMSKD0u1V0bvq9mvJh2n4oFZI/gWXI/YTleI+7QwBp18uzPkP4nfzH5llUnQ4ZLn+u00
aMJgRbAYgahzVRpJbcSZnlpogwwCqtZs3wP//RjZvd3KOEMYtphWVQ3I++xJAUpMKCPlfDp6YJTg
3AkNMqsDlGjZq2gK5/A3PfY4g6Hs9A0FK5q8oEOB7j7t0wZ1Dte4bIA2S2TYbdM1ZfOgfFi8k0sg
LqMBlOjfPZyXGwrIE4d+esYGH7LrnI0HK407qFRB1Ny1G6FrE99sla7xD1dRAGsY7KLFwgZNzqK1
bLIE140gz3NtqgapkKGxqYKANrRf2vc0NTjb5QCxlHID24TNmvJt5KcJl53Wxj9SDHaGrks1zVWj
ZGyEK3sSkUH81bWBvmVD+gDFZgJywwQccjJiuwf2iWAG7fRz7mITg8jKtnC+Xp3E+CxLYV9qMQbi
QJZ17UR+81qPfQkl0zpIRBcxEH9cpU/eaOYIHdVilwRNtaXcEjFnUhpotQs5vtfhMVcD5nacxhRg
uTh1UuvtoojytdeLiQIMWG6SMdON7lN6cXwyj5nFSmz8Ygd7lKTEWhZjiRFBO8b9jROUWk3ojzqd
3BrkqXHoNQTqiNOKIJu3cYDA5y7ghjKkFLFurmqHAOireNjb2KurE5nxPodNwZ49LRidc2ESV3x9
+NrTmuljEgYHY0RpNhTGH3hfezR+z5cphsteBQHe0OaGAFDzDrjwx/e+zzue873ajJzEc0G7vDPV
3kNkPI+u91mNcVj5ff8/Dmx7yFYuvY+NgTp1faa6sYu/Znl8g/xTUS4msR+A9OIIxInMu61OTELj
U7mtwknvMht4nDn1Zn23iXlYf/UJ2CpQDdvKQUlvlkFtpCxoWZEPvuM9sAe+TDhzZgfmuzbYR+CQ
3p5hO/pkkWNp6lBl37O9sbqefKbKR3CcjnzWSI0KOrjBCaudNHpzi4aymBQXGWr9JZTs+eA2LW6m
kutbGKEmZ3pBYlpGv+cXbTKZ+dLDueZwtExyPTc2ExSndWVeyPOdDe07vrloPUODdGmEMDexW5xy
nva4MmxLmGSy//iBXjVWayk031KUe+3vnmPEDR8EAej7JwIHAQQxcPU5czzH7g3sHL1i3ZuYc2m0
/TuoZriytPyPtiyLiI7cvS/NA+UsbPMH50NKssSyit7aB9xwyGTNFO/izwTwMbaOaOp62UDJ6L7z
f8GyQY6gU+IbY/IRu9/632Ksx+CcTHRycc+h7YwlF9lN+NatgzzqcnngMQS7l7ErPavSBTA1Y1e1
wjlAgd2VJBDQYK7TarZwzhtqoe6gyZijanv5PI3jsazZJMofLx8A69OyPYXkH3M0zrzuI4hRoFD+
v0IyymxQK0+brJRsktDwjRYYVIilx0t2pKT0tBvVd6BXk376jpM6qcAVO0ECuc1cIDD3fOw9T1vM
OCOBlrz61VkS2ghXt0d6v/6+zjXF5ifDG1kdMSLfYkDG6HZ76cxDF9/3nrsokVbpao2ZGt1plkCr
WooyVx0apLS8e14z8TK5u+V3MTJY1qC0JHn9y++ahkTpmbym07QsJNEJBoejI26zBNJ5TwOYh371
fjgjfcEk2OtYmISoQ+kk26xV8Ic4xiaPLW/2Q8AJKFr9ho9QzJVg3V12M3pjYHaTIqF+Z5i1h2fV
jJRpMvOkLm5tFNg8cyogHwIVMuug+8iCDytBSgkByyfMCP4Eb4rS9EII6VixmmMKfd+XGCJoqSFN
0r4yeTBizl6DngZeB3zMyBUfRD0He8i8fRQs3YSKw64zJSD6t9TnVUAuBHii1b71SpBbmcW3H/vm
KomXzZiq8DqRSSHO1kzfiRBZMMBdSTvM/HcN/Up7lV1SdjNUEf3k2Jmi5xUm3nPAoYVkVy4P7NeD
/wrEROhJR9mIFya3m1xfFF3AB1z0m9G46ufN+fD54soHgrXbG5BbLiRXNzXmPiusX/0NxKNNaRXP
3LLU7gqx7R7qauQUN+llhCgrWNqLu/tcM0Gx/hl+79BhxBloXOPGu2s7u63GZvrO7qr8/GyMbW3c
lyOkqaWCQjvaMMS81XEMQlALscnuSswBwumRxzoGrAJ4hOezbxZUGNNv1VpchWUKSXx5St+gZQC4
s9rVaz0iAjR/7k8K52AWdGj4yyg/iWpGJqIzr5HYlZgL73rBZoUqgkGEAhc1gS0Tt+g6NN8KR2HY
jWf5si4khu4PVfu2M0lP69zBAGlpSGFT7TQePff4f6akcTpb7sWWM1ADDlg/0quatFSEnwnl/sI7
5HptSpHtOCeFm27eTZkd7ozElX804FFOlkwBJtUOdrEw03caLnEBNk/fN+THNdyqhp9UFAvqbXyQ
wYUwTL7Xd9bLbP6rSGjxCl7Z6h5hg+xfR0xSrWgSrI0AdapgOVECXIUQ3RnrSH8T/G7eyrXTeaA2
yyU7Ts1oeUTxoo9sc9VJg7sfzDXURkJ1iPs5vYHYPp1rJv1yGv8+RF+NJAI6R1l27efBXG4/HyL4
VYheohy9CK6UlRaTxbKuKISrLNbw6IHNLngPfJ4NF9sN49w53vMIP8xUK2QhDBx3DlDLO7G9+oFg
dJv6ZzoFXkSe03Yo2ItyQq5xXKo/tY3+K6vjtbNajB1Oqqjk1T1jUouE+Zk0XMKcixkJFOpAGUR5
EJqvNJ8FQbwi6Y1NZ0p5dsMAOQmP+CwcdhNNbvrNjXg8Ni+TnCMBnLXjx+LvjV5ajShfBuCKJelt
z8/dyUeiUGLOQxSYs/+NfFTMCLxTBHu3vFcDQpPHhbi2rine5eo6e0u5YYkDeHTNRGXhY3YDVS2q
T9cgDJkDYwKgzV48Ei9jWRO6m66b8lQZGPQEGp5BmpKJAOMBSgVCQ83Dj3usi9Y5dqquLzla2J3U
BZB1Bv+4TuLzDBFvt3MARrVFq9b8bYA+4f8J2gxAY7JThwHGlDboIr4uR4+UNhUoTXchfmNTo2PE
wu/hUNq2eyuGMNlTMHUPneQs7x9gYzlRx7tuOhe0mANKHW49DkXR5I4hrjsj0ST8gfd2NT7RgxBH
4tL0yc3LkONaTPLPFQGHpm+ZIglO5u/erYnJGVI0W1ZfwYG1nbGQMrx17EchX/9bHHibLsNZq05u
+dFZ5VvuvObntFTRQfQ0UcTKw196Pc7wVZ4SUywlhdGCJn/iwhnJ2A3TQOSSbtYpSsXt/BSBT8Uh
nRe/cVIPaiJF8dN27POWAbarUPi0CxPG8Vbu2zprLiMsvhma0u0wiIJSjQ3sl652tWoBFAfBsXDU
RywhXz6G/7pr9tYNXtv4B87f+EloUZY1t4ipfaT3kE86sxZB2Tb3zQJhJSmHTkamb8hu3Op1kSFR
LKS784FiILyGE1zCdcm5YnWT7jxKfutQEzKRqJfVg/+Jv5Dylm5jF4L+a+gDgiWNX3kZgXfKI6T5
YYfVWmy430XVNYKcCnThBhcSwRYyBMHg+7yS0OWThwqtyRr+YbsgNe7Nb0ziuF/RBzwau5baw5Mg
QlxEj9uTyf+Du8h6hiucWvAErLxp5DktkfB+dVzSbVKImR8/Q09ftcO/3dwW2DxZboAF+iIUFxc2
HJvZfeIkv/a1wqQNYh2nfsRP+pqfKoKul4bXQM2aqxYdGtRtP5Pknq9nOPCQ1KaBTHIGP9MXjjoS
6vpNi4G+23+r1zfHEGNUpLRjrkRDI7hz+Gti5PyOSD5PXi5p0BvTmLWN+33NLsDDKSc4Zei7q3tH
5fXRq455Wzu1WwZhgVXPb5issxEMx+iFjm9tt8sfDRxwvOPHaicEFC3kJ1ip6dvu42s8iDUDDwXV
FdDskCJo85A3GIqTF2/15DWnJI9mK28LqbYjk2LRgjNixb0SeQeDLJuKneaGauA/db+Syahzt5Ul
0vKXB7JrXu2peGtfMlWLGx87iaBokyn0q00y1hofW8hDIPUaRz6fdmAUE6qreHMxp8yKuSgRx8Kq
yRHpjOABsyrMDYb68Z4LMzb7LyLqrpnAKc27SoyZU9sHw55NKCXzaQoK3jURsxK6Kc0cHiPBlFWp
UYW2SaU/QpHTCp+lV3EDy/n7CxwtCvanV2D4tOG5Z38dIUTGJumj9V7pjv/Jj7bo3sP+954VcwKU
R+BxGc2skgp8JY5HHYJLIIcXdTx/qAsVXy5gl4d5jIjd3If0tLIHVc/ilrPLFcCHj6apmkaqN0Hc
Wav4kSnVKY43sb+bG8/T3tnCENNAbcD3D1Yln7CskWsymjZwkx+WpEVcyfK7rPNgKIwOpJn7l7SB
Nut1ED8Hg+U83wQJ3irj8jZJuWZLC+mXbTFaHng1k6POvkZ5ULsGgC4iW+8XCA7dH4ncvmparYqp
sgzP6GfCJZ2QNK1AzaU2G3O0ppCucq/eORzgiZ3BJVX7CmIAFK2WEFlOrBIjd3BgaFkSTR5uBDWw
0PQ1mc3IlwztceKDb+EgxOGcvDNZcs6gmFFy4PQUryATz3Azpknn05Fw46cBrKo4xXv+8Ic43lAY
PqY0uNXeoIg1UmOvWJTN8vxT/HhgbC6shPDBbRm8P36F2/2gdrFbitDAwiLRXETMmGol59qA06Kh
Bz7E8PMHtpyP7mDuaZsGXvTt5hv4JP/O46SOKRaXDP5kBRqjbmJzZiIdnHkgW1xmRdmUHeP0k1/w
QWqXWnZ6fw0AKBiHb32wuR8Q22/9exAEksvLN0+hR18vpbdrNW+YeJuoamPxdTyruJQR0LMwyxrs
DBIfzm0kXhrRMMyZiSf3K2hBectnpE1C+TmfQDk5VxawpXY36xz5QYhY6RJB0SeMGX95Kn4IifXJ
3GLhf/yMPJfolp9kYRKZN7LIJlz8nKBpbEkk3sl8iWa0Y2fGIs8o4cU+cqFqwAGKHQ1L75e5KKjN
1sLGVerPTiCuNpoTxbCbKY6Fqv3cLzi4TXu4aT0W/Wi5oaz4xBVrnOnESMnrdczSM7fS6GL2MYt7
SR3Dp0rvWLVOQl88lgsRk+dZEEl25/wrXbN+SkwhQflZD8OPon6gF1KKYCax7OIJc7VQe/4c09pW
U5QUktP8ri9Ugaxvtxl7shBWarRLEiQRRq6iSdiZ+0XER/FiGhdZkRaguyzVni6ieNpw76WFgswL
hMag1yCR19ezSuxiB6QoONuATpiwk2o0q6K2nzqLWVt3Q5PfPZuOM+AjlcYeKC3PCF7g0Tk+W61+
1mZlCBPF2iz+0BZhlk6D8jfqkDUHlp0QV+JsN7lCz8QCWIT7FDyYLkXXCs7ro4Ee/OElEbAPNG3H
R8Sa1OxQhCAZOU1p+jpS/y3X/QdH+8yEUdqIb33TJuxWTheS6PkJDK93A9EsGJthYvCRuhGkEJf2
vEO5sS6RRP0dz4r3X53IIJUvCRUTqg7ZSJkEGjSAqdjAp8it9yOlewGG2n0fVEnw+6op/kgZbM3Y
6pBlHeqyKq7uZ8i6U8oBducEsiIt61tharS0aGmuJ4HK64+n9KmgvuEw42rb6MRqmpTXrXuUjxAy
eDBKjtVCk4OrEmG8WHMccTt8cTSTJ5smzhP38OM+91iQ9H13Yb7MGBmgxySTVhw0IT/8mwKllWtN
deLX9vReNzflj+Mr0FaUs59G2hsOg6bzrRYofoek16PYIJxv9YAyn0hD8eRW/IfORf1vAGBrtjTR
gX/7DmrIEXILRBJnipce8vhVVLmuKgod1kGkBBC/S7vrZ9dmkk1fG8uMtSKFi6QTLdCfMvxLXO5v
PhkFEQYUHEoTWiusd5dFLAdYODvZTyagi0p1gqZMdgEvRDt3FkXZmlGZIWywPTeDj6mevt3l07th
9f2qWoMHcEm38AiGJ5vm8OH5WAUN2m4RxJ251+FUT8Lc0jbEdeo5BMvUPVL5SpdI+O5iz89YnPxL
3VCvcvNLbzchHyFTgtJtOV/nodjh9RDFCgPrvAbx9bgeBLl96R1nftJoLygQa6EkqIBPk5uJNYfZ
r8Z9fk+ah7oX0R4LKI7nh73gwPrIKiS15rAeLXZ7pP/24XVCE/lCf5trujg+yFJCDpFqsE3czini
D8k7OPtbqRse5LXM6iiFYNkhlxUld7BDt8zILUAdUtX2cNvTZUEqS827iKZ/1u44Bn8zlLEZTmgw
QAVSVta9xC2TvF8LK/EHOt5WR4n54UIcSGNVG+2bGiHbUAO4f1WnmnoO5Fn6s4rVhOK7ZCDj0JL4
OcjlvR+KxNSJ8X7x12UokB1VGNQ/wMFXszBQ4atRgWv87DxYVYtOD+QxSZKJ5pNWTX7j+xShBcKy
rL6qyaQTJs3ZpX9gFOyX+e152MkN5kIm9H2NkljtiWZaQKSy+1Or3PUZiB66cRDEv516MhmR5rG+
BN+V7RhWUmlbU907+ioaIYqGTouFLur4o6p1MB06EePV86qrtAPXivIMbNCV/S0UO1eGpKWdHfy2
JvXjD/67HdyTg6io7uVsdLv+9/hRMZsUxhezCQur173PznwWtHY3XNvSLa6CuIWQPCLgQsGCZKla
Z/VdFLavvAEG6CkVbshLKHdfe6Ro9+jCBB9its5VHONzmNFoFqb3EBJ1qUt5FHG4a/W6AKF5ivSu
1Uhybea24XZrTj7xbRUBbxGhCZmNjD8gzhVCgz2u9mjZXcxZ0mcDlg87MNsjcMuu6hZ5uprXGASa
+7ADukq+3QrL+pJuGifHEGB6NeaXMkV6t1PwWqQBdqd20nczpv1EctJzOXrm8hLQ8wOQ71HNJH07
U0ieGp3b4kW0nz5axVGBeBV6lFIWtNYk1OIU1QUrmvfflwZM4wAFsJWZyTLyz4L6Ba5cfgCCbS6C
dZfpxEbAIMfEBaHqm3dv4x2f1E2Q4Y9rnjvxJFYHVQNFZpSyRfUI9bMk8I/UIJchj9caSLEwD3Co
37OkwrAne4660fIZuHl3p3RlqN2haN1mm57ge1NFNErc+YdJGTkP3IiL0NVPo4P3TsKMvWXawFEc
hY4dNi2biz0r7DWW9cODqWpMohQ7RFxH6HKkx1fzNhXwvLvstEQbgRyabgx1gMNSbpyIhBwYOex9
S03MiVnq/1b3sYFVn2tl7uvFbB0Kr2fz24IyWo3V1at4uKC0yNkVOcgo6tOLFPG5agSFuFNbBjza
gslpvCAWys+p7blg2PhaUQAGDWAfnXyUYbCDzZRBj+wV0Q33/4tzSupRkrl5nA9zzIV+RBJA0v/a
ND6i+Kh+LtkPNRnukVpcCRy7nogNc6pKPoF0Y3dHcRJ6QFb+bIm4+yDU923T62GyF5sZAgyS28Jh
uC5Y1r4UwfWCX+4H+stt0/v2ljECIljIGVds+u//ZGJiqVOfM1Kxwd8yftf0TDay3lNhyNortQPa
3/MwHWCLbbZ66oR7Nz6rbHOZ5rDOUBvfQonLjLJvEoztuXfGyJmWz1sZQa0BxE//oEQwA95c7IP6
500tM4MKRIUlgRrTH+bKqxI0l3nvGTF6T2yvn4w+S9vXiplkgZYkHgMtBOdxwwohrXfnU7pFWG80
C9defIpxzo+/BkaLOvfqW5w0gfeSuNEDc/VmT4JsjmipesLOnYWA8mLFzwllxdTNKmmZ0q2xncnN
uQnd4zmq4Ti0kvB/ApigvshWccEMnmE2Dajo0ZuH59g1QsskoYVmZEDbYCgY+s4GIBwc1isnT3hl
d1lS2m6l497X7OEq9Jrx/my+EjzuhcHH6CHI739oorhs6vcoJrFqrgVIRLf5tpQBjEiu1dLLdkDM
0KsjH2Vu8RMqsbfepTRaQ4PqfenGeBD3ZfxiQxThU+XEUoMOgy/KYKpo7VrEOFfZCQ49aEjVhUIa
tg+UOc2dlKRdCMV97Go8n5lt8vjvOK5/VbrRQKLKCvUPN43AbDlI5rlEj3UCBPrnkxikb+BB6v8/
4+QPpozMXzkLv8XR4BpsoMsxJ4a3RHT0rYmX9EjQhHUjZGz9DdtJV3WfJZQNLPWaU6l6MEgF4bu7
H6eh+4eoj+1NNms4KygLt1LBjCZRj+PhPq+edW6P1B5hUfgP6SSMSCv9ZjSN9ydjKYsYK6Gdiv1D
0YEyQlCv3sn0mdLu7qVcP3V+3aj4ATgf8VqJCKGW/Zq2SFWK9OhBXKiVcUh4Fj38eHN/iMfsBdRl
bGZHY5j/yLdA6bRdvunocUC/IGLmIfJlG7hpA7IfuEGmhIFXYkix8in2qeZNG1tN8XhIYErph8ZR
QCal2hSJg1zVVmSkWWU5fsqZ++NLuHSWzLbAlELtz8hJnEVQIUDhpzcKnlF92NhDkM4cjSv7Xrt7
pP++vMM8dlNOu9SU6R1IGqwKNgE2k1MKDgGdbxfNQuvsqHipRdtv34G+JkWp/6OlX9w5vk2I/inx
poUhmjdLe1NbFpw7r3Tn7oyELTM=
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
