// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Aug 28 22:29:40 2022
// Host        : DESKTOP-LUJVCA8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/TDD/lab02-g03/Ejercicios/Proyectos/Ejercicio3/vivado_project.srcs/sources_1/ip/WCLK_1/WCLK_stub.v
// Design      : WCLK
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module WCLK(clk_out1, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,locked,clk_in1" */;
  output clk_out1;
  output locked;
  input clk_in1;
endmodule
