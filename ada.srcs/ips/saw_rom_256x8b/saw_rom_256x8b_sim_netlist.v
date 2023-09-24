// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Sep 24 19:24:25 2023
// Host        : Zen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/spedon/Documents/eeworks/FPGA/ada/ada.srcs/ips/saw_rom_256x8b/saw_rom_256x8b_sim_netlist.v
// Design      : saw_rom_256x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "saw_rom_256x8b,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module saw_rom_256x8b
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
  (* C_INIT_FILE = "saw_rom_256x8b.mem" *) 
  (* C_INIT_FILE_NAME = "saw_rom_256x8b.mif" *) 
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
  saw_rom_256x8b_blk_mem_gen_v8_4_5 U0
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
nVdCyylhnWAbozTPspH3CZA9UPkLw1EUCUd3o8KA609phk3a+9kF00/dGF5qDlXHqw93riuS/mR4
uQDG3AmbTWoafwRjvxxLi2seju9KK62A/PXVXx/9T1Nj0OUUfTbq7+9xMKgzS/5cp1Fb9v4sGuX7
sXo4lCO1EvRFyHJqV8Ik6CMHHkLtHdn57HAP2ycsZKLyAn/xPkRsipTDbSJQADcFO673jccs1W7k
qLkqpHH95kdD6djO7Ti0K7klEi2em3SPvUBMfPq+20/RfgLM4qycnCXxgHCzQeZAh+dUfu/O6AMH
PkfJlnHIuLFGS1zUbUAaziVk9uxAyY+/eB8gMqeEkhEF9z1NsISqMvOEBCNa02syRD6UAdIoImM0
/t6m7xAVqLW/YKpOkUvcBBpFrcKYF2KJGCDSlFm202jcBrjQsoiyNkkPTVaVwTP8KhUNcSrn9MoQ
aopM52t+v4Sf1CeoWNUI+pEEC317ACQADnl4s4ynhp3YcwJuAoaa0kF6ylq531MhEPWTx8yu648O
iOmuwpnmDLkUMRyTpsY8+MZVdVu1ADvYYEPNcoIHtzI0bF4bJsknBcTtUNyjcVegFhE3QwjFEzMo
ETrjhw+M+q1Xu5HM8yi8Ri2qB222t/amzD5EH2LdmaiNAU71Z4QfcT78pHhKHBlboxBchv/thPXf
/LRTYoTkn46CYqo+b7QpPuNwFKMkEt2g2q7t9wle5ZRpftbWe9rCiClCp4TPv/wUA+nZcVl5Nmme
pZuGWeRysNAHR6y3XXOqqZGgGAzrPdHcQubW6zjm8/Wx9MuBxiPdOuViEZFbqHJqJR79fDHlpDtH
peNTivRhvgUVkPlX6Qh7fERbFT1G2Hes1IHwZm7JW4Fr4rvS0f8p62ycyT7yPhWNG4l80QI9l73c
0arL6BqWh/x9gM4C1RmE9hxDQHpQ+fg2gAAXYJY3wyT4dTj6MiyY4ZxDoVtW4tLgPmEqjB/0uAoY
JiQHtQV7/hjVVR4d8q679SAuzhHpfe2N66VmeRyzaFwDqNC+wpnrraEDHj+kB4EK8AKQC8zTYhlH
9j5pKWDq5DjMkq9tNTbGBIri0ZdbKBO0jyns8JJ2o7kWbdkXxKmOGqMYn3E9WejE+2Aevko8czmL
8S98soUqb3VNI1P193haOpCyaIAQySnz4tGFhqY9cZ7T0PDx4DLq31zF1FjXXRitJvWWT1xtm8FA
BqgyHbps1n+NaRXXGHn4XRTwZxlR2dkbezAL5Z/c3ydglzg4DRf/hoWRsYaYY2X3qVmshhwdVW4p
J03FiGmiQz/sToNQUVHB82htjmbMUoE31cr/d58ZNKJOjrpUPAMxPq3jv6nzZdp8XScZfKIStiH4
Pad1X4sENCZK9kvrZ2OPgWy0uOZ0Gvg4uP4Sqsa/zZl/M7HXzNQV77SCsgx6PZB6tKFvH7qrTuvp
2mJmTU+VBja4G4Gvy1fs83rsw+Q9zs9wPN1MiY+GIcvtn0ORw2hHxL0P4p+InTXE97Uz0z1w+ese
s7rW8P5rIUZNMmNV+pJTdwfjhgRrfSErHrhlJE0FK8gGgjzHbCEPbh6LP7DwfVa+7ZhcScf66TyN
oQnQ61mturuvn9LIhtFDR3E0aHLnl1UE/8s4X77bpNg3HwjNzr9K5Ub++1lOqQjz3+XO92nQn7/y
BSGAbWUp453SMjxDR0ohR9ORVYDCUltDH/BcrdxypXdYjVaV/JlyY1pwGnyhWfhEvVhnRGJeXHrH
PIJl5+Tkg0h1VJoJwKh72+RiYQTQGTh0xh9ovYH/R2RANCXvSe8aPrqFa5sQtYcUY13oFg2t3fwa
yO0PrOxP0txgUO6iuW5ZEdGGSRJuSurViSjMrMeLYYxc13BBWGYbXcD12LDW3gir2aMVlP/0W/rb
WC6j/5FdBcaie8ukvLpJt/4Cp/gII67dzJBug/1nbLKvGx39d7caP0SerSHL/Kvg/1nrGc5LlEN9
DN7F5Jbj0BTtiR/6FV+3Jn3Uwgv/q7AGeCqxhDMIpfaZUUeiImuo1JoiR0m6moYh8defFx5PhbEq
iDa7rZom0iWpgsjK7m2XYlQmxBw1uTrO+BzPPhOwxhlsf4bxEOqPf+nBWrqMMh5FGTFpIzIn6CcG
lCnUvd18boX0fj6IOAHwaVMq/zbtFW4yoMPy0ctbT+PpU2tVGdTn9c8KvrZGzAJbSXgBFFZsJAB9
NKRWBq7Gjqdi+LeSMm0+orypfsyLuSEF6wJpVM/91I5yWCM13RJABVXLGqX2UXbyHUaxylf67e6J
AqKlNyFdqCKL+ka+OSEj/h424fOJ3yPZIMRUHyv6/1yZpqGSK1yeQxkYbM5lm2yr2ezMQRTVxd3R
kfSUSvH17UAmMRO+MLAUVZiv+CKC4DhGwIeWBY7o6KeDVxU1zV51Mn9qY+PWF7znDWOhGW9uD6NK
1qpYvaiTXOe3AIy74MCshO85WLUYIfvwzggO6vfh9/9+rLAPDT0pncZXZuM19ZWoddxZytWC7wsm
bodq7h+eurTGMdfk1O/UJ9uB08GxZZyums32sCpiXBn8tn0y519TQKQ+JzAhWqRp7upIPDhjGiRW
GjbdxWF1dd9Vm/A332xANsVnJGVgX0teuvKVFU17PV6YUBrn+GI6JDAPggIXQC6Bvsp/tEkrqn5I
vtm1iMZj9Cp3WTfqbk/tQdKcClxQItA8YQ1ptPJKy7ICVu2+Fqdn9kIhsQjhXbGjiuxw/RyBOZC3
g0/XridQkDbtKMSS+69/1ObyWc40iAqOsGGF7SMGShbY1ThTESDaR8caGmIy+mDV/yieXt/H1iBg
PhhTF+n8SSI5UpiFTMzbZtTFynqAkKqb8GOnlUR54x48l7YKRG1sqOyUJQrocQkjluBtbpG40V9V
4d7cNCK///+nDCWDsksxAg/qT5SsSQSuyi12CO8K6zMh/HhTuRYYT4xe4ZKWB3NQwDVgvVOtfhA8
91ro4wyZPhzE0moMTb7LeSo9UowhXi7i48JUsYadEXUdmZ7AFQDseU/XXYPRE7EalzPkoOlCD3xb
eVRI2XDpUDPIoSllF8vkKFd+fIRL4zt1BKqHlzp19/44RiqNyZg/AcOZJ7KSWNMfKlftyMD6y/qu
zneMSjRUw2CWcGq0ps+yWFwO/0nHfJ4qrJL7RHbUwGsP8QM1Nlc4xp04Zz1ppplRbkXMRD0UnFJi
gT57RPSYORuphWai3xYxtGYbKEVwgr4jy6kYC+ODcRmYMugeKAIQ/HTK81Iq2yDhaN4nUpLzvbxP
J8OGPyQ+y11vM/OVTJ45u5FuGbjAVXil+zcXeSi4dH+QEn/UpxG2hpDfsVETqqVPdTe0px1VzqZ0
774f/KksqsYNOqqEDFiWpVX1SFGZLM7jQsZUsohEMBE1lhu7bBzR1Fse37DiwsFD3Os27TN3QPuC
D0ZNkDtfWXL8m5riHfOh7HmB0o52kuttnri3n4SfciOrHxnBtwqYbhHd6pe8ZWRQMh+nV5ObBo52
weYd6wtWTyrTlqZ0COmYQQCBOodjnc3F5MxYGcVNspEBDGe7x0Oy6zT8Mshsw/MfmCvE0YHqMKRG
QzIA7c++ER0NLJxmCn+2kYWGWcvM17IUVdSr10Rzs84cNEceEDkcRG+vX/vZVfSIsxDzcsKeFoBw
Xv3iOgrQLCMPvxFXyuX2qCYmrJCztASfiJpV9tVOw1DBcy3umKBjvDzhEL1oVW3ZTrH3ZjI6zbIp
3alTf0LMBUrHPVztXwDpg9sNXAbf7uPSvET1aSHivRQmnnYOkrgz9h5BlcARjelqQ0GvzQjbhYRS
hPBHFfiHD69FOv8ve78S9wTYQksPA2dF/7GCq473fOZDiiHj6Oj2N8Idc9qrCpKNme+iPyYpZdxm
F36J8i2bPnguERkK5iILCjWdv7hi2TVou9nbDbag6Q35wRYhHHUuqvtqjK94+oh2f2f7VFbtJtX5
fC+1JRUVDfgsN4W7p8jvgiMx+7ylLVEpK+zoJbWJz4T05WBG30WVuNcEAKJMt53Zhs0kiVjGUy1b
bEYJepfnX9bcWZ5HzXS36wo+QBahksUxX2zTChkVH9Tt/zjN7GBLt6KYPG6e3QpnK4SW2xoThwdA
1bUJp4mGHm0WyXoa9nopCZ4bzDuY0Ud/qd20bb1PUjohvBfwHZnQUrXfWIHoC1FFeWxX7nuuljS9
gnmtDh6xgEONYKi/YIQHFd6/B6p4CFs6HisYWDMoPsEBYkJKkZh1MiEu2FRGyoGJ8Oj0xBeYm5bs
HAfJLzeeHWChUN4nxOIwn+uhY/eeRTp71hmoJkBkW5aNrS+9yxBamVc73gRe+18UMVENNAJrrqer
ez/hFJipqElHdl1yCIcPnQLZ1qxKkzhEUjDiLPH3EQgP/mW6ZmW424fHOrebtW+aZdbvkCn+OSaI
kDBel/arJPeFEiMSz8EZLYqkUc8vbLWAA7lSUfpPaTLLCbjZHZFN81osoCA5SmCSFj04+Vwd4TAQ
l5YPN4g4dYdvpYT3kc3v4SIR2RwUujsJhr5ktEII6ng7ARC7jGyw3anZJcGwQnDbL249WJvNyseW
ZChYKSTXDRVTBqsnly94RBTNsWb5Jlkb8NahNqCCIlV6QWOX9RTJG4MP5Xgrh37spdNkp4bTbv1G
82+Eh/2UCOOw1/vwlGw1VfZNJSKwLcvLFtZg61w37Y1gwmH3vynmQqABtrgVfm/NHbRSMUq6b8NH
CzV1aMkXWHYlMufwYetOCTPxo5sErIEehnLd+ZmzD7cXVIfeyXu/+UjdDpr0i014GuVEvbzBwmQj
Xn/pVBVDEkeskNsczoVTk41omjigPObDhGkrBGtMde0sFKQFX+/x6L6OpMnHbb8yNL4FoKyEKSVp
iyx6TMwPqW2blB0LUh5fPWr20/GXO0JQF5xHeGIG2+e7hpD10hQjXPkybz2jzZUtUkijxFUKfHH7
lUJ2ukFZs0crxdnIzHQJ5KfIr2N/m9P0hvSgteleap5uEooPbeNSEALTSfTfqQwAtLHRatuA31n/
iPD03KVlMeh0DyRF8fzyQhpHtTTPZ4oT3XVzFvwAnDBg3Kvj/OdlHtl9Z10qVFECRUkmwr3G47BE
cJ9M6w1Xd7He9ckte54mec2bwGsYarp8SQA7QUCwDbOftwYb5+Z6bA3cW/rhSWZhGSzBRcXmMC+t
X0R9evZNsW7B/zXrbA9cJIWBBzp7BgKlQECKRfoeV0Mg7AYD10XGTYWw13gU1un0pqxSORwWZf4Z
u8+hBWCfuRJDt0L7gxyTu43AQ/E1/gJnatCJ8AoSJ2ZWaLGNGT5MpSB15wwH57c6jUBT7qho3MOR
dQm04JEbFvoGqvKb2qSz0B27l3rJ+5Bwn7gJbZ0+ppCAiR1d9xSY71R7Tt7LSCzWbXmnO1iXQfN8
obQ56ah/LOmOpkjePU62nSR9+V9gQ7bESm02xbs2bE6IwgOjUj9MLWCHfuvOka4aGCiLjIUm3uC3
1W1E4pEcLTeH/0VXwOaor9tRdWD7ZZpQIoehSNloOUGvuVrSgkS2IFTJZzo1MSHqA3IwuDxPcT4l
Sy49xoxOPRf0bBzKV98CDQOQJ6lVhsMY+lHaxfhd1bejN6V3H2eODbRoFWTKTnju47y85r3yRDP3
yL9iDUua7WD2uCrLVL6+VagY2aXtP00g07p73u7/3zqZNHB2HKovzQKMuVQ7NZbngRCw2AkP9rPF
lJktcaqc0xAWngTVIDzgq6A2HP7PXT4HecSpx/QIVAj/fi0gmezLizmVZicXPiUM0fTM8gx15rYY
iqYdtn7Xb8VmPI4N3rcW2w9S3864NE8eIIBu89jxoIxgEHELTk6aTgUKKxMD6uqFOBuALtsdCgEb
P2I6FcYAZR+Js/kWnFnMCF8teEATYRHhqhYsb/Vf8RaywEF00m3aJCqe5MHw2PHLmgebsBlgXR2J
8cWaeWjGmkCwyQYpimzFZOR+xGtwnoJ4cLT3911EdK+7YAVqJLEt5X6bAoWlm+/vERR2NyTWKP2q
lu5r57w6xDZc2uMfUOcxMLSKaH3nvwcQIsb7oKphjqS2NWK2x+g7CqAI5bcCQl24LBO+nR1YafqA
aQbgMOVg1lQxoJbTpIRz7WebGEiUfzhIC9JIK3B9PcmhMIgWZ6o9f5B9j5ywRJVa86OryqtC26em
sKuWsOWZJ+3Xobj4NwJvSrn8gYiVo6TP0/2tlAhyvj25ZN+09bMrOSYUtcaTMLh6gU+f3n/JIGdn
89q7u35L5L50lN2L6T3l8Hfr5jLLWHJa9Zl/EQ4ouFN10wKo51KDhCQu26ypNA7q+TQmaAd+qEp+
gy0aelFro3PPqa2AJ3rHWLm12zP8aqrUlhnhWdp9izp4OwvZx8x1J+LTpW3HC1Sr5X20VG/G5rUr
97k6/slbZZROsl9QcaYjAxUiOr74xzESqw2YGG9x79sOYZAk+aSyJ2HCmFHFY9oqrFnG4gFjNyHD
l/+V3J2N4knKG5KA0cYwu2kQERNaeCmQHVLVeqxOKsVondBpms4sdY1n3ftTNLOTq9IxI1JmHxlM
HlQRHJtiwxyLbYzb4jWD/PTuADqmULtSiJcY9eXNlQzRWfYMxasD+aiHZA9ZodowLNCFwRVpXYq3
xMzQAsYYBjiHdjYe0oDUDqL7tNTs1QfZ793cHedAzMykteoyllcAVz2JBfqFH8MkdcX4NegwoTCI
xNy9T9C9rPY33R0agnEvaenosEE0XaK+UnlFuy4bzbIfGsrnM3UD09hLukkFhUNzPtKrjoyb1ICq
D4PHj+rLclg80HX7LXlXF6i+b+nrWjx8GlQ7dMpeDg7BNdTVRfsUA4UDM/1jlLYW3ExdUpSJxIyC
GiqXBaS8B0VvfRH9uDtQR7KTPlIWQpvxZY6mqKL0lX3jNHIeZQluZ4m4tCBkGCxr690Zxp78T/D+
XOcQLBc58LxZBc3BOAek263dpCm5ijDjS70ir92H2EVGxlnRv9WAezHQdNgoB2sBmEQKLZmsxZ6l
V3sd8yzZvsiLqHZIj5ZOwPReYBNwZUAsWM/HmmGr6jb70J62uslH7nVq4PfiUYRwGUkJKX08VuDT
D6f6IyqFMea6n0UNz2pp+0q0mEgcQ4p5MggB0uvPn2td3XqlvTBAFMxIU7y9HVs3eLogQUXMZBNc
UcjgKg6HAnyG4Rb20zKF2peAgQwFdAew9/7nX2aiYVPBCxEeeKlU4KT4+QAETyrH0+hXJqYDv+qQ
LKV5558McffzOzynebrxu9266neghqo5ozftLwzfspDdY4FphdwOmC2/QTn+BYXWEzJhpi05epzH
UK0jtRRYMtIpUQKy5PhcK3UA7TWBG8GLJ7NmHXQJEJ9UfQOA+vdaArHcEZYDln4E+3r1oLCg30DO
zzgnXxUU7r4DXYNMmglMCi9lZ0tno7arQZOxdRhKnDa+wMfK5tsxYV4xlfurT9meom7fq2zFaOrz
IguZdqNAotAa/Z5QXqoovmbsqxWG89ridt7H7X9QXnC5pKeib3dhothoLHsU9iaAc5bLZB5fUM3v
oOrjSlvtZ7xrcNAnquSzRAtE5y/HV+tzd2BN1aWYzpIfj5VZgfqWtQjj1kk60hPZMTcoekDhA0Z0
Pmr/X7ka7sHGLpR926LXOJy5hxX1AiWjyfEa7/3qmBMKYS408bc+EFp0dg7hBsKZbbEkW/MRhrqq
qwGevckSpqbv3hyp9ENZ4AeaA3diYkki+FA/budSXd7v6uAsuRJHBnoO0HN4Ik8ppe6IteKg5PDy
VrtTrsioVZ3O18dH5RBjwa7Da45kgisztaDLV7Yc6pzT5tKJ0kP5gUlL5sWD9e1k1XcuY8XE8Kuy
qVFzpoi1t8p5wwvMqoiErvG6reBizb0X2ZrB55NsiC7hn4SgzwS9Vf0SeKuVnKqiMBc0S0I3hlYJ
3RMmOly3+UDoqkOMuwm2rVkQvmGnEu1dMOJRoazUrC26P4Sgpwygug28A2/z0/Mx0ca5/T/xMDrK
Dds0wGCIPsCQlXYyKaOtxLWcV1TwpaGBkBvwfUB0LyceFXSSHjYxtUmEwLsBQjhRlNVQmX+54HMc
/WAU7WADGjtREh+qCQHa9aCa0bdVSf6wBFEyHAdB46C9T0s8KSRKtrYCOno9QauzNEyY4IuS5iFX
RjxVDLfDZlz8WcNqtDFRHxlYqiytUz1KoEw+YceOQhTi2SAzVEXo9etqn5RGgZMGgsINA+f5pMK7
79UOldxhS4xkCVtWGwHiaFCrGkefSHmB2FWDPI6wf8aASM8W4TINLrfpjhjJ+QJB5kCyhQ76s6u3
i7d9tMJY4923VWIxRzAxDyQ2BRQMxdLnBAhIyfi4sLW5Qe8CNVdoCgaRNp5VN9EA/evpRxM9MPMv
U8TjLF6jfu3ELsnRnEKaVx8v0DmOUU6CGqa1GRLtvQ68nujZu0c6aXT1riMANnalozB/gNwppwhP
sOjq6Er2q9fTX0xSh2b+eI1gS83Q+oLzgDClHvmJB68NNlBMbK5vV+Bxc2HoJxL7Mn+paFpv04tY
Oa3bOIpv/tzHA/uMfVNTNA5O+hMzUnA51bBIv4fshl2h7dipawosqNnyzMPSwTMO/t+o331mf1jX
TheiAP/DthSNAIjN8o+qNC0OYkK5R0Ygn06FTgMfyno7D9ZsUE18N9dfNmay0O79nOpz/YD4JRbq
/Cmx3iyv65lEv890sVWIbhC1zca2ciYwIRzUlUgAY4PXb8nA15gDHLPYezuEfKH1S7CKv4G0GjUD
6RAQhHIbizACydfcVCvClaLqyX9uBHR2kqsEcCYDfL5pYL5TFKsMfMRocPUr4+ug2FQhTi+ZryKO
BO5UUYEAZj6XzxwrOWhbOfJzeNNJ6BQgDRizX6iI6XpDMV4Fxa+gkDXGGnHp2LTUHWsGnCjKzsBm
LNE5605TAQd3UNExQTx0hAXP+z0HhuClnfZj8IWsnegtNV3hBZHvKvaoXWrXKRaPqW37GGuX90dE
NyCRfGf9Yq6U9ubYR4AoX03K++InrXIH2TdXa66xpRpFKiJ2P9Axnmkuh/35/8kcFMAFPjY78gcV
2vzSD6Jd9gU+n8oKeDx+qGVd9pzbo/Sct9xCcwMflzhF8HZbLjZriW8lFF0W8B5f5Ja7VIb7ASlX
mIn719LcBurh+znZU36qoopfQsTzVoLn7pUQv+Yjxo5p39LKNVdFN1ZoAMI3xDU/7XDhFXrVsRrQ
jlfmQ7JhgQROlHI2tBKusZSG/IjfhTXExalSY86GEghH35ajXClSpouyfHwRkmIfTbxYcZ9oVu2q
KdyjiuTuD42hBXXmraCbgUalHM/v533IcIjDCwoo54+cilPvvzuFVv43DdniPPV68ABU3BbzVrvi
PqkRLrz8wOZyET2FqM7KIVIzioIfMGpzfYwD6tgEtE+Y43XBauXqrCCRpDg1E9dnaS4XnfLUdggZ
AfoX0bPGb2+tZRzpGOLrDzN5gFnpwrousToQU9z0GsLYlX2gbEa7hFwJ86oN/hb7la7VQ0/kgfzp
VRCQfuWD1IxWqqXYmmDLr6to3aTvNByaQhXGHl9IclC8IRnbukRS14qvW4byZgUN9EkPEB99ubvn
MynspZY2mtO4igxcyQ1St7NMVC2fnyQItf2iiIYLvy9yiR2OCOgoIJ6Klky6wvc1oBtOPfTfcrHR
4wHe0PTjxbwbU7VwaG4u1BvSCqVLR7+fcGV3SF88CX7RyTH+sb0VT0ZhMd/IdDcU6R19Em8rU8gm
i0C86kAvelwVa8dcFXs/qQWPyT6yaAgIN7pkzpdtizu28O9fAjmSM4r2uNFoXVymcO4dI59HNRKl
VGg+sdRzMaxDmSv2S0FzLFwCTD7ap01ZFE+sI0Taap1wYXVuT+kZePiYy88MB9ADLdXdnnOsR2Q7
5Q3shpUZzT6+MkpcPaY0H3jHTpKkusZvfQVshrms45C2czQkYyrQjdFb3lBVO/myelKbfVlPE5Tz
Qizt9h3GUGVI6kRFI3OuI+ycxGlC2VYL8lG/+p412WZY1iDFO6DZh6ROzRYsmRc1N4XpluYCjIv6
XwRIrHrIi8WywdO7uull/H0CQ0ishkHLEhkDjOEAId6A7k9r7wX57VMGZMxOBKxhQTZiga3F+wQs
AxqdrLt7pNtINBakViw4Bcmh9UJnOkSdJHzmtkbJ6Qt9dZs8UhA7W1iGaRdMBL4K0q0gPbWf1q6/
Hnut506IuKaiFLD0GBZR9ph7r1tbQNjHWIl3Toq21kZI2hDj2VDXS8TWNLc/Nsrna1WvqRjFJaQ8
6RMonA2zXBNgzGCjgEmXMNoC63aXmUyR3BkvyLjphXlyxfXAdVtd/gqIp/sSw7qyL81uNr72adhV
ql/g2CJMkYP5FHSNCcpdtf/MTFMuUc3Ig5aOi0KcWcE6R3bZ2RJyqT8yhry9hkUpPhGXltSv/04x
7Kaj3opq8GkuDoivZf317c1FsD3WFACnXEztkY143+ZeSmyeKJXs1nNE82UW4RLM5FqGywVixyba
u5hHIVJrcPAUGUBOZbK8uRg9teNlbN9/fbZ+X0fdPYO0fUT/hYUZvHPfnhBvPg7qHGN39XrFjCtJ
F4+1DNo4/jCxMzFfrRtUO+Lplk5f4ViSQjI8nkUpjU8LAFGpJ5rjPRVSnEEk9pAW0ppBggOoKxHO
75hEBB8XWvXu5hHu3+bi3wlIoV5elZOj/7d23BkJCsSJbEgnUBME16R/a3q9X7VmADxcmHL7W/Y4
hsj1tu+vqJj4H76HyUdggcQqk1x3xLMcO/bxAE5EDa0FeXCTy6irNYcyNs4OP2AFS9gjuFVT/h2R
uCMyx0ZPbSo/p6p8qD6puniNkf9Llviy7f0h/veeyxF97Uyna5ncto/JK2sJ0LHkChF7R+CtCa8K
KuUk9ViuhfaIhnCuYaremi9HTDN7cH4lHykg/CTLLTDw2eiApvKBbENysSBi7ywQprbk0AciQptW
NPkDXu9brDmyshQdzM8uTL7vMOAdti4ku5pBaVMQ258TK2mj/3hGfS6jaECS8fBjpWwngVWiMRdN
hBWbWvvBAIqMbf5jJfo6WQ+JSeZ8HTVUYmnif3DPruIdJxX8tpZLDHHSGvCH0Iy1XtTr621X6ACu
MuRGf9sex8P3Q7wWUWXEQYLH9cdJNU9b6jmN8MtbyArZBHJf9hz9SnU/VDtteh/py027SVTGUnGa
ThnvbjP6dFUaqSaz3CIX2l/yPpoZ3WclBgQqyGB366AtOnvLiF/kH89G9mW1NDb8jYJw/Ue30uTv
eHfipUoA2LzdnMDWTTecwr+HKdFdRDA2t81nwJP3kSZX++ZHRBVcUYAn3EEOU92h4/VOTGHabMzS
+7WKqQHOspO681+LrIEGgZmTfP5DQs2VrbB29alJDohN9k0KjGTHR5emstHJoEgzmwMP6RL8y+YR
bdxHYbAzXtEUDIaA0obkFVoP3euciLko7J6ux9303E3A9aURWSvTmoxecKHTzYgto6Q6FU1/aJ5m
C9MLFw2fCpu/fm/gZESo2uPk12/Pxb+f55DWKe7eqMDvvPojyaAy5fsDOIcutEtdMQYI19oCz5rT
4wjWS7a18uZSBOaOlvbSf4FhusrTDKdVobW23cvNIrU39j94ucrp5PXcAMiUY8L/+2B1EEBKBsUV
uu9qLp2OQbgXIlM9X7C5Ea26WHUzxudGnbGDY/9yWArPqY3rxCW1MA4hxhWZIbcpWVCe+3mDgeQd
AkteIeaqDxoVtlNH6enzlLzhH1FS4D7BjLKAABA5RLHoDXtkYT0XD9LofiltElVJueTTuWG/0+He
ycLtv7qnqbxGl/0WqM1Bn5CHMjKiTn7ayj049ls/2Dw+2Z0G8WbjTSnnYW2GrG4ATT0mVIvhU30A
yMiYWdbEovjIIzzMdFmKDiHQ3VefwIXD0UQwdz6EVNcZvJbTAYyJkhpDyd1Nr0nFJtMVssUYjGtG
wdj0fk00+nDcay3u5tPYPaRGmwx8RIUm241RzSaZl5PdJkPDBaNx6oDVg3BKhHZQPXIm2uAICJqv
nywG4qnCN4e4DMlv1koFLJFa7e8dBhEL0PGhhP154XdjdtVkuKHagJEfUAlAwg97UEjx+b+LEK0n
jZPJVVa93sKT3MxsQsVbZNX0I13IFWVPMZhnKjtkz/q7E/4tarLGcFlWnbRuyTIpJB77H9w5w64b
Qx88lfavItocyd5er7m0yG+jPMaGfQFQxU0/G93S1T2uuu5xNegxOD1Nw68ZayySj1arox1tDRFF
dZ8PnKg9XB83NlrBSaKfPqmZd/XzX4uVLGqRi7GkHeD+JOsvHMS2nqzoZi5oa7nW3Ph6V1ZrGpKs
kxcxf8NSor9M/yUnLDpWWvKwkLq9UTLo146w9P7wIodafw1E9D4O2zWTcok/kpecgSm48RFprLp3
QNwNstppBttdJB7pk0BtrNGx0lNlcKdocZQMfks6CikjMBTTvAEdQTbQx2Vp0jYb5XNiErHd0zuH
TmpGGFbAgTd2B2RoO0mbf8nnm70OfQpjos+LqKxOdOIu94xKW6C49IHDILYgqyv+K3SgvXegTDdU
OXXHAQJznV6b6TWi3OXL0IIBSQb4l87GtxTSQSyDgFv3HZyu+oyPMcTX7tcH5MCHtVexpPCJfHHx
ZNKr0dPRDr8fR1uIkOQ07wR4fXGI6Nb0wRNc177Y951lUveSVQSzi8Kb9dqG4pfwukKGOwfWqKTq
kimO6cCMf8wP/yOkDOFfwSGZHwEp9VoBeStXhy0PiFz4YySZUe6XwdVcxQbIeIfysh1zIc4zLqxF
oINOPdSpCL4mXKZ7SXb2cEtniCpsFvgmPZ79Va0z34D7sw+sMs3faTOQ1rWbEC601TMMpzEawDky
ngdlniL6xbyHTz9jkjHnwfIYZ3kwja4ksfBjvrYx57WIKtANcIDitAdUyCICn7/NDsDy639kn3KP
UrH/bpQp3MSNjVmuqbU6xDLV4zfA3wn2SAYHKkx1jVrCKvHJKTQHdF//iiQYyQwWKXbSqsaO4hwm
Ord9dbQ5aPCyZIDrnER4idecHMImGg2+RgbMAcPQqsdjwkR7Tm8wze1qnHNqQF5LLyJaRLpah6ly
Rs1GJdcr8yAKy8fGrejdr+VBL52Xr8+A/Ch2/k+H4wxp1RTmuEG9ywQwISe1naiOsNCvOcxNicmz
0BJ5CJcke18FVALvUaMOgL+i5QTe0NsKT0cVOJuJ9PBqnW2wQFVuub2As0px0CTFbBEPZGOVosEd
G9cOhQ7Bmwl+RnFUpoMLHA/Dm10urk/Bpp5V6dcqPtRPM5z9CUHKXinKbRkbNG0wQ0BZRtDUe0NZ
PV4IkSY4VzcX3pEqhmuXB4/Ffw1/yIID/3xfrexgPhm/JaLV4g+GP6f5ldgF0ISwio6aSIt9ozi9
/6W7RlgfBtiaPfv5NHVbvO/3R9diSINHR2x7+KdGQd70NnyW++Pevw7wRSUJxlRe4bKf3YSeb/MD
2cBX591NqqV/iKylxxmGe6+TpELzhoTUv7puxb8V1O+QOENuXR2bRUrJSa9iCK/Dgfrr32Xw3lqU
erngWb2hib0y9K7UoVIhn73iRzk5bVdYviyqKe32ESdwobN/TKrAqF7Ih4I+6KsQHDq6sSRdBmy3
MSgy7NA5K9NSGyxBcG2sPHnZIP+5C7eHHwQA/7JHjVdBGhzNxg1fYY0X3ZC7ObybyZ5hnzhcIadm
C62lS7+luv6dLwtwLV3AXbNLXNxpBVXUw+RYvf76OrcIsElw8XEDhGtAk8WjdEIINnihllb5bWVU
nlkygT3hAAp6HIxTHT9Nux56rFVV1tWUsJUFaDdhrYb68DHhkVZr+YHyvyBh3x+flJk1As37S453
wJdRLawZXFmWqvkoyVDeizbqDtEzCS+Ltujc/nKfwMCXiSu9Rk+E+VTUQYb/AxCAzdDQjRSHhc1K
iVphiJ2XB1UMBuU5B3cSjWpazURSkw7ujw4v7TMFWNa6/iieN/zxqg5zu9H/pjvOSVk+X0OAb0Pc
AhgQXW2lKAUZstgObb8QpJHyLtub3pZze1umUlax+JAAO2/VMeUbt/xOhXkgCd4pvKHcNV9UobQV
q4v6hTSc/bJPk8DXNC+GE22avCdLyikqo4u3oWCRPf4HgBl+se75LvfPnREFqsv39aU/Ko9oZv1H
F3CdkRCBqgl9c14HddXQtv7o5yPgPyofAx6B3XLRc+7NWicwAlwaoyn0QaRYE/pSOf0tEBHaD6lj
ruMPis8xjly5k6xFQulaOnaKQFfFRXV6qgPo5E9HwG9vcLAX2gjHMtOrCdD7OAM6I8hTIHJ8dDWB
Mwh1jt5Rt1ciRVhg0ERbXMVGccU7J7O/aHHsotNPY3VfD9gKAVdydikMj6GoKycQTVN782oJBBX6
PnXkm8XdV8yGvcWRSn9Gd4nIkPWw6OQRLaW29vEPfNt4KHPxEbzHhamtFVZ3v79kWAPwvTluMd5u
QAyXfygbpFH11YMU8NKMBSx+cvm3Tr4nCOf7LVzxxuUEF8yLQEQ5DIwANx8YApO1hOcTuXNWh2Ue
Q3ESdCvajfmwpPxayhIvlCKlBqMmUDasuSTJ05zIiw+WJ3wTGIksn1FxTvv1HBUAGRQu2PYbS47X
nN548B1PX5R22JLNHQWrykaLbgdt7qXWihc5OlPUagHV74ovbvteWWUg2kvF75OwcPX1UXKLijXv
j8tinDFbBOjbk5F1n17rPpTl0QiXAafPCSadvK3ybvF/w+FcVB21ji7GQ6LGiGsN6yEvY5u7deio
dUI8U7sJgm1szAU5CVCh+IQOn4wH+QZ10KTfZXu7di0DEg1xpeaCscdHNgSyS4tyueK7KssKKwbc
FlxNzannSE2S6h2eHJfUlrAmk4mafaaYEtsPO10Y2oYNh/F0qx5lqbrqLBaL3Pr1hJgWD7f2+Dqv
1aHTZlnCEfiXjLCm5IwZkX+Zi5bKtOhDRPeBRPkFZkRph6SK3evmz105UCQDhZZo4wgdCtr1bTe/
p+/VTNEWrkjvcuXExR+QPvJTQCiBC5xyD/8BgPEZckanQtN3iTKw2AScJslEO66Mb4MwxCh5FlRS
O5XiCAkHDs30BQF+C3uPoeOYo7hHTmodprgYGCFUNmJ+XKAOpxdlIoqyRmyvxpEuRAtARhidb3Ad
PCfO8R7VjJcujdQRKcP+lZjXLRuYXDdWf4XFd4+uc3/Uo0HVRQSrDp5ZrJTv5lgCnKRnFbDtEcq7
MALSfX13ulA9ZktIolxIwVtvwhCHvPLvzNDPk/mgmTNe0sgpJowFcoej8afpmcBjk8Ilea8mvUyS
B9sypyUVfP9h3a4Wyb7/ImTWdvf7vvYfSAO5HjYfm/AiG/c50chs1q5TlQT50Og11ohb/OHgXYji
Rb0qxTkq02/gbYUkVAQIkrQ5xYD26R3MEQg+MEemJlR2iR7CVHlr3pZ3WXpn9jgNQQpxOfZdkxbT
icy3UI7fyFchq+nJKWQNMbtiDoKj0L1jT65w7ive2Enl4UQZL92h29zX9wnppepQNbdMWVRACSbt
6jYGX7I6yTYKAPP7GXAZZI/eP9/Kq0fjOTwWyIeN7iFYAAc1LoZyEujdBUT1helBkyhUYbX+wHq2
UtxlDX+soCIYfJsg9m7VFkEi7iX23xK6Ilpwi2nd7VFcKrsArNCoLrCEQHDJoTtUDkypPhb0w3sG
GVVWdZsA6hmHjg+P1rp8EoAUGHD4tl6ITwoyXOpA1Oe4DZcVuvlgDgMjYqt6Q1yFqioV163M20zl
2/QqnNKvnLTKabMyWwluc6U1FDGlXg0UZq42OV6oz2rgxC8CMsQkUcT0nu0UNuTS4ZzR0BJHiCe+
GTap+5FfqG3k8A18NRbMjuHMtDtnv3tbI9fitS5jXLQ+tDANKDBDdSpN6OIVHvcgs42bIvZBzzeF
NxdkmDIBEQlzt46Zgk6S1ctvBrmX5PwUe+0du0GzuNer3ahJLhU6KUaeK1q7KMCiZxEluJ/1e2Ff
EMgMbam6C3Us4g/edk6Xb+U1dl16kEk9GiZpGR++k8V877s4lUApExpMiImxoN9NwGYKyvEX7Ecn
zM4amryp7dkPqLzIiW86GQ4Wi0Z/dw/xPnYhf+LFUqM+vO06Hfy0e9ArNzR7FX816mRAfcK4umv3
KVd27EMt5/y/x0N3tC7hG5ZpbhZX2wL1Q41CdcNNsvnI4i2jXyM5hBkF1G3Iv8CRwqF8LgerI9vA
uzrJ8Q9XFyb4xGGxD5b0LyvUjz2x4DqEPvaW7GMUKy/QFENr17t3PzmPsdRGTXCf/JoA7pHAwnr1
7IMaDrS9rbyDKXRd96/K2Rs7eyDrpg5kjpQSlMD9qv5JP6e9zc2zHxvTUtxKP3CgIHTFj4eq3gK5
W/9jJOqIkSxCouIbDFvM6P5mknYfG0qk2k5llbQeqCMWj/zPADih44ME/64DRFyWNuDj9iVaRh2Z
W9hQ9BF4tHR7ExX3PaglTJS7v8xeMcN98F4YXwdOolcupCU57nGt3Ondfmf35VaprTtS32/eYGIo
ROu/BrnjZV5zUu0iw0JQ4+0Ea3alTPJQy/yI35i0Qb+HO326cLhnIfKiyhADUwBbpoPowYe/a+Wu
5z6Ti7MGpnz5PwKAy3Wwrrab72VOV4jEdiBcyY68aQw6mrm+IAtyzvq8By1cbpQHMZn2lSUcB8Ii
GeB7BgOkCZybko0Gv0mgjc/0lv9WFzzD1TADAs34RtsaI1yBmFR3blMxuGMC9lkkRbIxMJe8MsTh
1ezRtUC/YOikOkmnKhCmApdzuLSY/TNQNjwbE00ALw9pQOMBxwa5tS/X29tfcM9IWsBBi+cfAOrk
a0uLCP01QhagF6MJPdmibCDY8HAGHj6wsqqkrKBy+uIsoP0w8Fb8Z91xZZf8RyHlyj1Jx1hpDLk1
zpa1X1k+hXR+S3fhryuQWlmHnDl9IXOayi4DicvkEmnfWvATBVfdvoLdfKXu1kz/N0JXW9vVzaoI
PceeCMaIsbyBMDDz2GxNzKQj4P0y9kYFP/weQl+N326N1CnP2Hz3jSRZW9R+F5frLoBDy/pGtRB0
UIbTGB4kWeIx2NVOjy1zYkBNKJpehBtiLa71Vq0tRbhHAQlll4ljQR3saBLK7UYlnt7BTejTCRMP
iOb0TslPEsGthEeFwebrhold1dBZ7Ys1EvBqGlRU7JnweVDpsgl9jGR+RIRZJUjczAjue9A8Q0Mt
Zqi7pvS8Sj0z4ONaTYGZT7e+gmRQMZx/fkPlXu3HRLEj4P4NcakaoonSum94tzUMN6EmYV/E6Hz1
fT3r64PDAEzo8Fb2oHJga2SHFrnajcxgYGn9xd6M6cqE7D0J5XBaxyaeRTcES/w28X39LPgowDo2
kgow3AGOHQS8KllCR4U857dLwQNpxiqtEXjKX8J2IF1BW0OGxcGCuH0R9j5/g9ojfeMvHpdLgjct
eItB0KnFR4saNEBc8ocs80/9U/jB1g2Y88KxpkjtlS7dMFqc88iCirJArgX/Ab3/7swDkDOCSMVi
q/x23PkHfNfH/bFC6Agp9lw5d6LrDOZX0g6aDcCAHh0mqemYsoCFL0tt3DudGYnTHT+Gks9zLh9Z
iulf+By4cV+RNrtS2S5oxPG5MnA/CI62pT/LTchNdhTNd4q1manBbvc94JdnqPqLjWfW7bN97Rqh
MtGiJjsW0ggH8lBnp3la2WkcPIgdLOo9BzEHxoT5I6IKtGNJPQg9SXo+JHGNiNofTglbBNOCU6NC
sgeey/dh7JYpzqoj/tZmrCnAGNcCwv5hndFMAvaKY2iMCOvzVGpYQVTGOGmBL9eMpdl0WNmFSONk
kov3zyEjAA9dRJ3TQpkspHyIEnL4U90N0M/9QMyKYsnmB37Z5DF1RAj6+hHyb5ZUbNZNPKpLs4ow
m7Je2aFQQrzVbTkToXuY3TNntjn71WFIS6/oD05LpsnypHJ8JzVRxeW/SlN5AC5LQMASpbOe+xmX
8WjgqvpRz7wzVurZ3pRW4dFzJiAqiQqHa3VQxLG8uq/eR7aR+rCDdwu2UcA0HnJ9uEQnoG3/voDw
ATUS/KipP3zkBobC6t0VeG7Uvdw2HkTXV596fgFCWtvBvqyb3+M/iHwhHC22qiYWHHIqqCLVCiXK
WjwOqJCxBZljfPADohgPljtnlvnhHJ/q/8QPZz2saNkcJFgOwj1LpmVkpTPS0Sr2Fj68GDGxXPzG
fafOIyU7EKxUOesROqA+9S5JMrbVNFeVggEPXyhUJoTEsso/b5KePGnxO5qt6Hb2JTVFs3dWWnRv
bnl5CviteXtJ+YUdrJA1bd7ajpw8m2sgWMzX6SWO30YQDwkmGcEn0B2Oeco1hz/02icWsDxeBF/X
NDC9e/2dHafJStiknVTzbZssq5qXoK8vKZUrowB1RqoSkMF2oksO5mI6QqidQdQtTeXg2IudHt7f
Jgvf7H9/kQ3D0+i5+vgyM5qJUI3o/sZQlZq/uq7UY83EGRxxXaTdG3UdXCH4ev9ITr4rDnXqtGxC
VyevEgBvVokKiO6f2pwtMoRVW1ZOTJtbUh4igNkCzMYtaGanHJlyiip5DBVM9Uw48OekX+VBqK7L
Iu/vF3J3o7tCb5Fv7KeRraOrTtLhMoyeUSGRBDkgKjpx20FWfRhJ43itNN8LeNYaUv8Oi3MTwVoo
+49e0Lzl8Y/eMNaS2k013dQXskuOhaF4B/LYiYwuZVzIF6IDbLgu+A2OS5Ul6HRfrTZT6VrZd2IS
6H28c5JIIjCS1HPfyUOFpZ+oD8Iqan7g/8Y4ou0oAyxatUBNhrTrKVgsFT0j5s8HgjlGGZSAoDjA
kX2kMT/jxGeNag4SaiJixHtBIV5jKz/+R8ca5MzRVnAZ3jXNlfMK0+cXd32fZeLNGeuJ0F/J0Y4J
F5obyIIM5aHow/UYp/yP+15BIuaveKmXVI5UiAhONmzwK6nnlCunkBmmHixLCn1b4LNKaUAMVMbb
+csFSiSw/y0XtGPW/a1GhE6Y/rlF5rk/zADvz8Nf36lOVR4HuBx72quqL9e1hrO0w91zcFIieY23
Ikxf6Ydi5p6lcfyMbShMm48xxhjTwlfp3BE725yg58nNCjQlhDX0tszKbDCf6juOKdBRy3yyWNG2
qsEZE8f2yXMrDxGpjuPdM294vQwbD8++mXyPyX4XjIvpGr7pSqFgRKBXogsFT8z9dQzRffgMdVt8
QMrwNrJVS2FYyiG6+74JBSDd36ZEtPvwN/WV2LiqJ66YfolvJPF+hwHL23l9r/56VSdIv1zz56z1
f8mH07X8fxvXq0yTjihxK/jL/1Lxbf8cU0x1fLdqWlgm/hWZPxmZckKnfoFMvqX52L+M3cPXBfh+
b+cnVBCvLxGNirr1sloDjXhCYqvNN3FsaXf9mSA8e4uaYHvRPfYe23eQej+VhFgqHbzbhla2tAjG
DtoXHGUu5RKspKwIOAlyPaMz2Y2R9fGrt7u5A6eNMzXokN88IvD4xDH8S85FVS8H7mtw+dgHwRij
zaQhbyff2PeDXIhOxUI0/eQiy2BOPLTMVOsfzhUQr7OvygRzqYwY42Snf+zY+w8sArCpReV9fthV
j+YMwjlbZblJypl1wZ2DMonxzPuDm/cOB9lUKHkT8XuqIqwsTSKIaen/TWVu6nHnhb5vj+UfiRgD
mka9Dbzwm/qwga2f1rnIfPiEyGWl8OR2H1SNX04zZPVtGJT+Uk7pfPoi/PfHdyNNif8olTC1Abiz
VmAEj/lqFacyGH2itaeKz4qKEXp6gdKGyEDQstUwkAu2ZpUk9649GYf0wNk9X/Q09yQVnMgTY1C9
8gL16Kq3NW+2aZgubOt8LmV7qcIPeTURRnFGwFPW1OYypl3gPuTSXOPNVJnoCRAjunJOseuqEfA0
MTa9yXtEy9No1Vxj2kCuCBieRbgzZCDCnD+rlkq6ib7wPU+FhdvgD8iLlR2O/ATgtl0mqbnaTLyC
rfUb0Yif02evr6EeQBYMRqxQ7ai9ZnN/MfNAo1qPyBkbDVtoPp7QvCr0TeZzaGDrE+WfhlXO/QCd
870Yunew9USsZKl5ILNw7WuKSe7OcVz8K9oFsAdyYNMtRDq8CunMmpVB38xTj8wA5vVK40j2rCi0
OhAjj9x0PICa84DodSsfZJp0bq3jPjddZuj9Fsvm+22V4sDbC8ZeRbRU9aJZnS4XGZlXE+Tst3gV
/TVdedp3uLn3uYjLV0E929B+Bt2vZZ3BgH+X+NfhTZgr06kr7FfrZNMmqz3fCESNtJsczOEZm61d
g4AmsiarNYI4htTmdStlpGyQTd8JwU/Xf1i0joAznD4xFWGJG2tbciRXpAcOgSoXXhShVnErj9dS
hiVDpDJPmJnNTo3DOqpcoeiJ5t/283bfjJKkazpOLjqgdQELMYJkHeJpBVvuFImPhuHQ9qC4Ffka
huRhosuu96xQfuqyeatHJwJVgGvFudRuhGQ27ydugKWJrhJYgLtOwXCatYQIIfQrKa2BfBX/U8qN
zUcZJNG6MgpU02UTOoxiGCJGI0+Pf32Uucjqss2Ju+tZKTrv6xuA3DGMVvyePNAekv/Kww2bH3Wm
ZpyiVcauMFU5dWCnelfrkP/kDn96dKS842p9vTgVdFc1jowZ8zlGoERA/whlvPCb1zunM//Ki6Lx
eEJ9yo54pHGdnqmEZFJhgxJP+jExuT7s+gCp0TXRVV9vRIfYokCnZo4pr/a/qe//ULxw+AjGG7Qo
XIL4jbNyt7LkFB3h+lJS/KD8ZYZ+aKicXlvBvDBQv7BM7hr3HVyX0t6Qce65u7e6yiQjfZp+VB8y
p7mbl3DlT98ZBxzlO4KreZXiMR7Bu1lg9SCmrRswVGNcLY2HEjyL7QjHPcEQz+8daA71yQBSVFUs
tSCdkki397d403CnwJ032yq9dDO4LMaukJsFC72dsKNR9hdqukeHRRGLmKpTIWKnUJWOb5gjVUsh
zkRO0oW8kbQaZUhS68vU6ZVNbWhuy+qsEu8cVf+b0NI5m3NQjAa+TsBkg0F6z0ibmbBF/KLGZvKW
IxDJf/yi6ejHmzAg8Uge8d9eKzl7S0iKDEmB7wXPpvyGpzci8dBAXP+cd/jbLjMrD9SMmpppBw0Z
U8jbjkfTLkgVnVZYPWJ8FCnE0Namo38LqseaHA7LOjDEs7+elz5DQV7v5+xy8Z4NL1jBSy/oLvjV
ZVcL6j3069LCvKnJ5MONfSGS8CcGa8ENWBBhcqJ3uUN+sAATFojPiboSAi1npWb2L1u6XhwWSOLA
WWYJblRv8w1EDkiK+x6dI54qWB7LYWSzcOIt4JoW+YqAFbr+5XcdxzjmPPg8H+nBf6DUvItoCQRl
T2qxeLuoOrnXl+DEKXr6ptFx/uh7hC+Nqygw/yrlqzR4803w1+nIVK34EpR0UCrVxfRgy1Pu6Bsl
Z83EJYDB/p/qVmeSgA40ZyrcpSAwyrWm9ErXBc2M7LJwBeV25ac+05pxeEtJ1GZnb4SZMU2ZCP9L
xU6jgO371dwEtLOHgYrkJvZTQU9WsCXpA/svIUoWf94ua5ZadDoNxHIlmdWA7gu/V47k34jh/xO7
NmLf8L/rBc9wy+j6pv1QgzgTnvBeRCV7zsChR44dZn+0dTJpjntDFzwAECoB7SEnpuMNv0XNKlnY
6b3XWMlXz1URJ6XzsjqVaBkvMvvVmwFczt/VyGkB/C2HUD1xiWWVRqkzbJjkd5MVwiUzcG5j0oRg
D5C7DqBUW2LXiJ5KqZzHgCmBAZ7vab378zrB2tuLvXXsG+BA9z1w67CuRpQQgkalyeBQbILuFLB/
UYxD2HcMa4sUN/uR+ocuRNkVA67pNnCOQa3+N+cX9tOs5y/i9P2z7laP9ALatP2QcEKR9dSn6jc3
W6/sSo3OXw2Y7g8YY0NOLIgALa0xRPr7qEI9x8o0wmGmeKBUA9rHK7aKSImpv94og2nq0Yd8bXjO
H5ObUOtGnKz+QgW72LEbMjLd4DbSfpyUfUw1rcEfGT0nKnwjgSeJSEyfUchynFfnO86Evb7qfVvk
ECxIbJ3GYCjUu+5Hbc+T6cVahSjjKuwJbSSwgPbNyA0j+YrCA8uTdxt0XooJCNxZxIEZo+ClJPJK
6RL6gCQbhuP/rw3cvaFl5pdgO84UinQ1YWTbOYKUdOcNE9wbu4lj0WiegQrgHTta21HIdvFGpUlO
EJ0ry1+5UeoHsT2rbPY6GCTOOVQxyv7EbTaR0YOgbakV96QKTloUZKnpnbAcHYXNJwccGgoNaGg8
eueSRvE5b1FO90SY54QoKzJgZZq2WpyKRfabB5C0jGalndYRnYFoWm7pL2RpybxGt+aYs+gTHgJ9
/yi8ylENlA/2fXKYCjSQEMdj2GrdGWbZwKb7yTry2C++1uWLm9Tj3WxQiE4g4J9aS7JXIhD0A15w
aEMAAw9rrfjpAS3CF2colqK+IwTdPm2JBxzzpb/yO7PFE+ZclhsQVh4YmpID2IUc9ikCWicG+MvG
Y9XKTiV+Tx/pGbaAPBj5ZmUnbh7hy5cUHUK+Wj9InGTKnrLTJ6UkXHszjv61u/n2nJQAaR6RmwbA
KEjwIvvkiFs5+gcvAOJvyQVuWYr0SpCVcWdLzMyPn5peKxUHx3iPWaHRkt0K4fEsxwvP3MA5jh2/
59TsV+PTwZMhUhvb3PgzNqfOQKJzld/CBhs2TqxTzTboMYUairQYi9ngWCh7F+Ta+70sOqxZ3x6A
l9NpUwRULIFfd6DPzDKMfuRZwMceWvh2rQB08DGcL36lV9jTOZ1Q/RDkKmpvn9bCuBhq8dD65IB+
Ev6ol7kW1yxWuP7jynYs2geC0fDSWGCX2dUXJEO8YvSus8lhQzK49xDW3FC9M+OJE6YrcR/0v3wp
vv8STXB6wesQF+e1fQ5Y5Wd25cGMkMbq8ekd33l9Ls/ba/bGr4xNiVF2LVtCxF3M32wZIxvBdxCV
HgSMdWSXtuzOWYyGWfKCqXGeiY2sxJa1e0XvINkK9UGI/e2ADUIvJ53tQ/yhv4hdo0C6mpNWLs/c
eUhqupWeCf/PPDof2Wqhw6ZE7O4dPX/Izo9dS2MEcb1L/LuJJBpJAY/6vHylMKRynC9fKsZtOPGF
AsQ/u/z1TKOCBF9eYWwZuJ0IxDSV1iCcYNC7zPU1qA/J1d52f8x4vUijZiMKcFcRBjm6/to+cqaw
DaNEv/qcZu54X8G/kRbhC8EkDy9LeAIuZN0ULfvjtfPuTJ6jeXB2an1DWSekkybDBF/j70Kpcna9
esiHYKXFmPMy2LtN20+nqX+pcuDkrMEfVu0RGTx3v6jc9v8SAo7cr/OTMzuOrvfMrmtBp71f6RKi
dQUA03F393asi9NNQwsvN9BH9umwkX59OUsRqktAVnehZPO407klgDwlNdOQO01WOr1LQB4DrEBK
vrBJzGy9z9hhTFXAZCxNO/K7FL2POe41B7PgXbzDmuhkAzGqXPsBKSZefQ5E4QDlT+PHE8fdRAnJ
d6uY+3eeDoVuA5GL/pLmw+VYRKEEQ/65Ubbj1esms0etB3j369gHQDV+MGYs0qUH/D/Toxtsb/Uj
E8mTchUPT/AH4/JcY4idFbMZ2tV0QOUQWbyAOzzzH4hNFVZM2DoDa1h4Vkp1rQprZNUJtJrDqTtK
BzPoo6BhMZP78+K/IdxeZ5Rw9FHmEpN+HbXfYSAvTiVSwVVoI+cf8gV7eGOK9i0YNSMWQT3Knadk
5Pc0dkxgl/gaOKtEaALvsciFrFmGgyOyMBkoCOYkk7SSJx2suRn+8PUS3vpn6xHjrfe1FhE2jRhJ
v8MqyDg7+nGsLhbkSbGvAFozVtOlhEmaTiuktiaA6u/WJD6Jd7yE1lf/EMBSGkDgfcpjL26hsFgp
gzarF2Tll6LSuIwLGr3o8zReTsTVUT5JxZUPhvtznc0ujKICbP7aC/Iirj9BbmRAkmTmEUFm1WS7
yk4JtMv32ibPaxITZIawO69z3Gdf1O0o1asf4B8Pp57I6n7noyT2c3ewemit93zqCXKNmOZPfMRZ
vbaXPi6Ceg2hXiiNgrqbmyqioTo//5PgM6U1cd4dhcBwof68ydo7H18R4KeXvQVG+yBWX6QELyrl
sOGMSNzxqV8GLaPWrfVSougvu8OtND7/Gk42lkVTqC5A4yHmmnb/qG4O9c9hAyqIh+hgvpHvDQHC
qQjtglNm84wtEOPoKtdKoa04cSivBVDLxpXe6C5GPB8tpJJyb9DbNHgybHvCbs2ioXPbYSoYW0ze
ZLNuS3Nad/VMgFuzYspXMzu4Kn8NQ+1nsT2XZdQqQa1VeIVFMqkeCSt6Z5xbThNzUVLXkPgKtzGk
psit/zONPYklj3b5DzGOJLSiGPHOC10QaWKEuW9NYgCoJl/eILek9iDQZMANDUWtAZ6HRaeF2zdf
LUM7WRBSGGFQG9UiBoQIA3+BLVcWLqMr23K5q9Kg2t31Her3WQZ5oo0wNfIYuD/a3wwcO2/lt3nX
p8paiSeUn0TZgLmz6lzSsti/YV+fiXNcm7pmgeUG3+hkLW2mBsuAX+1yhNpUv8C0jWvIgV6StjX8
iYKMvRBT4xoqY9pw0+rNtDPWuN9lg4Eq77P3J+84nAk84EKt/CdG6fvFrLr1CHn27Zq0M4dgCbB3
2dYrpEck3QT0pUtKEG2m//s+jZGxdwxbkVGoTejztqX5E7pmZk1Bs2DAhtA9D/xJSMAd/kBmSwTe
dXfSY3Z5eOEOGkKoyDcJ0DPBMUv8UljJADHqUHGyAAb1mM2mm9Qwtc+3uhXHtGWDnikuiGw2KTaL
7ZjpVbFO412pQ7EpC9JibXr2nqquMNVDD5SeFH+IPHyBmsDI5CNyTIv6OPPAeNjZQwzdoj+/KO5h
swucLbEho/IfgGTPS1LffHlBclw50v9OUkjwlAWIcGqkC60TfEOuCWMILKoiWNA1Uw54e+HHFMS5
Tk6T7sEwHZdMDn3kR2iq/sqy7XOwzB8ByIzPUecNSd5lwPtitkbyaweRkPo7SnPymvDR6aPzgbtb
nK7jj/4HvaV1IpQra8rlOLmWqoUOQsErpd6r37y61XWb+8b/8EEhFZPNhCLP/rFr1k9z/09CirtP
/6/UyJRPwyw29OZQv8ft4Fgvd9dRIRtTh/KY9P0GSDQdKxkOqHKS9Rb532hivLLZLhg4YpvmpCz5
41fwyXfri3U0ATfB9Y4tECt9hs8paqUxr05NM0bPm7wa+Rmin9q/cDIQw+20fC4GcXvS56SrjBm5
01H6X1UAJuOc4HWh5h2VXCiXo5COEwKYpt1uhJYYaUo5NPSZcevEiDgHS70xNs0DvVbpjEuXfZXJ
7sccqhFcsWUl9Shy4MrkFs2t5qHhCMyEtTveadKgMzeC5R4ZVM/GNBs4aGUiUYWhmCKdkODiLmpf
UK4STh/ScfycH7yozXx84TGpQltWozNkEmAs5hDHWJygVIqYT7aRmRQBxJ2pPkrjaVfHiToR7I4X
xTYyKRcZRBvrtGIYIikuiFg51U/3EznvdrKB4/ICjn0Ym2j1KNSTYIfFUaBSXZ1OZipc8+HPQ/XD
v3s6dZSntwMXjiRmloHxIzzUDQqCSZn1WhN89xBnZlVOf/ZyEaMpxCQQ9uq9015OJKfCIrPBxDkJ
qMD/BKWNPLwtuqcVUvINHXMIJiiuitjOrgP090BOdXnzZXbKrLcGySOsfCX1NZ90akTreVEoFor5
9GoTYmNC7I4zEchBoinWvcX/aqLZ1b9K1iD11SHiILti/W/A7KS1Vrh9P5R4hSVacB4v/2/gyIBm
i13xVu+EYydIPLfq7DJT7tIpmEcykcEixkW66FmnhqyDtpjndqqzYVri9GmjkQdeajvcvOr6J4VJ
Rj7XNTajvNN3Y0KKg0AjfYdSP+A/QZRSVS655ipeEzvLvqDl0eg1/uaLar7EaAt7XkoZL/Ha/Gzk
UwDdS6UFGyJyi5JIr3uKZlJBEWugVlXs4XU6LiSq9ycDp3AyrHHUM1jQGgBVMhdShx1tseo6QouZ
3Fns/JG+NmF0EPlmlRqS48ORLFbpDrQ3AUsJpl4deN9S9Jh7W3PK30SzPFO26BYXqFvoz2EfeeDr
RH/wcIZveceGXXkFzjSqu2Ymc375T+9zKl7GrTdEq7LkSe1SkYrMCyuEd79r3cpeIGO341l4FwEm
TTc32+nwy+0mmakbYFwylZfHFPdHImK7O3K032qWufJ/g6lzEW9wLC/9qGME/xM467TU+0G1zm97
aP5kSoE8mGKIluGr7kUxxJ9o1eyFdTb7VGAYEKibOHkDXgkOORwUwp26GIHA+zULVRTSjmu5LWda
23cHFEc99AEH/nRHyp1ZZ3PIklcq/W1AT7SCh5xH5S1pmYnGva6JIXxNi6M6espXPyN1kQ4iwO6v
XzJgYpHXCE2937kkktAcjnBbmcuuuyHTpgUy+19atxT8VuWjnffRcdSXIdbWQWuL5Ys+w39cjX7Q
ydzjlB40AaWB0S+20OMmyGoQ9LPrM5pZ6JW0S2dDDaUYBtrKgxmEW5lrWVEz74pTAXR1y3WVtkeB
d/Di0kIzoanMbTmf5wbX/c1TFRR4JKBrFONfczrhqiU+fkhOON1X5l2izVADPZ+Nve+lwGlmZSSE
BULlt2rBY+W4M0ebm21O/XyLM8ePTB4x+Hoz6T51DbXbiaNmhxaADYGoOtDKU23kWNWfWGypQqT7
R3Tns0hI3lbaTKxADxEaa94/eri6SEQibZxZHxWdViFcKSsrMYXX6rALLP29r3sYs4043grfci8K
iqGHLguV50c+ASTMTDOoHZ98s4qYiXx3a04ueE0G9hgjDtom8+EyzIifYl/fUPoOGBf+XuH2Npig
eBcKBoFH0j3whOmDSXFabULK5qBCnRtmHt5J3Yp4LfUW54co/gHZmKEgB0JuvAExlsHtcbroYy/a
EkK3Z72jxGw8IN6jSEisty9mEd6QSHE+6L3gEn/W7jPPwqXR6C1qcrgREhcFEDoMzya/u6p0whhp
ORc5FVNF+njk9GQ4/7F0S+9yBV+k+fv58XPLdOhuXuF/oHDBiU/yHwvZMQROMnro+yjiwnRpFEZy
rN1sTPbhPSKXbJo5X/vBxrVAsNODeVATTYfdTuuZN7QFpNDTzvg0l2URZoz+0KH9BxgGeCZdm1Pv
XIrCaQtXAIEX9HHYn4KX/MZxtU1ql1HtJUPbnk1LnesK0h31GzHHMotZtfTTdXUWUmojtl0Be8Aq
GQbGvSer0/1VUu5+VIkfiqwPDE+4QgEmkBqVhnXAwLJnmU22ZWBQyFTwjIFgYX9dApKw1jUkqR6A
PhJrhjd77PPl5nOEggrq2lEDXFu8kkVu0u+IdlZWV7pnZ7qn+1p441neCYpt0FtDVf9mI8Af7W0E
nNU5uXWewbvUJSnKaATz1CBg0+/sqxvteXD4K+zcA/uyZtLiSNlvygagkwwdW90CYeZmdx3pRJIk
+xHhoLML/bjCf8+fDC7KmPdxsnsLawzjhrlF9feghAT5n/39i4WNkaLG8Rwnk1HwaM+O0PEahjmw
xhAuIyZZtmbUZn5Qdg/KXZNR4w8GBR2ATIp+9iC9Pg==
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
