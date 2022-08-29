vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../wizard_clock_10MHz.srcs/sources_1/ip/clk_wiz_10MHZ" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../wizard_clock_10MHz.srcs/sources_1/ip/clk_wiz_10MHZ" \
"../../../../wizard_clock_10MHz.srcs/sources_1/ip/clk_wiz_10MHZ/clk_wiz_10MHZ_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

