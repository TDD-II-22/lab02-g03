vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 "+incdir+../../../../Lab2.srcs/sources_1/ip/clk_wiz_0_1" \
"../../../../Lab2.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

