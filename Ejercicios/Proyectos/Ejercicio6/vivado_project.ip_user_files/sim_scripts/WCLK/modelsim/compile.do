vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic" \
"../../../../vivado_project.srcs/sources_1/ip/WCLK/WCLK_clk_wiz.v" \
"../../../../vivado_project.srcs/sources_1/ip/WCLK/WCLK.v" \


vlog -work xil_defaultlib \
"glbl.v"

