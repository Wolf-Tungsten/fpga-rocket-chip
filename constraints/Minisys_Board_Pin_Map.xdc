set_property -dict { PACKAGE_PIN Y18    IOSTANDARD LVCMOS33 } [get_ports { clock100 }]; 
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clock100}];

set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { buttonresetn }];

set_property -dict { PACKAGE_PIN V18    IOSTANDARD LVCMOS33 } [get_ports { uart_TX }]; 
set_property -dict { PACKAGE_PIN Y19    IOSTANDARD LVCMOS33 } [get_ports { uart_RX }]; 


set_property -dict { PACKAGE_PIN A21   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; 
set_property -dict { PACKAGE_PIN E22   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; 
set_property -dict { PACKAGE_PIN D22   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; 
set_property -dict { PACKAGE_PIN E21   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; 
set_property -dict { PACKAGE_PIN D21   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; 
set_property -dict { PACKAGE_PIN G21   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; 
set_property -dict { PACKAGE_PIN G22   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]; 
set_property -dict { PACKAGE_PIN F21   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]; 

set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { LED[8] }]; 
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { LED[9] }]; 
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { LED[10] }];
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { LED[11] }];
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { LED[12] }];
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { LED[13] }];
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { LED[14] }];
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { LED[15] }];

set_property -dict { PACKAGE_PIN N19    IOSTANDARD LVCMOS33 } [get_ports { sd_poweroff }]; 
set_property -dict { PACKAGE_PIN M22    IOSTANDARD LVCMOS33 } [get_ports { spi_sclock }]; 
set_property -dict { PACKAGE_PIN N22    IOSTANDARD LVCMOS33 } [get_ports { spi_mosi }]; 
set_property -dict { PACKAGE_PIN L18    IOSTANDARD LVCMOS33 } [get_ports { spi_miso }]; 
set_property -dict { PACKAGE_PIN L20    IOSTANDARD LVCMOS33 } [get_ports { spi_cs }]; 

set_property -dict { PACKAGE_PIN N5    IOSTANDARD LVCMOS33 } [get_ports { jtag_tck }]; 
set_property -dict { PACKAGE_PIN P6    IOSTANDARD LVCMOS33 } [get_ports { jtag_tms }]; 
set_property -dict { PACKAGE_PIN M6    IOSTANDARD LVCMOS33 } [get_ports { jtag_tdi }]; 
set_property -dict { PACKAGE_PIN M5    IOSTANDARD LVCMOS33 } [get_ports { jtag_tdo }]; 
set_property -dict { PACKAGE_PIN N2    IOSTANDARD LVCMOS33 } [get_ports { jtag_reset }]; 
