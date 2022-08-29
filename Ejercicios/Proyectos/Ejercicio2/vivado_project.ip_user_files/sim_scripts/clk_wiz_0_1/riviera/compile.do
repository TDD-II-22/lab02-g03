vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab2.srcs/sources_1/ip/clk_wiz_0_1" \
"../../../../Lab2.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

