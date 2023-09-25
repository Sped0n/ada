# Timing constarints
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]

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