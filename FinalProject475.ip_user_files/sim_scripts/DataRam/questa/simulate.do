onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib DataRam_opt

do {wave.do}

view wave
view structure
view signals

do {DataRam.udo}

run -all

quit -force
