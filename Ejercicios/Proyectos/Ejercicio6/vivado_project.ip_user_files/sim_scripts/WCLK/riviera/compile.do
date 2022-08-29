vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../vivado_project.srcs/sources_1/ip/WCLK/WCLK_clk_wiz.v" \
"../../../../vivado_project.srcs/sources_1/ip/WCLK/WCLK.v" \


vlog -work xil_defaultlib \
"glbl.v"

