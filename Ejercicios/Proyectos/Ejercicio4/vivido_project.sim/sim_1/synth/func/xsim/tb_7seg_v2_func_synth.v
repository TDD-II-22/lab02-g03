// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Aug 27 18:28:54 2022
// Host        : Andrey-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/carlo/Andrey/TEC/Semestre_II_2022/Taller_Digitales/Laboratorios/Laboratorio_2/Repositorio/lab02-g03/Ejercicios/Proyectos/Ejercicio4/vivido_project.sim/sim_1/synth/func/xsim/tb_7seg_v2_func_synth.v
// Design      : top_simulate_7seg_v2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module WCLK
   (CLK_10MHZ,
    locked,
    CLK_100MHZ);
  output CLK_10MHZ;
  output locked;
  input CLK_100MHZ;

  wire CLK_100MHZ;
  wire CLK_10MHZ;
  wire locked;

  WCLK__WCLK_clk_wiz inst
       (.CLK_100MHZ(CLK_100MHZ),
        .CLK_10MHZ(CLK_10MHZ),
        .locked(locked));
endmodule

(* ORIG_REF_NAME = "WCLK_clk_wiz" *) 
module WCLK__WCLK_clk_wiz
   (CLK_10MHZ,
    locked,
    CLK_100MHZ);
  output CLK_10MHZ;
  output locked;
  input CLK_100MHZ;

  wire CLK_100MHZ;
  wire CLK_100MHZ_WCLK;
  wire CLK_10MHZ;
  wire CLK_10MHZ_WCLK;
  wire clkfbout_WCLK;
  wire clkfbout_buf_WCLK;
  wire locked;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_WCLK),
        .O(clkfbout_buf_WCLK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(CLK_100MHZ),
        .O(CLK_100MHZ_WCLK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(CLK_10MHZ_WCLK),
        .O(CLK_10MHZ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(41),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(82),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_WCLK),
        .CLKFBOUT(clkfbout_WCLK),
        .CLKIN1(CLK_100MHZ_WCLK),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(CLK_10MHZ_WCLK),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

module module_register_pp
   (display_po_OBUF,
    digit_select,
    control_reg_IBUF,
    reset_pi_IBUF,
    D,
    CLK);
  output [6:0]display_po_OBUF;
  input [2:0]digit_select;
  input control_reg_IBUF;
  input reset_pi_IBUF;
  input [31:0]D;
  input CLK;

  wire CLK;
  wire [31:0]D;
  wire control_reg_IBUF;
  wire [2:0]digit_select;
  wire [6:0]display_po_OBUF;
  wire \display_po_OBUF[0]_inst_i_10_n_0 ;
  wire \display_po_OBUF[0]_inst_i_11_n_0 ;
  wire \display_po_OBUF[0]_inst_i_13_n_0 ;
  wire \display_po_OBUF[0]_inst_i_2_n_0 ;
  wire \display_po_OBUF[0]_inst_i_3_n_0 ;
  wire \display_po_OBUF[0]_inst_i_4_n_0 ;
  wire \display_po_OBUF[0]_inst_i_5_n_0 ;
  wire \display_po_OBUF[0]_inst_i_6_n_0 ;
  wire \display_po_OBUF[0]_inst_i_7_n_0 ;
  wire \display_po_OBUF[0]_inst_i_8_n_0 ;
  wire \display_po_OBUF[0]_inst_i_9_n_0 ;
  wire \display_po_OBUF[1]_inst_i_10_n_0 ;
  wire \display_po_OBUF[1]_inst_i_11_n_0 ;
  wire \display_po_OBUF[1]_inst_i_13_n_0 ;
  wire \display_po_OBUF[1]_inst_i_2_n_0 ;
  wire \display_po_OBUF[1]_inst_i_3_n_0 ;
  wire \display_po_OBUF[1]_inst_i_4_n_0 ;
  wire \display_po_OBUF[1]_inst_i_5_n_0 ;
  wire \display_po_OBUF[1]_inst_i_6_n_0 ;
  wire \display_po_OBUF[1]_inst_i_7_n_0 ;
  wire \display_po_OBUF[1]_inst_i_8_n_0 ;
  wire \display_po_OBUF[1]_inst_i_9_n_0 ;
  wire \display_po_OBUF[2]_inst_i_10_n_0 ;
  wire \display_po_OBUF[2]_inst_i_11_n_0 ;
  wire \display_po_OBUF[2]_inst_i_13_n_0 ;
  wire \display_po_OBUF[2]_inst_i_2_n_0 ;
  wire \display_po_OBUF[2]_inst_i_3_n_0 ;
  wire \display_po_OBUF[2]_inst_i_4_n_0 ;
  wire \display_po_OBUF[2]_inst_i_5_n_0 ;
  wire \display_po_OBUF[2]_inst_i_6_n_0 ;
  wire \display_po_OBUF[2]_inst_i_7_n_0 ;
  wire \display_po_OBUF[2]_inst_i_8_n_0 ;
  wire \display_po_OBUF[2]_inst_i_9_n_0 ;
  wire \display_po_OBUF[3]_inst_i_10_n_0 ;
  wire \display_po_OBUF[3]_inst_i_11_n_0 ;
  wire \display_po_OBUF[3]_inst_i_13_n_0 ;
  wire \display_po_OBUF[3]_inst_i_2_n_0 ;
  wire \display_po_OBUF[3]_inst_i_3_n_0 ;
  wire \display_po_OBUF[3]_inst_i_4_n_0 ;
  wire \display_po_OBUF[3]_inst_i_5_n_0 ;
  wire \display_po_OBUF[3]_inst_i_6_n_0 ;
  wire \display_po_OBUF[3]_inst_i_7_n_0 ;
  wire \display_po_OBUF[3]_inst_i_8_n_0 ;
  wire \display_po_OBUF[3]_inst_i_9_n_0 ;
  wire \display_po_OBUF[4]_inst_i_10_n_0 ;
  wire \display_po_OBUF[4]_inst_i_11_n_0 ;
  wire \display_po_OBUF[4]_inst_i_13_n_0 ;
  wire \display_po_OBUF[4]_inst_i_2_n_0 ;
  wire \display_po_OBUF[4]_inst_i_3_n_0 ;
  wire \display_po_OBUF[4]_inst_i_4_n_0 ;
  wire \display_po_OBUF[4]_inst_i_5_n_0 ;
  wire \display_po_OBUF[4]_inst_i_6_n_0 ;
  wire \display_po_OBUF[4]_inst_i_7_n_0 ;
  wire \display_po_OBUF[4]_inst_i_8_n_0 ;
  wire \display_po_OBUF[4]_inst_i_9_n_0 ;
  wire \display_po_OBUF[5]_inst_i_10_n_0 ;
  wire \display_po_OBUF[5]_inst_i_11_n_0 ;
  wire \display_po_OBUF[5]_inst_i_13_n_0 ;
  wire \display_po_OBUF[5]_inst_i_2_n_0 ;
  wire \display_po_OBUF[5]_inst_i_3_n_0 ;
  wire \display_po_OBUF[5]_inst_i_4_n_0 ;
  wire \display_po_OBUF[5]_inst_i_5_n_0 ;
  wire \display_po_OBUF[5]_inst_i_6_n_0 ;
  wire \display_po_OBUF[5]_inst_i_7_n_0 ;
  wire \display_po_OBUF[5]_inst_i_8_n_0 ;
  wire \display_po_OBUF[5]_inst_i_9_n_0 ;
  wire \display_po_OBUF[6]_inst_i_10_n_0 ;
  wire \display_po_OBUF[6]_inst_i_11_n_0 ;
  wire \display_po_OBUF[6]_inst_i_13_n_0 ;
  wire \display_po_OBUF[6]_inst_i_2_n_0 ;
  wire \display_po_OBUF[6]_inst_i_3_n_0 ;
  wire \display_po_OBUF[6]_inst_i_4_n_0 ;
  wire \display_po_OBUF[6]_inst_i_5_n_0 ;
  wire \display_po_OBUF[6]_inst_i_6_n_0 ;
  wire \display_po_OBUF[6]_inst_i_7_n_0 ;
  wire \display_po_OBUF[6]_inst_i_8_n_0 ;
  wire \display_po_OBUF[6]_inst_i_9_n_0 ;
  wire reset_pi_IBUF;
  wire [6:0]\seg7_control/fun_display__263 ;
  wire [3:0]sel0;
  wire \state[31]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[10] ;
  wire \state_reg_n_0_[11] ;
  wire \state_reg_n_0_[12] ;
  wire \state_reg_n_0_[13] ;
  wire \state_reg_n_0_[14] ;
  wire \state_reg_n_0_[15] ;
  wire \state_reg_n_0_[16] ;
  wire \state_reg_n_0_[17] ;
  wire \state_reg_n_0_[18] ;
  wire \state_reg_n_0_[19] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[20] ;
  wire \state_reg_n_0_[21] ;
  wire \state_reg_n_0_[22] ;
  wire \state_reg_n_0_[23] ;
  wire \state_reg_n_0_[24] ;
  wire \state_reg_n_0_[25] ;
  wire \state_reg_n_0_[26] ;
  wire \state_reg_n_0_[27] ;
  wire \state_reg_n_0_[28] ;
  wire \state_reg_n_0_[29] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[30] ;
  wire \state_reg_n_0_[31] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[8] ;
  wire \state_reg_n_0_[9] ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_po_OBUF[0]_inst_i_1 
       (.I0(\display_po_OBUF[0]_inst_i_2_n_0 ),
        .I1(\display_po_OBUF[0]_inst_i_3_n_0 ),
        .I2(digit_select[2]),
        .I3(\display_po_OBUF[0]_inst_i_4_n_0 ),
        .I4(digit_select[1]),
        .I5(\display_po_OBUF[0]_inst_i_5_n_0 ),
        .O(display_po_OBUF[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_10 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[0]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_11 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[14] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(\state_reg_n_0_[13] ),
        .O(\display_po_OBUF[0]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_12 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/fun_display__263 [0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_13 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\display_po_OBUF[0]_inst_i_13_n_0 ));
  MUXF7 \display_po_OBUF[0]_inst_i_2 
       (.I0(\display_po_OBUF[0]_inst_i_6_n_0 ),
        .I1(\display_po_OBUF[0]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_2_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[0]_inst_i_3 
       (.I0(\display_po_OBUF[0]_inst_i_8_n_0 ),
        .I1(\display_po_OBUF[0]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_3_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[0]_inst_i_4 
       (.I0(\display_po_OBUF[0]_inst_i_10_n_0 ),
        .I1(\display_po_OBUF[0]_inst_i_11_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_4_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[0]_inst_i_5 
       (.I0(\seg7_control/fun_display__263 [0]),
        .I1(\display_po_OBUF[0]_inst_i_13_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_5_n_0 ),
        .S(digit_select[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[26] ),
        .I2(\state_reg_n_0_[24] ),
        .I3(\state_reg_n_0_[25] ),
        .O(\display_po_OBUF[0]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_7 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[30] ),
        .I2(\state_reg_n_0_[28] ),
        .I3(\state_reg_n_0_[29] ),
        .O(\display_po_OBUF[0]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_8 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[16] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[0]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_9 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[22] ),
        .I2(\state_reg_n_0_[20] ),
        .I3(\state_reg_n_0_[21] ),
        .O(\display_po_OBUF[0]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_po_OBUF[1]_inst_i_1 
       (.I0(\display_po_OBUF[1]_inst_i_2_n_0 ),
        .I1(\display_po_OBUF[1]_inst_i_3_n_0 ),
        .I2(digit_select[2]),
        .I3(\display_po_OBUF[1]_inst_i_4_n_0 ),
        .I4(digit_select[1]),
        .I5(\display_po_OBUF[1]_inst_i_5_n_0 ),
        .O(display_po_OBUF[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_10 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[8] ),
        .O(\display_po_OBUF[1]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_11 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[14] ),
        .I2(\state_reg_n_0_[13] ),
        .I3(\state_reg_n_0_[12] ),
        .O(\display_po_OBUF[1]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_12 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\seg7_control/fun_display__263 [1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_13 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\display_po_OBUF[1]_inst_i_13_n_0 ));
  MUXF7 \display_po_OBUF[1]_inst_i_2 
       (.I0(\display_po_OBUF[1]_inst_i_6_n_0 ),
        .I1(\display_po_OBUF[1]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_2_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[1]_inst_i_3 
       (.I0(\display_po_OBUF[1]_inst_i_8_n_0 ),
        .I1(\display_po_OBUF[1]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_3_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[1]_inst_i_4 
       (.I0(\display_po_OBUF[1]_inst_i_10_n_0 ),
        .I1(\display_po_OBUF[1]_inst_i_11_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_4_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[1]_inst_i_5 
       (.I0(\seg7_control/fun_display__263 [1]),
        .I1(\display_po_OBUF[1]_inst_i_13_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_5_n_0 ),
        .S(digit_select[0]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[26] ),
        .I2(\state_reg_n_0_[25] ),
        .I3(\state_reg_n_0_[24] ),
        .O(\display_po_OBUF[1]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_7 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[30] ),
        .I2(\state_reg_n_0_[29] ),
        .I3(\state_reg_n_0_[28] ),
        .O(\display_po_OBUF[1]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_8 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[17] ),
        .I3(\state_reg_n_0_[16] ),
        .O(\display_po_OBUF[1]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_9 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[22] ),
        .I2(\state_reg_n_0_[21] ),
        .I3(\state_reg_n_0_[20] ),
        .O(\display_po_OBUF[1]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_po_OBUF[2]_inst_i_1 
       (.I0(\display_po_OBUF[2]_inst_i_2_n_0 ),
        .I1(\display_po_OBUF[2]_inst_i_3_n_0 ),
        .I2(digit_select[2]),
        .I3(\display_po_OBUF[2]_inst_i_4_n_0 ),
        .I4(digit_select[1]),
        .I5(\display_po_OBUF[2]_inst_i_5_n_0 ),
        .O(display_po_OBUF[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_10 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[10] ),
        .O(\display_po_OBUF[2]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_11 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[13] ),
        .I3(\state_reg_n_0_[14] ),
        .O(\display_po_OBUF[2]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_12 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\seg7_control/fun_display__263 [2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_13 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\display_po_OBUF[2]_inst_i_13_n_0 ));
  MUXF7 \display_po_OBUF[2]_inst_i_2 
       (.I0(\display_po_OBUF[2]_inst_i_6_n_0 ),
        .I1(\display_po_OBUF[2]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[2]_inst_i_2_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[2]_inst_i_3 
       (.I0(\display_po_OBUF[2]_inst_i_8_n_0 ),
        .I1(\display_po_OBUF[2]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[2]_inst_i_3_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[2]_inst_i_4 
       (.I0(\display_po_OBUF[2]_inst_i_10_n_0 ),
        .I1(\display_po_OBUF[2]_inst_i_11_n_0 ),
        .O(\display_po_OBUF[2]_inst_i_4_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[2]_inst_i_5 
       (.I0(\seg7_control/fun_display__263 [2]),
        .I1(\display_po_OBUF[2]_inst_i_13_n_0 ),
        .O(\display_po_OBUF[2]_inst_i_5_n_0 ),
        .S(digit_select[0]));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[24] ),
        .I2(\state_reg_n_0_[25] ),
        .I3(\state_reg_n_0_[26] ),
        .O(\display_po_OBUF[2]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_7 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[28] ),
        .I2(\state_reg_n_0_[29] ),
        .I3(\state_reg_n_0_[30] ),
        .O(\display_po_OBUF[2]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_8 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[16] ),
        .I2(\state_reg_n_0_[17] ),
        .I3(\state_reg_n_0_[18] ),
        .O(\display_po_OBUF[2]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_9 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[20] ),
        .I2(\state_reg_n_0_[21] ),
        .I3(\state_reg_n_0_[22] ),
        .O(\display_po_OBUF[2]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_po_OBUF[3]_inst_i_1 
       (.I0(\display_po_OBUF[3]_inst_i_2_n_0 ),
        .I1(\display_po_OBUF[3]_inst_i_3_n_0 ),
        .I2(digit_select[2]),
        .I3(\display_po_OBUF[3]_inst_i_4_n_0 ),
        .I4(digit_select[1]),
        .I5(\display_po_OBUF[3]_inst_i_5_n_0 ),
        .O(display_po_OBUF[3]));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_10 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[3]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_11 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[14] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(\state_reg_n_0_[13] ),
        .O(\display_po_OBUF[3]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_12 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/fun_display__263 [3]));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_13 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\display_po_OBUF[3]_inst_i_13_n_0 ));
  MUXF7 \display_po_OBUF[3]_inst_i_2 
       (.I0(\display_po_OBUF[3]_inst_i_6_n_0 ),
        .I1(\display_po_OBUF[3]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_2_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[3]_inst_i_3 
       (.I0(\display_po_OBUF[3]_inst_i_8_n_0 ),
        .I1(\display_po_OBUF[3]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_3_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[3]_inst_i_4 
       (.I0(\display_po_OBUF[3]_inst_i_10_n_0 ),
        .I1(\display_po_OBUF[3]_inst_i_11_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_4_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[3]_inst_i_5 
       (.I0(\seg7_control/fun_display__263 [3]),
        .I1(\display_po_OBUF[3]_inst_i_13_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_5_n_0 ),
        .S(digit_select[0]));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[26] ),
        .I2(\state_reg_n_0_[24] ),
        .I3(\state_reg_n_0_[25] ),
        .O(\display_po_OBUF[3]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_7 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[30] ),
        .I2(\state_reg_n_0_[28] ),
        .I3(\state_reg_n_0_[29] ),
        .O(\display_po_OBUF[3]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_8 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[16] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[3]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_9 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[22] ),
        .I2(\state_reg_n_0_[20] ),
        .I3(\state_reg_n_0_[21] ),
        .O(\display_po_OBUF[3]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_po_OBUF[4]_inst_i_1 
       (.I0(\display_po_OBUF[4]_inst_i_2_n_0 ),
        .I1(\display_po_OBUF[4]_inst_i_3_n_0 ),
        .I2(digit_select[2]),
        .I3(\display_po_OBUF[4]_inst_i_4_n_0 ),
        .I4(digit_select[1]),
        .I5(\display_po_OBUF[4]_inst_i_5_n_0 ),
        .O(display_po_OBUF[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_10 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[9] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[8] ),
        .O(\display_po_OBUF[4]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_11 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[13] ),
        .I2(\state_reg_n_0_[14] ),
        .I3(\state_reg_n_0_[12] ),
        .O(\display_po_OBUF[4]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_12 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\seg7_control/fun_display__263 [4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_13 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(\display_po_OBUF[4]_inst_i_13_n_0 ));
  MUXF7 \display_po_OBUF[4]_inst_i_2 
       (.I0(\display_po_OBUF[4]_inst_i_6_n_0 ),
        .I1(\display_po_OBUF[4]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[4]_inst_i_2_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[4]_inst_i_3 
       (.I0(\display_po_OBUF[4]_inst_i_8_n_0 ),
        .I1(\display_po_OBUF[4]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[4]_inst_i_3_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[4]_inst_i_4 
       (.I0(\display_po_OBUF[4]_inst_i_10_n_0 ),
        .I1(\display_po_OBUF[4]_inst_i_11_n_0 ),
        .O(\display_po_OBUF[4]_inst_i_4_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[4]_inst_i_5 
       (.I0(\seg7_control/fun_display__263 [4]),
        .I1(\display_po_OBUF[4]_inst_i_13_n_0 ),
        .O(\display_po_OBUF[4]_inst_i_5_n_0 ),
        .S(digit_select[0]));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[25] ),
        .I2(\state_reg_n_0_[26] ),
        .I3(\state_reg_n_0_[24] ),
        .O(\display_po_OBUF[4]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_7 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[29] ),
        .I2(\state_reg_n_0_[30] ),
        .I3(\state_reg_n_0_[28] ),
        .O(\display_po_OBUF[4]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_8 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[17] ),
        .I2(\state_reg_n_0_[18] ),
        .I3(\state_reg_n_0_[16] ),
        .O(\display_po_OBUF[4]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_9 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[21] ),
        .I2(\state_reg_n_0_[22] ),
        .I3(\state_reg_n_0_[20] ),
        .O(\display_po_OBUF[4]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_po_OBUF[5]_inst_i_1 
       (.I0(\display_po_OBUF[5]_inst_i_2_n_0 ),
        .I1(\display_po_OBUF[5]_inst_i_3_n_0 ),
        .I2(digit_select[2]),
        .I3(\display_po_OBUF[5]_inst_i_4_n_0 ),
        .I4(digit_select[1]),
        .I5(\display_po_OBUF[5]_inst_i_5_n_0 ),
        .O(display_po_OBUF[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_10 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[5]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_11 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[14] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(\state_reg_n_0_[13] ),
        .O(\display_po_OBUF[5]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_12 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/fun_display__263 [5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_13 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\display_po_OBUF[5]_inst_i_13_n_0 ));
  MUXF7 \display_po_OBUF[5]_inst_i_2 
       (.I0(\display_po_OBUF[5]_inst_i_6_n_0 ),
        .I1(\display_po_OBUF[5]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[5]_inst_i_2_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[5]_inst_i_3 
       (.I0(\display_po_OBUF[5]_inst_i_8_n_0 ),
        .I1(\display_po_OBUF[5]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[5]_inst_i_3_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[5]_inst_i_4 
       (.I0(\display_po_OBUF[5]_inst_i_10_n_0 ),
        .I1(\display_po_OBUF[5]_inst_i_11_n_0 ),
        .O(\display_po_OBUF[5]_inst_i_4_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[5]_inst_i_5 
       (.I0(\seg7_control/fun_display__263 [5]),
        .I1(\display_po_OBUF[5]_inst_i_13_n_0 ),
        .O(\display_po_OBUF[5]_inst_i_5_n_0 ),
        .S(digit_select[0]));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[26] ),
        .I2(\state_reg_n_0_[24] ),
        .I3(\state_reg_n_0_[25] ),
        .O(\display_po_OBUF[5]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_7 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[30] ),
        .I2(\state_reg_n_0_[28] ),
        .I3(\state_reg_n_0_[29] ),
        .O(\display_po_OBUF[5]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_8 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[16] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[5]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_9 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[22] ),
        .I2(\state_reg_n_0_[20] ),
        .I3(\state_reg_n_0_[21] ),
        .O(\display_po_OBUF[5]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_po_OBUF[6]_inst_i_1 
       (.I0(\display_po_OBUF[6]_inst_i_2_n_0 ),
        .I1(\display_po_OBUF[6]_inst_i_3_n_0 ),
        .I2(digit_select[2]),
        .I3(\display_po_OBUF[6]_inst_i_4_n_0 ),
        .I4(digit_select[1]),
        .I5(\display_po_OBUF[6]_inst_i_5_n_0 ),
        .O(display_po_OBUF[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_10 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[6]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_11 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[14] ),
        .I3(\state_reg_n_0_[13] ),
        .O(\display_po_OBUF[6]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_12 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/fun_display__263 [6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_13 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(\display_po_OBUF[6]_inst_i_13_n_0 ));
  MUXF7 \display_po_OBUF[6]_inst_i_2 
       (.I0(\display_po_OBUF[6]_inst_i_6_n_0 ),
        .I1(\display_po_OBUF[6]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_2_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[6]_inst_i_3 
       (.I0(\display_po_OBUF[6]_inst_i_8_n_0 ),
        .I1(\display_po_OBUF[6]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_3_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[6]_inst_i_4 
       (.I0(\display_po_OBUF[6]_inst_i_10_n_0 ),
        .I1(\display_po_OBUF[6]_inst_i_11_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_4_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[6]_inst_i_5 
       (.I0(\seg7_control/fun_display__263 [6]),
        .I1(\display_po_OBUF[6]_inst_i_13_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_5_n_0 ),
        .S(digit_select[0]));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[24] ),
        .I2(\state_reg_n_0_[26] ),
        .I3(\state_reg_n_0_[25] ),
        .O(\display_po_OBUF[6]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_7 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[28] ),
        .I2(\state_reg_n_0_[30] ),
        .I3(\state_reg_n_0_[29] ),
        .O(\display_po_OBUF[6]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_8 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[16] ),
        .I2(\state_reg_n_0_[18] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[6]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_9 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[20] ),
        .I2(\state_reg_n_0_[22] ),
        .I3(\state_reg_n_0_[21] ),
        .O(\display_po_OBUF[6]_inst_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[31]_i_1 
       (.I0(control_reg_IBUF),
        .O(\state[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[10] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[10]),
        .Q(\state_reg_n_0_[10] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[11] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[11]),
        .Q(\state_reg_n_0_[11] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[12] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[12]),
        .Q(\state_reg_n_0_[12] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[13] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[13]),
        .Q(\state_reg_n_0_[13] ),
        .S(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[14] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[14]),
        .Q(\state_reg_n_0_[14] ),
        .R(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[15] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[15]),
        .Q(\state_reg_n_0_[15] ),
        .S(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[16] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[16]),
        .Q(\state_reg_n_0_[16] ),
        .R(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[17] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[17]),
        .Q(\state_reg_n_0_[17] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[18] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[18]),
        .Q(\state_reg_n_0_[18] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[19] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[19]),
        .Q(\state_reg_n_0_[19] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[1]),
        .Q(\state_reg_n_0_[1] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[20] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[20]),
        .Q(\state_reg_n_0_[20] ),
        .S(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[21] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[21]),
        .Q(\state_reg_n_0_[21] ),
        .R(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[22] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[22]),
        .Q(\state_reg_n_0_[22] ),
        .R(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[23] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[23]),
        .Q(\state_reg_n_0_[23] ),
        .R(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[24] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[24]),
        .Q(\state_reg_n_0_[24] ),
        .R(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[25] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[25]),
        .Q(\state_reg_n_0_[25] ),
        .S(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[26] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[26]),
        .Q(\state_reg_n_0_[26] ),
        .R(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[27] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[27]),
        .Q(\state_reg_n_0_[27] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[28] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[28]),
        .Q(\state_reg_n_0_[28] ),
        .S(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[29] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[29]),
        .Q(\state_reg_n_0_[29] ),
        .R(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[2]),
        .Q(\state_reg_n_0_[2] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[30] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[30]),
        .Q(\state_reg_n_0_[30] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[31] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[31]),
        .Q(\state_reg_n_0_[31] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[3]),
        .Q(\state_reg_n_0_[3] ),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[4] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[4]),
        .Q(sel0[0]),
        .S(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[5] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[5]),
        .Q(sel0[1]),
        .S(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[6]),
        .Q(sel0[2]),
        .R(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[7] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[7]),
        .Q(sel0[3]),
        .S(reset_pi_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[8]),
        .Q(\state_reg_n_0_[8] ),
        .R(reset_pi_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[9] 
       (.C(CLK),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[9]),
        .Q(\state_reg_n_0_[9] ),
        .S(reset_pi_IBUF));
endmodule

module module_seg7_control
   (display_select_po_OBUF,
    digit_select,
    CLK_10MHZ,
    reset_pi_IBUF);
  output [7:0]display_select_po_OBUF;
  output [2:0]digit_select;
  input CLK_10MHZ;
  input reset_pi_IBUF;

  wire CLK_10MHZ;
  wire [2:0]digit_select;
  wire \digit_select[0]_i_1_n_0 ;
  wire \digit_select[1]_i_1_n_0 ;
  wire \digit_select[2]_i_1_n_0 ;
  wire [0:0]digit_timer;
  wire \digit_timer[0]_i_1_n_0 ;
  wire [7:0]display_select_po_OBUF;
  wire reset_pi_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \digit_select[0]_i_1 
       (.I0(digit_select[0]),
        .I1(digit_timer),
        .I2(reset_pi_IBUF),
        .O(\digit_select[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \digit_select[1]_i_1 
       (.I0(digit_select[1]),
        .I1(digit_timer),
        .I2(digit_select[0]),
        .I3(reset_pi_IBUF),
        .O(\digit_select[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \digit_select[2]_i_1 
       (.I0(digit_select[2]),
        .I1(digit_timer),
        .I2(digit_select[0]),
        .I3(digit_select[1]),
        .I4(reset_pi_IBUF),
        .O(\digit_select[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_select[0]_i_1_n_0 ),
        .Q(digit_select[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_select[1]_i_1_n_0 ),
        .Q(digit_select[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_select[2]_i_1_n_0 ),
        .Q(digit_select[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \digit_timer[0]_i_1 
       (.I0(digit_timer),
        .I1(reset_pi_IBUF),
        .O(\digit_timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_timer[0]_i_1_n_0 ),
        .Q(digit_timer),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \display_select_po_OBUF[0]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[1]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[2]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[3]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[4]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[5]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[6]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \display_select_po_OBUF[7]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[7]));
endmodule

(* BITS_ANODO = "2" *) (* COUNT_ANODO = "2" *) 
(* NotValidForBitStream *)
module top_simulate_7seg_v2
   (clk_100Mhz_pi,
    reset_pi,
    control_reg,
    display,
    display_po,
    display_select_po,
    locked,
    clk_10Mhz);
  input clk_100Mhz_pi;
  input reset_pi;
  input control_reg;
  input [31:0]display;
  output [6:0]display_po;
  output [7:0]display_select_po;
  output locked;
  output clk_10Mhz;

  (* IBUF_LOW_PWR *) wire clk_100Mhz_pi;
  wire clk_10Mhz;
  wire clk_10Mhz_OBUF;
  wire control_reg;
  wire control_reg_IBUF;
  wire [2:0]digit_select;
  wire [31:0]display;
  wire [31:0]display_IBUF;
  wire [6:0]display_po;
  wire [6:0]display_po_OBUF;
  wire [7:0]display_select_po;
  wire [7:0]display_select_po_OBUF;
  wire locked;
  wire locked_OBUF;
  wire reset_pi;
  wire reset_pi_IBUF;

  OBUF clk_10Mhz_OBUF_inst
       (.I(clk_10Mhz_OBUF),
        .O(clk_10Mhz));
  IBUF control_reg_IBUF_inst
       (.I(control_reg),
        .O(control_reg_IBUF));
  IBUF \display_IBUF[0]_inst 
       (.I(display[0]),
        .O(display_IBUF[0]));
  IBUF \display_IBUF[10]_inst 
       (.I(display[10]),
        .O(display_IBUF[10]));
  IBUF \display_IBUF[11]_inst 
       (.I(display[11]),
        .O(display_IBUF[11]));
  IBUF \display_IBUF[12]_inst 
       (.I(display[12]),
        .O(display_IBUF[12]));
  IBUF \display_IBUF[13]_inst 
       (.I(display[13]),
        .O(display_IBUF[13]));
  IBUF \display_IBUF[14]_inst 
       (.I(display[14]),
        .O(display_IBUF[14]));
  IBUF \display_IBUF[15]_inst 
       (.I(display[15]),
        .O(display_IBUF[15]));
  IBUF \display_IBUF[16]_inst 
       (.I(display[16]),
        .O(display_IBUF[16]));
  IBUF \display_IBUF[17]_inst 
       (.I(display[17]),
        .O(display_IBUF[17]));
  IBUF \display_IBUF[18]_inst 
       (.I(display[18]),
        .O(display_IBUF[18]));
  IBUF \display_IBUF[19]_inst 
       (.I(display[19]),
        .O(display_IBUF[19]));
  IBUF \display_IBUF[1]_inst 
       (.I(display[1]),
        .O(display_IBUF[1]));
  IBUF \display_IBUF[20]_inst 
       (.I(display[20]),
        .O(display_IBUF[20]));
  IBUF \display_IBUF[21]_inst 
       (.I(display[21]),
        .O(display_IBUF[21]));
  IBUF \display_IBUF[22]_inst 
       (.I(display[22]),
        .O(display_IBUF[22]));
  IBUF \display_IBUF[23]_inst 
       (.I(display[23]),
        .O(display_IBUF[23]));
  IBUF \display_IBUF[24]_inst 
       (.I(display[24]),
        .O(display_IBUF[24]));
  IBUF \display_IBUF[25]_inst 
       (.I(display[25]),
        .O(display_IBUF[25]));
  IBUF \display_IBUF[26]_inst 
       (.I(display[26]),
        .O(display_IBUF[26]));
  IBUF \display_IBUF[27]_inst 
       (.I(display[27]),
        .O(display_IBUF[27]));
  IBUF \display_IBUF[28]_inst 
       (.I(display[28]),
        .O(display_IBUF[28]));
  IBUF \display_IBUF[29]_inst 
       (.I(display[29]),
        .O(display_IBUF[29]));
  IBUF \display_IBUF[2]_inst 
       (.I(display[2]),
        .O(display_IBUF[2]));
  IBUF \display_IBUF[30]_inst 
       (.I(display[30]),
        .O(display_IBUF[30]));
  IBUF \display_IBUF[31]_inst 
       (.I(display[31]),
        .O(display_IBUF[31]));
  IBUF \display_IBUF[3]_inst 
       (.I(display[3]),
        .O(display_IBUF[3]));
  IBUF \display_IBUF[4]_inst 
       (.I(display[4]),
        .O(display_IBUF[4]));
  IBUF \display_IBUF[5]_inst 
       (.I(display[5]),
        .O(display_IBUF[5]));
  IBUF \display_IBUF[6]_inst 
       (.I(display[6]),
        .O(display_IBUF[6]));
  IBUF \display_IBUF[7]_inst 
       (.I(display[7]),
        .O(display_IBUF[7]));
  IBUF \display_IBUF[8]_inst 
       (.I(display[8]),
        .O(display_IBUF[8]));
  IBUF \display_IBUF[9]_inst 
       (.I(display[9]),
        .O(display_IBUF[9]));
  OBUF \display_po_OBUF[0]_inst 
       (.I(display_po_OBUF[0]),
        .O(display_po[0]));
  OBUF \display_po_OBUF[1]_inst 
       (.I(display_po_OBUF[1]),
        .O(display_po[1]));
  OBUF \display_po_OBUF[2]_inst 
       (.I(display_po_OBUF[2]),
        .O(display_po[2]));
  OBUF \display_po_OBUF[3]_inst 
       (.I(display_po_OBUF[3]),
        .O(display_po[3]));
  OBUF \display_po_OBUF[4]_inst 
       (.I(display_po_OBUF[4]),
        .O(display_po[4]));
  OBUF \display_po_OBUF[5]_inst 
       (.I(display_po_OBUF[5]),
        .O(display_po[5]));
  OBUF \display_po_OBUF[6]_inst 
       (.I(display_po_OBUF[6]),
        .O(display_po[6]));
  OBUF \display_select_po_OBUF[0]_inst 
       (.I(display_select_po_OBUF[0]),
        .O(display_select_po[0]));
  OBUF \display_select_po_OBUF[1]_inst 
       (.I(display_select_po_OBUF[1]),
        .O(display_select_po[1]));
  OBUF \display_select_po_OBUF[2]_inst 
       (.I(display_select_po_OBUF[2]),
        .O(display_select_po[2]));
  OBUF \display_select_po_OBUF[3]_inst 
       (.I(display_select_po_OBUF[3]),
        .O(display_select_po[3]));
  OBUF \display_select_po_OBUF[4]_inst 
       (.I(display_select_po_OBUF[4]),
        .O(display_select_po[4]));
  OBUF \display_select_po_OBUF[5]_inst 
       (.I(display_select_po_OBUF[5]),
        .O(display_select_po[5]));
  OBUF \display_select_po_OBUF[6]_inst 
       (.I(display_select_po_OBUF[6]),
        .O(display_select_po[6]));
  OBUF \display_select_po_OBUF[7]_inst 
       (.I(display_select_po_OBUF[7]),
        .O(display_select_po[7]));
  WCLK generate_clock_10Mhz
       (.CLK_100MHZ(clk_100Mhz_pi),
        .CLK_10MHZ(clk_10Mhz_OBUF),
        .locked(locked_OBUF));
  OBUF locked_OBUF_inst
       (.I(locked_OBUF),
        .O(locked));
  module_register_pp register_pp
       (.CLK(clk_10Mhz_OBUF),
        .D(display_IBUF),
        .control_reg_IBUF(control_reg_IBUF),
        .digit_select(digit_select),
        .display_po_OBUF(display_po_OBUF),
        .reset_pi_IBUF(reset_pi_IBUF));
  IBUF reset_pi_IBUF_inst
       (.I(reset_pi),
        .O(reset_pi_IBUF));
  module_seg7_control seg7_control
       (.CLK_10MHZ(clk_10Mhz_OBUF),
        .digit_select(digit_select),
        .display_select_po_OBUF(display_select_po_OBUF),
        .reset_pi_IBUF(reset_pi_IBUF));
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
