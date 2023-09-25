onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib tri_rom_256x8b_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {tri_rom_256x8b.udo}

run 1000ns

quit -force