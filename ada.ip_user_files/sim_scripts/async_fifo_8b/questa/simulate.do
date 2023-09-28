onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib async_fifo_8b_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {async_fifo_8b.udo}

run 1000ns

quit -force
