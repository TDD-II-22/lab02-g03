// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Aug 26 08:48:48 2022
// Host        : Andrey-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top WCLK -prefix
//               WCLK_ WCLK_stub.v
// Design      : WCLK
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module WCLK(CLK_10MHZ, locked, CLK_100MHZ)
/* synthesis syn_black_box black_box_pad_pin="CLK_10MHZ,locked,CLK_100MHZ" */;
  output CLK_10MHZ;
  output locked;
  input CLK_100MHZ;
endmodule
