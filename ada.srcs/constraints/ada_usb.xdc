# Timing constarints
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]
create_clock -period 16.667 -name usb_clk -waveform {0.000 8.334} [get_ports usb_clk]

# IO constarints

## system clock
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R4} [get_ports sys_clk]

## system reset
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U2} [get_ports sys_rst_n]

## dac
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN D17} [get_ports {da_data[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E17} [get_ports {da_data[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F18} [get_ports {da_data[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F21} [get_ports {da_data[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M18} [get_ports {da_data[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L18} [get_ports {da_data[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H20} [get_ports {da_data[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G20} [get_ports {da_data[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N22} [get_ports da_clk]

## adc
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN K22} [get_ports {ad_data[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN K21} [get_ports {ad_data[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN J22} [get_ports {ad_data[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H22} [get_ports {ad_data[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G22} [get_ports {ad_data[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G21} [get_ports {ad_data[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E19} [get_ports {ad_data[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN D19} [get_ports {ad_data[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M21} [get_ports ad_clk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L21} [get_ports ad_otr]

## buzzer
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P16} [get_ports buzzer]

## key
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T1} [get_ports keys[0]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U1} [get_ports keys[1]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W2} [get_ports keys[2]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T3} [get_ports keys[3]]

## tpad
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T5} [get_ports tpad]

## seg
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN J14} [get_ports {seg_disp[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H14} [get_ports {seg_disp[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G13} [get_ports {seg_disp[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN K13} [get_ports {seg_disp[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G15} [get_ports {seg_disp[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L13} [get_ports {seg_disp[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G16} [get_ports {seg_disp[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H15} [get_ports {seg_disp[0]}]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G18} [get_ports {seg_sel[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H18} [get_ports {seg_sel[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G17} [get_ports {seg_sel[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H13} [get_ports {seg_sel[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H17} [get_ports {seg_sel[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN J15} [get_ports {seg_sel[0]}]

## led
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y2} [get_ports {led[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V2} [get_ports {led[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R3} [get_ports {led[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R2} [get_ports {led[0]}]

## usb
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AB5} [get_ports {usb_data[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA4} [get_ports {usb_data[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AB3} [get_ports {usb_data[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA3} [get_ports {usb_data[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AB2} [get_ports {usb_data[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AB1} [get_ports {usb_data[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA1} [get_ports {usb_data[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y1} [get_ports {usb_data[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V3} [get_ports usb_siwu_n]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y4} [get_ports usb_clk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V4} [get_ports usb_rd_n]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y3} [get_ports usb_wr_n]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W1} [get_ports usb_rxf_n]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA5} [get_ports usb_txe_n]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U3} [get_ports usb_oe_n]