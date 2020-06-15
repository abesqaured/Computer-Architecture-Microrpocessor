onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.InstructionRam

do {wave.do}

view wave
view structure
view signals

do {InstructionRam.udo}

run -all

quit -force
