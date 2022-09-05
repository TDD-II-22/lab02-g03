// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Sep  4 18:49:22 2022
// Host        : DESKTOP-TV0ASU4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/VIVADO/PROY2/lab02-g03/Ejercicios/Proyectos/Ejercicio5/vivado_project.sim/sim_1/impl/timing/xsim/tb_module_program_counter_time_impl.v
// Design      : top_module_program_counter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module WCLK
   (CLK_10MHZ,
    locked,
    CLK_100MHZ);
  output CLK_10MHZ;
  output locked;
  input CLK_100MHZ;

  wire CLK_100MHZ;
  wire CLK_10MHZ;
  wire NLW_inst_locked_UNCONNECTED;

  WCLK__WCLK_clk_wiz inst
       (.CLK_100MHZ(CLK_100MHZ),
        .CLK_10MHZ(CLK_10MHZ),
        .locked(NLW_inst_locked_UNCONNECTED));
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
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire NLW_plle2_adv_inst_LOCKED_UNCONNECTED;
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
  (* OPT_MODIFIED = "SWEEP" *) 
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
        .LOCKED(NLW_plle2_adv_inst_LOCKED_UNCONNECTED),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

module module_clock_divisor
   (E,
    CLK);
  output [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire clk_2hz;
  wire clk_2hz_i_1_n_0;
  wire [23:0]cont_clk;
  wire [23:1]cont_clk0;
  wire cont_clk0_carry__0_i_4_n_0;
  wire cont_clk0_carry__0_i_5_n_0;
  wire cont_clk0_carry__0_i_6_n_0;
  wire cont_clk0_carry__0_i_7_n_0;
  wire cont_clk0_carry__0_i_8_n_0;
  wire cont_clk0_carry__0_i_9_n_0;
  wire cont_clk0_carry__0_n_0;
  wire cont_clk0_carry__1_n_0;
  wire cont_clk0_carry__2_n_0;
  wire cont_clk0_carry__3_n_0;
  wire cont_clk0_carry_n_0;
  wire \cont_clk[0]_i_1_n_0 ;
  wire [22:6]cont_clk_0;
  wire [2:0]NLW_cont_clk0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_cont_clk0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cont_clk0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_cont_clk0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_cont_clk0_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_cont_clk0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_cont_clk0_carry__4_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    clk_2hz_i_1
       (.I0(clk_2hz),
        .I1(E),
        .O(clk_2hz_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_2hz_reg
       (.C(CLK),
        .CE(1'b1),
        .D(clk_2hz_i_1_n_0),
        .Q(E),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cont_clk0_carry
       (.CI(1'b0),
        .CO({cont_clk0_carry_n_0,NLW_cont_clk0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(cont_clk[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cont_clk0[4:1]),
        .S(cont_clk[4:1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cont_clk0_carry__0
       (.CI(cont_clk0_carry_n_0),
        .CO({cont_clk0_carry__0_n_0,NLW_cont_clk0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cont_clk0[8:5]),
        .S({cont_clk_0[8],cont_clk[7],cont_clk_0[6],cont_clk[5]}));
  LUT2 #(
    .INIT(4'h2)) 
    cont_clk0_carry__0_i_1
       (.I0(cont_clk[8]),
        .I1(clk_2hz),
        .O(cont_clk_0[8]));
  LUT2 #(
    .INIT(4'h2)) 
    cont_clk0_carry__0_i_2
       (.I0(cont_clk[6]),
        .I1(clk_2hz),
        .O(cont_clk_0[6]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    cont_clk0_carry__0_i_3
       (.I0(cont_clk0_carry__0_i_4_n_0),
        .I1(cont_clk0_carry__0_i_5_n_0),
        .I2(cont_clk0_carry__0_i_6_n_0),
        .I3(cont_clk0_carry__0_i_7_n_0),
        .I4(cont_clk0_carry__0_i_8_n_0),
        .I5(cont_clk0_carry__0_i_9_n_0),
        .O(clk_2hz));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cont_clk0_carry__0_i_4
       (.I0(cont_clk[10]),
        .I1(cont_clk[7]),
        .I2(cont_clk[13]),
        .I3(cont_clk[3]),
        .O(cont_clk0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    cont_clk0_carry__0_i_5
       (.I0(cont_clk[6]),
        .I1(cont_clk[8]),
        .I2(cont_clk[22]),
        .I3(cont_clk[1]),
        .O(cont_clk0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    cont_clk0_carry__0_i_6
       (.I0(cont_clk[23]),
        .I1(cont_clk[20]),
        .I2(cont_clk[11]),
        .I3(cont_clk[4]),
        .O(cont_clk0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    cont_clk0_carry__0_i_7
       (.I0(cont_clk[17]),
        .I1(cont_clk[5]),
        .I2(cont_clk[9]),
        .I3(cont_clk[0]),
        .O(cont_clk0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    cont_clk0_carry__0_i_8
       (.I0(cont_clk[19]),
        .I1(cont_clk[15]),
        .I2(cont_clk[18]),
        .I3(cont_clk[12]),
        .O(cont_clk0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    cont_clk0_carry__0_i_9
       (.I0(cont_clk[16]),
        .I1(cont_clk[2]),
        .I2(cont_clk[14]),
        .I3(cont_clk[21]),
        .O(cont_clk0_carry__0_i_9_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cont_clk0_carry__1
       (.CI(cont_clk0_carry__0_n_0),
        .CO({cont_clk0_carry__1_n_0,NLW_cont_clk0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cont_clk0[12:9]),
        .S({cont_clk[12],cont_clk_0[11],cont_clk[10],cont_clk_0[9]}));
  LUT2 #(
    .INIT(4'h2)) 
    cont_clk0_carry__1_i_1
       (.I0(cont_clk[11]),
        .I1(clk_2hz),
        .O(cont_clk_0[11]));
  LUT2 #(
    .INIT(4'h2)) 
    cont_clk0_carry__1_i_2
       (.I0(cont_clk[9]),
        .I1(clk_2hz),
        .O(cont_clk_0[9]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cont_clk0_carry__2
       (.CI(cont_clk0_carry__1_n_0),
        .CO({cont_clk0_carry__2_n_0,NLW_cont_clk0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cont_clk0[16:13]),
        .S({cont_clk[16:15],cont_clk_0[14],cont_clk[13]}));
  LUT2 #(
    .INIT(4'h2)) 
    cont_clk0_carry__2_i_1
       (.I0(cont_clk[14]),
        .I1(clk_2hz),
        .O(cont_clk_0[14]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cont_clk0_carry__3
       (.CI(cont_clk0_carry__2_n_0),
        .CO({cont_clk0_carry__3_n_0,NLW_cont_clk0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cont_clk0[20:17]),
        .S({cont_clk[20],cont_clk_0[19:18],cont_clk[17]}));
  LUT2 #(
    .INIT(4'h2)) 
    cont_clk0_carry__3_i_1
       (.I0(cont_clk[19]),
        .I1(clk_2hz),
        .O(cont_clk_0[19]));
  LUT2 #(
    .INIT(4'h2)) 
    cont_clk0_carry__3_i_2
       (.I0(cont_clk[18]),
        .I1(clk_2hz),
        .O(cont_clk_0[18]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 cont_clk0_carry__4
       (.CI(cont_clk0_carry__3_n_0),
        .CO(NLW_cont_clk0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cont_clk0_carry__4_O_UNCONNECTED[3],cont_clk0[23:21]}),
        .S({1'b0,cont_clk[23],cont_clk_0[22],cont_clk[21]}));
  LUT2 #(
    .INIT(4'h2)) 
    cont_clk0_carry__4_i_1
       (.I0(cont_clk[22]),
        .I1(clk_2hz),
        .O(cont_clk_0[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \cont_clk[0]_i_1 
       (.I0(cont_clk[0]),
        .O(\cont_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cont_clk[0]_i_1_n_0 ),
        .Q(cont_clk[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[10]),
        .Q(cont_clk[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[11]),
        .Q(cont_clk[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[12]),
        .Q(cont_clk[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[13]),
        .Q(cont_clk[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[14]),
        .Q(cont_clk[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[15]),
        .Q(cont_clk[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[16]),
        .Q(cont_clk[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[17]),
        .Q(cont_clk[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[18]),
        .Q(cont_clk[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[19]),
        .Q(cont_clk[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[1]),
        .Q(cont_clk[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[20]),
        .Q(cont_clk[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[21]),
        .Q(cont_clk[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[22]),
        .Q(cont_clk[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[23]),
        .Q(cont_clk[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[2]),
        .Q(cont_clk[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[3]),
        .Q(cont_clk[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[4]),
        .Q(cont_clk[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[5]),
        .Q(cont_clk[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[6]),
        .Q(cont_clk[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[7]),
        .Q(cont_clk[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[8]),
        .Q(cont_clk[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cont_clk_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(cont_clk0[9]),
        .Q(cont_clk[9]),
        .R(1'b0));
endmodule

module module_program_counter
   (Q,
    \pcinc_o_reg[5]_0 ,
    E,
    CLK,
    pc_op_i_IBUF,
    pc_i_IBUF);
  output [5:0]Q;
  output [5:0]\pcinc_o_reg[5]_0 ;
  input [0:0]E;
  input CLK;
  input [1:0]pc_op_i_IBUF;
  input [5:0]pc_i_IBUF;

  wire CLK;
  wire [0:0]E;
  wire [5:0]Q;
  wire [5:0]p_0_in;
  wire [5:0]p_1_in;
  wire [5:0]pc_i_IBUF;
  wire \pc_o[3]_i_2_n_0 ;
  wire \pc_o[5]_i_2_n_0 ;
  wire [1:0]pc_op_i_IBUF;
  wire [5:5]pcinc_o00_in;
  wire \pcinc_o[3]_i_2_n_0 ;
  wire \pcinc_o[4]_i_2_n_0 ;
  wire \pcinc_o[4]_i_3_n_0 ;
  wire \pcinc_o[4]_i_4_n_0 ;
  wire \pcinc_o[5]_i_2_n_0 ;
  wire \pcinc_o[5]_i_4_n_0 ;
  wire [5:0]\pcinc_o_reg[5]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8CB0)) 
    \pc_o[0]_i_1 
       (.I0(pc_i_IBUF[0]),
        .I1(pc_op_i_IBUF[0]),
        .I2(pc_op_i_IBUF[1]),
        .I3(Q[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8CB0BC80)) 
    \pc_o[1]_i_1 
       (.I0(pc_i_IBUF[1]),
        .I1(pc_op_i_IBUF[0]),
        .I2(pc_op_i_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h8CB0BC80BC80BC80)) 
    \pc_o[2]_i_1 
       (.I0(pc_i_IBUF[2]),
        .I1(pc_op_i_IBUF[0]),
        .I2(pc_op_i_IBUF[1]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h8CB0BC80BC80BC80)) 
    \pc_o[3]_i_1 
       (.I0(pc_i_IBUF[3]),
        .I1(pc_op_i_IBUF[0]),
        .I2(pc_op_i_IBUF[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\pc_o[3]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \pc_o[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\pc_o[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8CB0BC80)) 
    \pc_o[4]_i_1 
       (.I0(pc_i_IBUF[4]),
        .I1(pc_op_i_IBUF[0]),
        .I2(pc_op_i_IBUF[1]),
        .I3(Q[4]),
        .I4(\pc_o[5]_i_2_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h8CB0BC80BC80BC80)) 
    \pc_o[5]_i_1 
       (.I0(pc_i_IBUF[5]),
        .I1(pc_op_i_IBUF[0]),
        .I2(pc_op_i_IBUF[1]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(\pc_o[5]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'h8000)) 
    \pc_o[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\pc_o[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8CB0)) 
    \pcinc_o[0]_i_1 
       (.I0(pc_i_IBUF[0]),
        .I1(pc_op_i_IBUF[0]),
        .I2(pc_op_i_IBUF[1]),
        .I3(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8CB0BC80)) 
    \pcinc_o[1]_i_1 
       (.I0(pc_i_IBUF[1]),
        .I1(pc_op_i_IBUF[0]),
        .I2(pc_op_i_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h039FF39F)) 
    \pcinc_o[2]_i_1 
       (.I0(\pc_o[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(pc_op_i_IBUF[1]),
        .I3(pc_op_i_IBUF[0]),
        .I4(pc_i_IBUF[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h80BC80BC8CB0BC80)) 
    \pcinc_o[3]_i_1 
       (.I0(\pcinc_o[3]_i_2_n_0 ),
        .I1(pc_op_i_IBUF[0]),
        .I2(pc_op_i_IBUF[1]),
        .I3(Q[3]),
        .I4(\pc_o[3]_i_2_n_0 ),
        .I5(Q[2]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h6FFF6000)) 
    \pcinc_o[3]_i_2 
       (.I0(pc_i_IBUF[2]),
        .I1(pc_i_IBUF[3]),
        .I2(pc_op_i_IBUF[0]),
        .I3(pc_op_i_IBUF[1]),
        .I4(\pcinc_o_reg[5]_0 [3]),
        .O(\pcinc_o[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA030AFC0AF30A0C0)) 
    \pcinc_o[4]_i_1 
       (.I0(\pcinc_o[4]_i_2_n_0 ),
        .I1(\pcinc_o[4]_i_3_n_0 ),
        .I2(pc_op_i_IBUF[0]),
        .I3(pc_op_i_IBUF[1]),
        .I4(Q[4]),
        .I5(\pcinc_o[4]_i_4_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h78FFFFFF78000000)) 
    \pcinc_o[4]_i_2 
       (.I0(pc_i_IBUF[2]),
        .I1(pc_i_IBUF[3]),
        .I2(pc_i_IBUF[4]),
        .I3(pc_op_i_IBUF[0]),
        .I4(pc_op_i_IBUF[1]),
        .I5(\pcinc_o_reg[5]_0 [4]),
        .O(\pcinc_o[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pcinc_o[4]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\pcinc_o[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA888)) 
    \pcinc_o[4]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\pcinc_o[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \pcinc_o[5]_i_1 
       (.I0(\pcinc_o[5]_i_2_n_0 ),
        .I1(pcinc_o00_in),
        .I2(pc_op_i_IBUF[0]),
        .I3(pc_op_i_IBUF[1]),
        .I4(\pcinc_o[5]_i_4_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h6AAA000000000000)) 
    \pcinc_o[5]_i_2 
       (.I0(pc_i_IBUF[5]),
        .I1(pc_i_IBUF[4]),
        .I2(pc_i_IBUF[2]),
        .I3(pc_i_IBUF[3]),
        .I4(pc_op_i_IBUF[1]),
        .I5(pc_op_i_IBUF[0]),
        .O(\pcinc_o[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \pcinc_o[5]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(pcinc_o00_in));
  LUT6 #(
    .INIT(64'h5777FFFFA8880000)) 
    \pcinc_o[5]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\pcinc_o[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pcinc_o_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[0]),
        .Q(\pcinc_o_reg[5]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pcinc_o_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[1]),
        .Q(\pcinc_o_reg[5]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pcinc_o_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[2]),
        .Q(\pcinc_o_reg[5]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pcinc_o_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[3]),
        .Q(\pcinc_o_reg[5]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pcinc_o_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[4]),
        .Q(\pcinc_o_reg[5]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pcinc_o_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[5]),
        .Q(\pcinc_o_reg[5]_0 [5]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "8a2823ff" *) (* W = "6" *) 
(* NotValidForBitStream *)
module top_module_program_counter
   (clk,
    pc_i,
    pc_op_i,
    pc_o,
    pcinc_o,
    flag_ver);
  input clk;
  input [5:0]pc_i;
  input [1:0]pc_op_i;
  output [5:0]pc_o;
  output [5:0]pcinc_o;
  output [1:0]flag_ver;

  wire CLK_10MHZ;
  wire CLK_2HZ;
  (* IBUF_LOW_PWR *) wire clk;
  wire [1:0]flag_ver;
  wire [5:0]pc_i;
  wire [5:0]pc_i_IBUF;
  wire [5:0]pc_o;
  wire [5:0]pc_o_OBUF;
  wire [1:0]pc_op_i;
  wire [1:0]pc_op_i_IBUF;
  wire [5:0]pcinc_o;
  wire [5:0]pcinc_o_OBUF;
  wire NLW_clk_10mhz_locked_UNCONNECTED;

initial begin
 $sdf_annotate("tb_module_program_counter_time_impl.sdf",,,,"tool_control");
end
  WCLK clk_10mhz
       (.CLK_100MHZ(clk),
        .CLK_10MHZ(CLK_10MHZ),
        .locked(NLW_clk_10mhz_locked_UNCONNECTED));
  module_clock_divisor clock_2hz
       (.CLK(CLK_10MHZ),
        .E(CLK_2HZ));
  OBUF \flag_ver_OBUF[0]_inst 
       (.I(1'b1),
        .O(flag_ver[0]));
  OBUF \flag_ver_OBUF[1]_inst 
       (.I(1'b0),
        .O(flag_ver[1]));
  IBUF \pc_i_IBUF[0]_inst 
       (.I(pc_i[0]),
        .O(pc_i_IBUF[0]));
  IBUF \pc_i_IBUF[1]_inst 
       (.I(pc_i[1]),
        .O(pc_i_IBUF[1]));
  IBUF \pc_i_IBUF[2]_inst 
       (.I(pc_i[2]),
        .O(pc_i_IBUF[2]));
  IBUF \pc_i_IBUF[3]_inst 
       (.I(pc_i[3]),
        .O(pc_i_IBUF[3]));
  IBUF \pc_i_IBUF[4]_inst 
       (.I(pc_i[4]),
        .O(pc_i_IBUF[4]));
  IBUF \pc_i_IBUF[5]_inst 
       (.I(pc_i[5]),
        .O(pc_i_IBUF[5]));
  OBUF \pc_o_OBUF[0]_inst 
       (.I(pc_o_OBUF[0]),
        .O(pc_o[0]));
  OBUF \pc_o_OBUF[1]_inst 
       (.I(pc_o_OBUF[1]),
        .O(pc_o[1]));
  OBUF \pc_o_OBUF[2]_inst 
       (.I(pc_o_OBUF[2]),
        .O(pc_o[2]));
  OBUF \pc_o_OBUF[3]_inst 
       (.I(pc_o_OBUF[3]),
        .O(pc_o[3]));
  OBUF \pc_o_OBUF[4]_inst 
       (.I(pc_o_OBUF[4]),
        .O(pc_o[4]));
  OBUF \pc_o_OBUF[5]_inst 
       (.I(pc_o_OBUF[5]),
        .O(pc_o[5]));
  IBUF \pc_op_i_IBUF[0]_inst 
       (.I(pc_op_i[0]),
        .O(pc_op_i_IBUF[0]));
  IBUF \pc_op_i_IBUF[1]_inst 
       (.I(pc_op_i[1]),
        .O(pc_op_i_IBUF[1]));
  OBUF \pcinc_o_OBUF[0]_inst 
       (.I(pcinc_o_OBUF[0]),
        .O(pcinc_o[0]));
  OBUF \pcinc_o_OBUF[1]_inst 
       (.I(pcinc_o_OBUF[1]),
        .O(pcinc_o[1]));
  OBUF \pcinc_o_OBUF[2]_inst 
       (.I(pcinc_o_OBUF[2]),
        .O(pcinc_o[2]));
  OBUF \pcinc_o_OBUF[3]_inst 
       (.I(pcinc_o_OBUF[3]),
        .O(pcinc_o[3]));
  OBUF \pcinc_o_OBUF[4]_inst 
       (.I(pcinc_o_OBUF[4]),
        .O(pcinc_o[4]));
  OBUF \pcinc_o_OBUF[5]_inst 
       (.I(pcinc_o_OBUF[5]),
        .O(pcinc_o[5]));
  module_program_counter program_counter_1
       (.CLK(CLK_10MHZ),
        .E(CLK_2HZ),
        .Q(pc_o_OBUF),
        .pc_i_IBUF(pc_i_IBUF),
        .pc_op_i_IBUF(pc_op_i_IBUF),
        .\pcinc_o_reg[5]_0 (pcinc_o_OBUF));
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
