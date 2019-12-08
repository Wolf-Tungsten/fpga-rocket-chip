onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axi_uart16550_0_opt

do {wave.do}

view wave
view structure
view signals

do {axi_uart16550_0.udo}

run -all

quit -force
