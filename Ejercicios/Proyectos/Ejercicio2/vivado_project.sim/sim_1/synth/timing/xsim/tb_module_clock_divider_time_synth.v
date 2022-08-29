// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Aug 18 15:10:30 2022
// Host        : Andrey-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/carlo/Andrey/TEC/Semestre_II_2022/Taller_Digitales/Laboratorios/Laboratorio_2/Proyectos/Lab2/Lab2.sim/sim_1/synth/timing/xsim/tb_module_clock_divider_time_synth.v
// Design      : module_register_pp
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module module_register_pp
   (clk_i,
    rst_i,
    control_i,
    entrada_i,
    salida_o);
  input clk_i;
  input rst_i;
  input control_i;
  input [15:0]entrada_i;
  output [15:0]salida_o;

  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire control_i;
  wire control_i_IBUF;
  wire [15:0]entrada_i;
  wire [15:0]entrada_i_IBUF;
  wire p_0_in;
  wire rst_i;
  wire rst_i_IBUF;
  wire [15:0]salida_o;
  wire [15:0]salida_o_OBUF;

initial begin
 $sdf_annotate("tb_module_clock_divider_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  IBUF control_i_IBUF_inst
       (.I(control_i),
        .O(control_i_IBUF));
  IBUF \entrada_i_IBUF[0]_inst 
       (.I(entrada_i[0]),
        .O(entrada_i_IBUF[0]));
  IBUF \entrada_i_IBUF[10]_inst 
       (.I(entrada_i[10]),
        .O(entrada_i_IBUF[10]));
  IBUF \entrada_i_IBUF[11]_inst 
       (.I(entrada_i[11]),
        .O(entrada_i_IBUF[11]));
  IBUF \entrada_i_IBUF[12]_inst 
       (.I(entrada_i[12]),
        .O(entrada_i_IBUF[12]));
  IBUF \entrada_i_IBUF[13]_inst 
       (.I(entrada_i[13]),
        .O(entrada_i_IBUF[13]));
  IBUF \entrada_i_IBUF[14]_inst 
       (.I(entrada_i[14]),
        .O(entrada_i_IBUF[14]));
  IBUF \entrada_i_IBUF[15]_inst 
       (.I(entrada_i[15]),
        .O(entrada_i_IBUF[15]));
  IBUF \entrada_i_IBUF[1]_inst 
       (.I(entrada_i[1]),
        .O(entrada_i_IBUF[1]));
  IBUF \entrada_i_IBUF[2]_inst 
       (.I(entrada_i[2]),
        .O(entrada_i_IBUF[2]));
  IBUF \entrada_i_IBUF[3]_inst 
       (.I(entrada_i[3]),
        .O(entrada_i_IBUF[3]));
  IBUF \entrada_i_IBUF[4]_inst 
       (.I(entrada_i[4]),
        .O(entrada_i_IBUF[4]));
  IBUF \entrada_i_IBUF[5]_inst 
       (.I(entrada_i[5]),
        .O(entrada_i_IBUF[5]));
  IBUF \entrada_i_IBUF[6]_inst 
       (.I(entrada_i[6]),
        .O(entrada_i_IBUF[6]));
  IBUF \entrada_i_IBUF[7]_inst 
       (.I(entrada_i[7]),
        .O(entrada_i_IBUF[7]));
  IBUF \entrada_i_IBUF[8]_inst 
       (.I(entrada_i[8]),
        .O(entrada_i_IBUF[8]));
  IBUF \entrada_i_IBUF[9]_inst 
       (.I(entrada_i[9]),
        .O(entrada_i_IBUF[9]));
  IBUF rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
  OBUF \salida_o_OBUF[0]_inst 
       (.I(salida_o_OBUF[0]),
        .O(salida_o[0]));
  OBUF \salida_o_OBUF[10]_inst 
       (.I(salida_o_OBUF[10]),
        .O(salida_o[10]));
  OBUF \salida_o_OBUF[11]_inst 
       (.I(salida_o_OBUF[11]),
        .O(salida_o[11]));
  OBUF \salida_o_OBUF[12]_inst 
       (.I(salida_o_OBUF[12]),
        .O(salida_o[12]));
  OBUF \salida_o_OBUF[13]_inst 
       (.I(salida_o_OBUF[13]),
        .O(salida_o[13]));
  OBUF \salida_o_OBUF[14]_inst 
       (.I(salida_o_OBUF[14]),
        .O(salida_o[14]));
  OBUF \salida_o_OBUF[15]_inst 
       (.I(salida_o_OBUF[15]),
        .O(salida_o[15]));
  OBUF \salida_o_OBUF[1]_inst 
       (.I(salida_o_OBUF[1]),
        .O(salida_o[1]));
  OBUF \salida_o_OBUF[2]_inst 
       (.I(salida_o_OBUF[2]),
        .O(salida_o[2]));
  OBUF \salida_o_OBUF[3]_inst 
       (.I(salida_o_OBUF[3]),
        .O(salida_o[3]));
  OBUF \salida_o_OBUF[4]_inst 
       (.I(salida_o_OBUF[4]),
        .O(salida_o[4]));
  OBUF \salida_o_OBUF[5]_inst 
       (.I(salida_o_OBUF[5]),
        .O(salida_o[5]));
  OBUF \salida_o_OBUF[6]_inst 
       (.I(salida_o_OBUF[6]),
        .O(salida_o[6]));
  OBUF \salida_o_OBUF[7]_inst 
       (.I(salida_o_OBUF[7]),
        .O(salida_o[7]));
  OBUF \salida_o_OBUF[8]_inst 
       (.I(salida_o_OBUF[8]),
        .O(salida_o[8]));
  OBUF \salida_o_OBUF[9]_inst 
       (.I(salida_o_OBUF[9]),
        .O(salida_o[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \state[15]_i_1 
       (.I0(rst_i_IBUF),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[0]),
        .Q(salida_o_OBUF[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[10] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[10]),
        .Q(salida_o_OBUF[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[11] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[11]),
        .Q(salida_o_OBUF[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[12] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[12]),
        .Q(salida_o_OBUF[12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[13] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[13]),
        .Q(salida_o_OBUF[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[14] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[14]),
        .Q(salida_o_OBUF[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[15] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[15]),
        .Q(salida_o_OBUF[15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[1]),
        .Q(salida_o_OBUF[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[2]),
        .Q(salida_o_OBUF[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[3]),
        .Q(salida_o_OBUF[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[4]),
        .Q(salida_o_OBUF[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[5]),
        .Q(salida_o_OBUF[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[6]),
        .Q(salida_o_OBUF[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[7]),
        .Q(salida_o_OBUF[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[8]),
        .Q(salida_o_OBUF[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[9] 
       (.C(clk_i_IBUF_BUFG),
        .CE(control_i_IBUF),
        .D(entrada_i_IBUF[9]),
        .Q(salida_o_OBUF[9]),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
