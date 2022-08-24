// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Aug 24 08:23:38 2022
// Host        : DESKTOP-LUJVCA8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/TDD/lab02-g03/Teclado/wizard_clock_10MHz/wizard_clock_10MHz.srcs/sources_1/ip/clk_wiz_10MHZ/clk_wiz_10MHZ_stub.v
// Design      : clk_wiz_10MHZ
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_10MHZ(clk_out10MHz, clk_in100MHz)
/* synthesis syn_black_box black_box_pad_pin="clk_out10MHz,clk_in100MHz" */;
  output clk_out10MHz;
  input clk_in100MHz;
endmodule
