// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Sep 24 19:20:16 2023
// Host        : Zen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/spedon/Documents/eeworks/FPGA/ada/ada.srcs/ips/squ_rom_256x8b/squ_rom_256x8b_sim_netlist.v
// Design      : squ_rom_256x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "squ_rom_256x8b,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module squ_rom_256x8b
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_INIT_FILE = "squ_rom_256x8b.mem" *) 
  (* C_INIT_FILE_NAME = "squ_rom_256x8b.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  squ_rom_256x8b_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20608)
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
