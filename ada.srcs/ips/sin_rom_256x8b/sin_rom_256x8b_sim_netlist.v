// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Sep 24 19:08:02 2023
// Host        : Zen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/spedon/Documents/eeworks/FPGA/ada/ada.srcs/ips/sin_rom_256x8b/sin_rom_256x8b_sim_netlist.v
// Design      : sin_rom_256x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sin_rom_256x8b,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module sin_rom_256x8b
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
  (* C_INIT_FILE = "sin_rom_256x8b.mem" *) 
  (* C_INIT_FILE_NAME = "sin_rom_256x8b.mif" *) 
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
  sin_rom_256x8b_blk_mem_gen_v8_4_5 U0
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
