vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../vivado_project.srcs/sources_1/ip/WCLK/WCLK_clk_wiz.v" \
"../../../../vivado_project.srcs/sources_1/ip/WCLK/WCLK.v" \


vlog -work xil_defaultlib \
"glbl.v"

