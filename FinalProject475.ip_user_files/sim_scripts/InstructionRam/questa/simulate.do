onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib InstructionRam_opt

do {wave.do}

view wave
view structure
view signals

do {InstructionRam.udo}

run -all

quit -force
