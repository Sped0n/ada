// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Sep 24 19:27:35 2023
// Host        : Zen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/spedon/Documents/eeworks/FPGA/ada/ada.srcs/ips/tri_rom_256x8b/tri_rom_256x8b_sim_netlist.v
// Design      : tri_rom_256x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tri_rom_256x8b,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tri_rom_256x8b
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
  (* C_INIT_FILE = "tri_rom_256x8b.mem" *) 
  (* C_INIT_FILE_NAME = "tri_rom_256x8b.mif" *) 
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
  tri_rom_256x8b_blk_mem_gen_v8_4_5 U0
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
