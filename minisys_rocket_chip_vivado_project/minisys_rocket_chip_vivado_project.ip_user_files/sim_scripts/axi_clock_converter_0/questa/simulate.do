onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axi_clock_converter_0_opt

do {wave.do}

view wave
view structure
view signals

do {axi_clock_converter_0.udo}

run -all

quit -force
