vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" \
"../../../../vivado_project.srcs/sources_1/ip/WCLK/WCLK_clk_wiz.v" \
"../../../../vivado_project.srcs/sources_1/ip/WCLK/WCLK.v" \


vlog -work xil_defaultlib \
"glbl.v"

