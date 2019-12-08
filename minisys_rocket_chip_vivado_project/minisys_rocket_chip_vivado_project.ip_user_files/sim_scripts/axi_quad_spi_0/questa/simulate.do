onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axi_quad_spi_0_opt

do {wave.do}

view wave
view structure
view signals

do {axi_quad_spi_0.udo}

run -all

quit -force
