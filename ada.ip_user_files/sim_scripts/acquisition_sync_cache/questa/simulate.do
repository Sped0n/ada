onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib acquisition_sync_cache_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {acquisition_sync_cache.udo}

run 1000ns

quit -force
