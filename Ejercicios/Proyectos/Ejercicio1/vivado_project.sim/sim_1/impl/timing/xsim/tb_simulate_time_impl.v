// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Aug 30 08:44:19 2022
// Host        : Andrey-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/carlo/Andrey/TEC/Semestre_II_2022/Taller_Digitales/Laboratorios/Laboratorio_2/Repositorio/lab02-g03/Ejercicios/Proyectos/Ejercicio1/vivado_project.sim/sim_1/impl/timing/xsim/tb_simulate_time_impl.v
// Design      : top_module_contador_7seg
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

module module_clock_catodo
   (E,
    SR,
    CLK_10MHZ);
  output [0:0]E;
  input [0:0]SR;
  input CLK_10MHZ;

  wire CLK_10MHZ;
  wire [0:0]E;
  wire [0:0]SR;
  wire clk_out;
  wire [19:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry_n_0;
  wire \counter[19]_i_2_n_0 ;
  wire \counter[19]_i_3_n_0 ;
  wire \counter[19]_i_4_n_0 ;
  wire \counter[19]_i_5_n_0 ;
  wire \counter[19]_i_6_n_0 ;
  wire [19:0]counter_0;
  wire [19:1]data0;
  wire [2:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__3_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00000001)) 
    clk_out_i_1
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .O(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(clk_out),
        .Q(E),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,NLW_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO(NLW_counter0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,counter[19:17]}));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[10]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[10]),
        .O(counter_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[11]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[11]),
        .O(counter_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[12]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[12]),
        .O(counter_0[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[13]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[13]),
        .O(counter_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[14]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[14]),
        .O(counter_0[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[15]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[15]),
        .O(counter_0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[16]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[16]),
        .O(counter_0[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[17]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[17]),
        .O(counter_0[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[18]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[18]),
        .O(counter_0[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[19]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[19]),
        .O(counter_0[19]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[19]_i_2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[2]),
        .O(\counter[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[19]_i_3 
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[14]),
        .I3(counter[15]),
        .O(\counter[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[19]_i_4 
       (.I0(counter[17]),
        .I1(counter[16]),
        .I2(counter[19]),
        .I3(counter[18]),
        .O(\counter[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[19]_i_5 
       (.I0(counter[9]),
        .I1(counter[8]),
        .I2(counter[11]),
        .I3(counter[10]),
        .O(\counter[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter[19]_i_6 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(\counter[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[1]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[1]),
        .O(counter_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[2]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[2]),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[3]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[3]),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[4]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[4]),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[5]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[5]),
        .O(counter_0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[6]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[6]),
        .O(counter_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[7]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[7]),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[8]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[8]),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[9]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(\counter[19]_i_3_n_0 ),
        .I2(\counter[19]_i_4_n_0 ),
        .I3(\counter[19]_i_5_n_0 ),
        .I4(\counter[19]_i_6_n_0 ),
        .I5(data0[9]),
        .O(counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[10]),
        .Q(counter[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[11]),
        .Q(counter[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[12]),
        .Q(counter[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[13]),
        .Q(counter[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[14]),
        .Q(counter[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[15]),
        .Q(counter[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[16]),
        .Q(counter[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[17]),
        .Q(counter[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[18]),
        .Q(counter[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[19]),
        .Q(counter[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(SR));
endmodule

module module_digitos
   (display_po_OBUF,
    digit_select,
    E,
    \display_po_OBUF[4]_inst_i_1_0 ,
    \display_po_OBUF[4]_inst_i_1_1 ,
    SR,
    CLK_10MHZ);
  output [6:0]display_po_OBUF;
  input [2:0]digit_select;
  input [0:0]E;
  input \display_po_OBUF[4]_inst_i_1_0 ;
  input \display_po_OBUF[4]_inst_i_1_1 ;
  input [0:0]SR;
  input CLK_10MHZ;

  wire CLK_10MHZ;
  wire [0:0]E;
  wire [0:0]SR;
  wire cen_millar;
  wire \cen_millar[0]_i_1_n_0 ;
  wire \cen_millar[1]_i_1_n_0 ;
  wire \cen_millar[2]_i_1_n_0 ;
  wire \cen_millar[3]_i_2_n_0 ;
  wire \cen_millar[3]_i_3_n_0 ;
  wire centenas;
  wire \centenas[0]_i_1_n_0 ;
  wire \centenas[1]_i_1_n_0 ;
  wire \centenas[2]_i_1_n_0 ;
  wire \centenas[3]_i_2_n_0 ;
  wire dec_millar;
  wire \dec_millar[0]_i_1_n_0 ;
  wire \dec_millar[1]_i_1_n_0 ;
  wire \dec_millar[2]_i_1_n_0 ;
  wire \dec_millar[3]_i_2_n_0 ;
  wire \dec_millar[3]_i_3_n_0 ;
  wire \dec_millar[3]_i_4_n_0 ;
  wire \dec_millar[3]_i_5_n_0 ;
  wire [3:0]dec_millon;
  wire \dec_millon[0]_i_1_n_0 ;
  wire \dec_millon[1]_i_1_n_0 ;
  wire \dec_millon[2]_i_1_n_0 ;
  wire \dec_millon[3]_i_2_n_0 ;
  wire dec_millon_0;
  wire decenas;
  wire \decenas[0]_i_1_n_0 ;
  wire \decenas[1]_i_1_n_0 ;
  wire \decenas[2]_i_1_n_0 ;
  wire \decenas[3]_i_2_n_0 ;
  wire [2:0]digit_select;
  wire [27:0]digitos;
  wire [6:0]display_po_OBUF;
  wire \display_po_OBUF[0]_inst_i_2_n_0 ;
  wire \display_po_OBUF[0]_inst_i_3_n_0 ;
  wire \display_po_OBUF[0]_inst_i_4_n_0 ;
  wire \display_po_OBUF[0]_inst_i_5_n_0 ;
  wire \display_po_OBUF[0]_inst_i_6_n_0 ;
  wire \display_po_OBUF[0]_inst_i_7_n_0 ;
  wire \display_po_OBUF[0]_inst_i_8_n_0 ;
  wire \display_po_OBUF[0]_inst_i_9_n_0 ;
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
  wire \display_po_OBUF[2]_inst_i_2_n_0 ;
  wire \display_po_OBUF[2]_inst_i_3_n_0 ;
  wire \display_po_OBUF[2]_inst_i_4_n_0 ;
  wire \display_po_OBUF[2]_inst_i_5_n_0 ;
  wire \display_po_OBUF[2]_inst_i_6_n_0 ;
  wire \display_po_OBUF[2]_inst_i_7_n_0 ;
  wire \display_po_OBUF[2]_inst_i_8_n_0 ;
  wire \display_po_OBUF[2]_inst_i_9_n_0 ;
  wire \display_po_OBUF[3]_inst_i_2_n_0 ;
  wire \display_po_OBUF[3]_inst_i_3_n_0 ;
  wire \display_po_OBUF[3]_inst_i_4_n_0 ;
  wire \display_po_OBUF[3]_inst_i_5_n_0 ;
  wire \display_po_OBUF[3]_inst_i_6_n_0 ;
  wire \display_po_OBUF[3]_inst_i_7_n_0 ;
  wire \display_po_OBUF[3]_inst_i_8_n_0 ;
  wire \display_po_OBUF[3]_inst_i_9_n_0 ;
  wire \display_po_OBUF[4]_inst_i_11_n_0 ;
  wire \display_po_OBUF[4]_inst_i_1_0 ;
  wire \display_po_OBUF[4]_inst_i_1_1 ;
  wire \display_po_OBUF[4]_inst_i_2_n_0 ;
  wire \display_po_OBUF[4]_inst_i_3_n_0 ;
  wire \display_po_OBUF[4]_inst_i_4_n_0 ;
  wire \display_po_OBUF[4]_inst_i_5_n_0 ;
  wire \display_po_OBUF[4]_inst_i_6_n_0 ;
  wire \display_po_OBUF[4]_inst_i_8_n_0 ;
  wire \display_po_OBUF[4]_inst_i_9_n_0 ;
  wire \display_po_OBUF[5]_inst_i_10_n_0 ;
  wire \display_po_OBUF[5]_inst_i_11_n_0 ;
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
  wire \display_po_OBUF[6]_inst_i_12_n_0 ;
  wire \display_po_OBUF[6]_inst_i_2_n_0 ;
  wire \display_po_OBUF[6]_inst_i_3_n_0 ;
  wire \display_po_OBUF[6]_inst_i_4_n_0 ;
  wire \display_po_OBUF[6]_inst_i_5_n_0 ;
  wire \display_po_OBUF[6]_inst_i_6_n_0 ;
  wire \display_po_OBUF[6]_inst_i_7_n_0 ;
  wire \display_po_OBUF[6]_inst_i_8_n_0 ;
  wire \display_po_OBUF[6]_inst_i_9_n_0 ;
  wire [3:0]p_0_in;
  wire uni_millar;
  wire \uni_millar[0]_i_1_n_0 ;
  wire \uni_millar[1]_i_1_n_0 ;
  wire \uni_millar[2]_i_1_n_0 ;
  wire \uni_millar[3]_i_2_n_0 ;
  wire \uni_millar[3]_i_3_n_0 ;
  wire uni_millon;
  wire \uni_millon[0]_i_1_n_0 ;
  wire \uni_millon[1]_i_1_n_0 ;
  wire \uni_millon[2]_i_1_n_0 ;
  wire \uni_millon[3]_i_2_n_0 ;
  wire \uni_millon[3]_i_3_n_0 ;
  wire \unidades[2]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \cen_millar[0]_i_1 
       (.I0(digitos[20]),
        .O(\cen_millar[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \cen_millar[1]_i_1 
       (.I0(digitos[22]),
        .I1(digitos[23]),
        .I2(digitos[21]),
        .I3(digitos[20]),
        .O(\cen_millar[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cen_millar[2]_i_1 
       (.I0(digitos[22]),
        .I1(digitos[21]),
        .I2(digitos[20]),
        .O(\cen_millar[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \cen_millar[3]_i_1 
       (.I0(\dec_millar[3]_i_5_n_0 ),
        .I1(\dec_millar[3]_i_4_n_0 ),
        .I2(decenas),
        .I3(\uni_millar[3]_i_3_n_0 ),
        .I4(\cen_millar[3]_i_3_n_0 ),
        .O(cen_millar));
  LUT4 #(
    .INIT(16'h6F80)) 
    \cen_millar[3]_i_2 
       (.I0(digitos[22]),
        .I1(digitos[21]),
        .I2(digitos[20]),
        .I3(digitos[23]),
        .O(\cen_millar[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cen_millar[3]_i_3 
       (.I0(digitos[16]),
        .I1(digitos[17]),
        .I2(digitos[19]),
        .I3(digitos[18]),
        .O(\cen_millar[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cen_millar_reg[0] 
       (.C(CLK_10MHZ),
        .CE(cen_millar),
        .D(\cen_millar[0]_i_1_n_0 ),
        .Q(digitos[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cen_millar_reg[1] 
       (.C(CLK_10MHZ),
        .CE(cen_millar),
        .D(\cen_millar[1]_i_1_n_0 ),
        .Q(digitos[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cen_millar_reg[2] 
       (.C(CLK_10MHZ),
        .CE(cen_millar),
        .D(\cen_millar[2]_i_1_n_0 ),
        .Q(digitos[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cen_millar_reg[3] 
       (.C(CLK_10MHZ),
        .CE(cen_millar),
        .D(\cen_millar[3]_i_2_n_0 ),
        .Q(digitos[23]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \centenas[0]_i_1 
       (.I0(digitos[8]),
        .O(\centenas[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0FB0)) 
    \centenas[1]_i_1 
       (.I0(digitos[10]),
        .I1(digitos[11]),
        .I2(digitos[8]),
        .I3(digitos[9]),
        .O(\centenas[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \centenas[2]_i_1 
       (.I0(digitos[10]),
        .I1(digitos[8]),
        .I2(digitos[9]),
        .O(\centenas[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \centenas[3]_i_1 
       (.I0(decenas),
        .I1(digitos[6]),
        .I2(digitos[7]),
        .I3(digitos[5]),
        .I4(digitos[4]),
        .O(centenas));
  LUT4 #(
    .INIT(16'h7B80)) 
    \centenas[3]_i_2 
       (.I0(digitos[10]),
        .I1(digitos[8]),
        .I2(digitos[9]),
        .I3(digitos[11]),
        .O(\centenas[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \centenas_reg[0] 
       (.C(CLK_10MHZ),
        .CE(centenas),
        .D(\centenas[0]_i_1_n_0 ),
        .Q(digitos[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \centenas_reg[1] 
       (.C(CLK_10MHZ),
        .CE(centenas),
        .D(\centenas[1]_i_1_n_0 ),
        .Q(digitos[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \centenas_reg[2] 
       (.C(CLK_10MHZ),
        .CE(centenas),
        .D(\centenas[2]_i_1_n_0 ),
        .Q(digitos[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \centenas_reg[3] 
       (.C(CLK_10MHZ),
        .CE(centenas),
        .D(\centenas[3]_i_2_n_0 ),
        .Q(digitos[11]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dec_millar[0]_i_1 
       (.I0(digitos[16]),
        .O(\dec_millar[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0BF0)) 
    \dec_millar[1]_i_1 
       (.I0(digitos[18]),
        .I1(digitos[19]),
        .I2(digitos[17]),
        .I3(digitos[16]),
        .O(\dec_millar[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \dec_millar[2]_i_1 
       (.I0(digitos[18]),
        .I1(digitos[17]),
        .I2(digitos[16]),
        .O(\dec_millar[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \dec_millar[3]_i_1 
       (.I0(\dec_millar[3]_i_3_n_0 ),
        .I1(digitos[11]),
        .I2(digitos[10]),
        .I3(decenas),
        .I4(\dec_millar[3]_i_4_n_0 ),
        .I5(\dec_millar[3]_i_5_n_0 ),
        .O(dec_millar));
  LUT4 #(
    .INIT(16'h6F80)) 
    \dec_millar[3]_i_2 
       (.I0(digitos[18]),
        .I1(digitos[17]),
        .I2(digitos[16]),
        .I3(digitos[19]),
        .O(\dec_millar[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dec_millar[3]_i_3 
       (.I0(digitos[9]),
        .I1(digitos[8]),
        .O(\dec_millar[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \dec_millar[3]_i_4 
       (.I0(digitos[4]),
        .I1(digitos[5]),
        .I2(digitos[7]),
        .I3(digitos[6]),
        .O(\dec_millar[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \dec_millar[3]_i_5 
       (.I0(digitos[12]),
        .I1(digitos[13]),
        .I2(digitos[15]),
        .I3(digitos[14]),
        .O(\dec_millar[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_millar_reg[0] 
       (.C(CLK_10MHZ),
        .CE(dec_millar),
        .D(\dec_millar[0]_i_1_n_0 ),
        .Q(digitos[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dec_millar_reg[1] 
       (.C(CLK_10MHZ),
        .CE(dec_millar),
        .D(\dec_millar[1]_i_1_n_0 ),
        .Q(digitos[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dec_millar_reg[2] 
       (.C(CLK_10MHZ),
        .CE(dec_millar),
        .D(\dec_millar[2]_i_1_n_0 ),
        .Q(digitos[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dec_millar_reg[3] 
       (.C(CLK_10MHZ),
        .CE(dec_millar),
        .D(\dec_millar[3]_i_2_n_0 ),
        .Q(digitos[19]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dec_millon[0]_i_1 
       (.I0(dec_millon[0]),
        .O(\dec_millon[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \dec_millon[1]_i_1 
       (.I0(dec_millon[2]),
        .I1(dec_millon[3]),
        .I2(dec_millon[1]),
        .I3(dec_millon[0]),
        .O(\dec_millon[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \dec_millon[2]_i_1 
       (.I0(dec_millon[2]),
        .I1(dec_millon[1]),
        .I2(dec_millon[0]),
        .O(\dec_millon[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \dec_millon[3]_i_1 
       (.I0(uni_millon),
        .I1(digitos[26]),
        .I2(digitos[27]),
        .I3(digitos[25]),
        .I4(digitos[24]),
        .O(dec_millon_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \dec_millon[3]_i_2 
       (.I0(dec_millon[2]),
        .I1(dec_millon[1]),
        .I2(dec_millon[0]),
        .I3(dec_millon[3]),
        .O(\dec_millon[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_millon_reg[0] 
       (.C(CLK_10MHZ),
        .CE(dec_millon_0),
        .D(\dec_millon[0]_i_1_n_0 ),
        .Q(dec_millon[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dec_millon_reg[1] 
       (.C(CLK_10MHZ),
        .CE(dec_millon_0),
        .D(\dec_millon[1]_i_1_n_0 ),
        .Q(dec_millon[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dec_millon_reg[2] 
       (.C(CLK_10MHZ),
        .CE(dec_millon_0),
        .D(\dec_millon[2]_i_1_n_0 ),
        .Q(dec_millon[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dec_millon_reg[3] 
       (.C(CLK_10MHZ),
        .CE(dec_millon_0),
        .D(\dec_millon[3]_i_2_n_0 ),
        .Q(dec_millon[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \decenas[0]_i_1 
       (.I0(digitos[4]),
        .O(\decenas[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \decenas[1]_i_1 
       (.I0(digitos[6]),
        .I1(digitos[7]),
        .I2(digitos[4]),
        .I3(digitos[5]),
        .O(\decenas[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \decenas[2]_i_1 
       (.I0(digitos[6]),
        .I1(digitos[4]),
        .I2(digitos[5]),
        .O(\decenas[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \decenas[3]_i_1 
       (.I0(E),
        .I1(digitos[2]),
        .I2(digitos[3]),
        .I3(digitos[1]),
        .I4(digitos[0]),
        .O(decenas));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7B80)) 
    \decenas[3]_i_2 
       (.I0(digitos[6]),
        .I1(digitos[4]),
        .I2(digitos[5]),
        .I3(digitos[7]),
        .O(\decenas[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \decenas_reg[0] 
       (.C(CLK_10MHZ),
        .CE(decenas),
        .D(\decenas[0]_i_1_n_0 ),
        .Q(digitos[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \decenas_reg[1] 
       (.C(CLK_10MHZ),
        .CE(decenas),
        .D(\decenas[1]_i_1_n_0 ),
        .Q(digitos[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \decenas_reg[2] 
       (.C(CLK_10MHZ),
        .CE(decenas),
        .D(\decenas[2]_i_1_n_0 ),
        .Q(digitos[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \decenas_reg[3] 
       (.C(CLK_10MHZ),
        .CE(decenas),
        .D(\decenas[3]_i_2_n_0 ),
        .Q(digitos[7]),
        .R(SR));
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
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \display_po_OBUF[0]_inst_i_2 
       (.I0(dec_millon[3]),
        .I1(dec_millon[2]),
        .I2(dec_millon[0]),
        .I3(dec_millon[1]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[0]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0984FFFF09840000)) 
    \display_po_OBUF[0]_inst_i_3 
       (.I0(digitos[23]),
        .I1(digitos[20]),
        .I2(digitos[21]),
        .I3(digitos[22]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[0]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2190FFFF21900000)) 
    \display_po_OBUF[0]_inst_i_4 
       (.I0(digitos[15]),
        .I1(digitos[13]),
        .I2(digitos[12]),
        .I3(digitos[14]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[0]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \display_po_OBUF[0]_inst_i_5 
       (.I0(digitos[7]),
        .I1(digitos[6]),
        .I2(digitos[4]),
        .I3(digitos[5]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[0]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0984)) 
    \display_po_OBUF[0]_inst_i_6 
       (.I0(digitos[27]),
        .I1(digitos[24]),
        .I2(digitos[25]),
        .I3(digitos[26]),
        .O(\display_po_OBUF[0]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0984)) 
    \display_po_OBUF[0]_inst_i_7 
       (.I0(digitos[19]),
        .I1(digitos[16]),
        .I2(digitos[17]),
        .I3(digitos[18]),
        .O(\display_po_OBUF[0]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2190)) 
    \display_po_OBUF[0]_inst_i_8 
       (.I0(digitos[11]),
        .I1(digitos[9]),
        .I2(digitos[8]),
        .I3(digitos[10]),
        .O(\display_po_OBUF[0]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2910)) 
    \display_po_OBUF[0]_inst_i_9 
       (.I0(digitos[3]),
        .I1(digitos[1]),
        .I2(digitos[2]),
        .I3(digitos[0]),
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
  LUT6 #(
    .INIT(64'h9E80FFFF9E800000)) 
    \display_po_OBUF[1]_inst_i_2 
       (.I0(dec_millon[3]),
        .I1(dec_millon[1]),
        .I2(dec_millon[0]),
        .I3(dec_millon[2]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[1]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9E80FFFF9E800000)) 
    \display_po_OBUF[1]_inst_i_3 
       (.I0(digitos[23]),
        .I1(digitos[21]),
        .I2(digitos[20]),
        .I3(digitos[22]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[1]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB680FFFFB6800000)) 
    \display_po_OBUF[1]_inst_i_4 
       (.I0(digitos[15]),
        .I1(digitos[12]),
        .I2(digitos[13]),
        .I3(digitos[14]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[1]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB680FFFFB6800000)) 
    \display_po_OBUF[1]_inst_i_5 
       (.I0(digitos[7]),
        .I1(digitos[4]),
        .I2(digitos[5]),
        .I3(digitos[6]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[1]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9E80)) 
    \display_po_OBUF[1]_inst_i_6 
       (.I0(digitos[27]),
        .I1(digitos[25]),
        .I2(digitos[24]),
        .I3(digitos[26]),
        .O(\display_po_OBUF[1]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9E80)) 
    \display_po_OBUF[1]_inst_i_7 
       (.I0(digitos[19]),
        .I1(digitos[17]),
        .I2(digitos[16]),
        .I3(digitos[18]),
        .O(\display_po_OBUF[1]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB680)) 
    \display_po_OBUF[1]_inst_i_8 
       (.I0(digitos[11]),
        .I1(digitos[8]),
        .I2(digitos[9]),
        .I3(digitos[10]),
        .O(\display_po_OBUF[1]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB680)) 
    \display_po_OBUF[1]_inst_i_9 
       (.I0(digitos[3]),
        .I1(digitos[0]),
        .I2(digitos[1]),
        .I3(digitos[2]),
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
    .INIT(16'h8098)) 
    \display_po_OBUF[2]_inst_i_10 
       (.I0(digitos[11]),
        .I1(digitos[10]),
        .I2(digitos[9]),
        .I3(digitos[8]),
        .O(\display_po_OBUF[2]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h45000004)) 
    \display_po_OBUF[2]_inst_i_11 
       (.I0(digit_select[0]),
        .I1(digitos[1]),
        .I2(digitos[0]),
        .I3(digitos[2]),
        .I4(digitos[3]),
        .O(\display_po_OBUF[2]_inst_i_11_n_0 ));
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
  LUT6 #(
    .INIT(64'h8098FFFF80980000)) 
    \display_po_OBUF[2]_inst_i_4 
       (.I0(digitos[15]),
        .I1(digitos[14]),
        .I2(digitos[13]),
        .I3(digitos[12]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[2]_inst_i_10_n_0 ),
        .O(\display_po_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80008280)) 
    \display_po_OBUF[2]_inst_i_5 
       (.I0(digit_select[0]),
        .I1(digitos[7]),
        .I2(digitos[6]),
        .I3(digitos[5]),
        .I4(digitos[4]),
        .I5(\display_po_OBUF[2]_inst_i_11_n_0 ),
        .O(\display_po_OBUF[2]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8098)) 
    \display_po_OBUF[2]_inst_i_6 
       (.I0(digitos[27]),
        .I1(digitos[26]),
        .I2(digitos[25]),
        .I3(digitos[24]),
        .O(\display_po_OBUF[2]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8098)) 
    \display_po_OBUF[2]_inst_i_7 
       (.I0(dec_millon[3]),
        .I1(dec_millon[2]),
        .I2(dec_millon[1]),
        .I3(dec_millon[0]),
        .O(\display_po_OBUF[2]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8098)) 
    \display_po_OBUF[2]_inst_i_8 
       (.I0(digitos[19]),
        .I1(digitos[18]),
        .I2(digitos[17]),
        .I3(digitos[16]),
        .O(\display_po_OBUF[2]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8098)) 
    \display_po_OBUF[2]_inst_i_9 
       (.I0(digitos[23]),
        .I1(digitos[22]),
        .I2(digitos[21]),
        .I3(digitos[20]),
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
  LUT6 #(
    .INIT(64'hC12CFFFFC12C0000)) 
    \display_po_OBUF[3]_inst_i_2 
       (.I0(dec_millon[3]),
        .I1(dec_millon[0]),
        .I2(dec_millon[1]),
        .I3(dec_millon[2]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[3]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8964FFFF89640000)) 
    \display_po_OBUF[3]_inst_i_3 
       (.I0(digitos[21]),
        .I1(digitos[20]),
        .I2(digitos[23]),
        .I3(digitos[22]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[3]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8962FFFF89620000)) 
    \display_po_OBUF[3]_inst_i_4 
       (.I0(digitos[12]),
        .I1(digitos[13]),
        .I2(digitos[15]),
        .I3(digitos[14]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[3]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8962FFFF89620000)) 
    \display_po_OBUF[3]_inst_i_5 
       (.I0(digitos[4]),
        .I1(digitos[5]),
        .I2(digitos[7]),
        .I3(digitos[6]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[3]_inst_i_9_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8964)) 
    \display_po_OBUF[3]_inst_i_6 
       (.I0(digitos[25]),
        .I1(digitos[24]),
        .I2(digitos[27]),
        .I3(digitos[26]),
        .O(\display_po_OBUF[3]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8964)) 
    \display_po_OBUF[3]_inst_i_7 
       (.I0(digitos[17]),
        .I1(digitos[16]),
        .I2(digitos[19]),
        .I3(digitos[18]),
        .O(\display_po_OBUF[3]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8962)) 
    \display_po_OBUF[3]_inst_i_8 
       (.I0(digitos[8]),
        .I1(digitos[9]),
        .I2(digitos[11]),
        .I3(digitos[10]),
        .O(\display_po_OBUF[3]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC324)) 
    \display_po_OBUF[3]_inst_i_9 
       (.I0(digitos[3]),
        .I1(digitos[2]),
        .I2(digitos[1]),
        .I3(digitos[0]),
        .O(\display_po_OBUF[3]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFE0)) 
    \display_po_OBUF[4]_inst_i_1 
       (.I0(\display_po_OBUF[4]_inst_i_2_n_0 ),
        .I1(\display_po_OBUF[4]_inst_i_3_n_0 ),
        .I2(digit_select[2]),
        .I3(\display_po_OBUF[4]_inst_i_4_n_0 ),
        .I4(\display_po_OBUF[4]_inst_i_5_n_0 ),
        .I5(\display_po_OBUF[4]_inst_i_6_n_0 ),
        .O(display_po_OBUF[4]));
  LUT6 #(
    .INIT(64'h0000571000000000)) 
    \display_po_OBUF[4]_inst_i_11 
       (.I0(digitos[11]),
        .I1(digitos[9]),
        .I2(digitos[10]),
        .I3(digitos[8]),
        .I4(digit_select[0]),
        .I5(digit_select[1]),
        .O(\display_po_OBUF[4]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01550010)) 
    \display_po_OBUF[4]_inst_i_2 
       (.I0(\display_po_OBUF[4]_inst_i_1_1 ),
        .I1(digitos[21]),
        .I2(digitos[22]),
        .I3(digitos[23]),
        .I4(digitos[20]),
        .I5(\display_po_OBUF[4]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAAAABAA)) 
    \display_po_OBUF[4]_inst_i_3 
       (.I0(\display_po_OBUF[4]_inst_i_9_n_0 ),
        .I1(\display_po_OBUF[4]_inst_i_1_0 ),
        .I2(dec_millon[1]),
        .I3(dec_millon[2]),
        .I4(dec_millon[3]),
        .I5(dec_millon[0]),
        .O(\display_po_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001111100000100)) 
    \display_po_OBUF[4]_inst_i_4 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digitos[1]),
        .I3(digitos[2]),
        .I4(digitos[3]),
        .I5(digitos[0]),
        .O(\display_po_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABABABABBBA)) 
    \display_po_OBUF[4]_inst_i_5 
       (.I0(\display_po_OBUF[4]_inst_i_11_n_0 ),
        .I1(\display_po_OBUF[4]_inst_i_1_0 ),
        .I2(digitos[12]),
        .I3(digitos[14]),
        .I4(digitos[13]),
        .I5(digitos[15]),
        .O(\display_po_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000223A00000000)) 
    \display_po_OBUF[4]_inst_i_6 
       (.I0(digitos[4]),
        .I1(digitos[7]),
        .I2(digitos[6]),
        .I3(digitos[5]),
        .I4(digit_select[1]),
        .I5(digit_select[0]),
        .O(\display_po_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0101010300010000)) 
    \display_po_OBUF[4]_inst_i_8 
       (.I0(digitos[19]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .I3(digitos[17]),
        .I4(digitos[18]),
        .I5(digitos[16]),
        .O(\display_po_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000571000000000)) 
    \display_po_OBUF[4]_inst_i_9 
       (.I0(digitos[27]),
        .I1(digitos[25]),
        .I2(digitos[26]),
        .I3(digitos[24]),
        .I4(digit_select[0]),
        .I5(digit_select[1]),
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
    .INIT(16'h5910)) 
    \display_po_OBUF[5]_inst_i_10 
       (.I0(digitos[11]),
        .I1(digitos[10]),
        .I2(digitos[9]),
        .I3(digitos[8]),
        .O(\display_po_OBUF[5]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0800A220)) 
    \display_po_OBUF[5]_inst_i_11 
       (.I0(digit_select[0]),
        .I1(digitos[6]),
        .I2(digitos[5]),
        .I3(digitos[4]),
        .I4(digitos[7]),
        .O(\display_po_OBUF[5]_inst_i_11_n_0 ));
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
  LUT6 #(
    .INIT(64'h5910FFFF59100000)) 
    \display_po_OBUF[5]_inst_i_4 
       (.I0(digitos[15]),
        .I1(digitos[14]),
        .I2(digitos[13]),
        .I3(digitos[12]),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[5]_inst_i_10_n_0 ),
        .O(\display_po_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00590010)) 
    \display_po_OBUF[5]_inst_i_5 
       (.I0(digitos[3]),
        .I1(digitos[2]),
        .I2(digitos[1]),
        .I3(digit_select[0]),
        .I4(digitos[0]),
        .I5(\display_po_OBUF[5]_inst_i_11_n_0 ),
        .O(\display_po_OBUF[5]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_6 
       (.I0(digitos[27]),
        .I1(digitos[26]),
        .I2(digitos[24]),
        .I3(digitos[25]),
        .O(\display_po_OBUF[5]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4854)) 
    \display_po_OBUF[5]_inst_i_7 
       (.I0(dec_millon[3]),
        .I1(dec_millon[0]),
        .I2(dec_millon[1]),
        .I3(dec_millon[2]),
        .O(\display_po_OBUF[5]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_8 
       (.I0(digitos[19]),
        .I1(digitos[18]),
        .I2(digitos[16]),
        .I3(digitos[17]),
        .O(\display_po_OBUF[5]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_9 
       (.I0(digitos[23]),
        .I1(digitos[22]),
        .I2(digitos[20]),
        .I3(digitos[21]),
        .O(\display_po_OBUF[5]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    \display_po_OBUF[6]_inst_i_1 
       (.I0(\display_po_OBUF[6]_inst_i_2_n_0 ),
        .I1(digit_select[2]),
        .I2(\display_po_OBUF[6]_inst_i_3_n_0 ),
        .I3(\display_po_OBUF[6]_inst_i_4_n_0 ),
        .I4(\display_po_OBUF[6]_inst_i_5_n_0 ),
        .I5(\display_po_OBUF[6]_inst_i_6_n_0 ),
        .O(display_po_OBUF[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_10 
       (.I0(digitos[23]),
        .I1(digitos[20]),
        .I2(digitos[22]),
        .I3(digitos[21]),
        .O(\display_po_OBUF[6]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_11 
       (.I0(digitos[27]),
        .I1(digitos[24]),
        .I2(digitos[26]),
        .I3(digitos[25]),
        .O(\display_po_OBUF[6]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_12 
       (.I0(dec_millon[3]),
        .I1(dec_millon[0]),
        .I2(dec_millon[2]),
        .I3(dec_millon[1]),
        .O(\display_po_OBUF[6]_inst_i_12_n_0 ));
  MUXF8 \display_po_OBUF[6]_inst_i_2 
       (.I0(\display_po_OBUF[6]_inst_i_7_n_0 ),
        .I1(\display_po_OBUF[6]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_2_n_0 ),
        .S(digit_select[1]));
  LUT6 #(
    .INIT(64'h0200000000022002)) 
    \display_po_OBUF[6]_inst_i_3 
       (.I0(digit_select[0]),
        .I1(digit_select[1]),
        .I2(digitos[7]),
        .I3(digitos[6]),
        .I4(digitos[4]),
        .I5(digitos[5]),
        .O(\display_po_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000010010010001)) 
    \display_po_OBUF[6]_inst_i_4 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digitos[1]),
        .I3(digitos[2]),
        .I4(digitos[0]),
        .I5(digitos[3]),
        .O(\display_po_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4211000000000000)) 
    \display_po_OBUF[6]_inst_i_5 
       (.I0(digitos[15]),
        .I1(digitos[13]),
        .I2(digitos[12]),
        .I3(digitos[14]),
        .I4(digit_select[0]),
        .I5(digit_select[1]),
        .O(\display_po_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000421100000000)) 
    \display_po_OBUF[6]_inst_i_6 
       (.I0(digitos[11]),
        .I1(digitos[9]),
        .I2(digitos[8]),
        .I3(digitos[10]),
        .I4(digit_select[0]),
        .I5(digit_select[1]),
        .O(\display_po_OBUF[6]_inst_i_6_n_0 ));
  MUXF7 \display_po_OBUF[6]_inst_i_7 
       (.I0(\display_po_OBUF[6]_inst_i_9_n_0 ),
        .I1(\display_po_OBUF[6]_inst_i_10_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_7_n_0 ),
        .S(digit_select[0]));
  MUXF7 \display_po_OBUF[6]_inst_i_8 
       (.I0(\display_po_OBUF[6]_inst_i_11_n_0 ),
        .I1(\display_po_OBUF[6]_inst_i_12_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_8_n_0 ),
        .S(digit_select[0]));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_9 
       (.I0(digitos[19]),
        .I1(digitos[16]),
        .I2(digitos[18]),
        .I3(digitos[17]),
        .O(\display_po_OBUF[6]_inst_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uni_millar[0]_i_1 
       (.I0(digitos[12]),
        .O(\uni_millar[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \uni_millar[1]_i_1 
       (.I0(digitos[14]),
        .I1(digitos[15]),
        .I2(digitos[12]),
        .I3(digitos[13]),
        .O(\uni_millar[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \uni_millar[2]_i_1 
       (.I0(digitos[14]),
        .I1(digitos[12]),
        .I2(digitos[13]),
        .O(\uni_millar[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \uni_millar[3]_i_1 
       (.I0(digitos[4]),
        .I1(digitos[5]),
        .I2(digitos[7]),
        .I3(digitos[6]),
        .I4(decenas),
        .I5(\uni_millar[3]_i_3_n_0 ),
        .O(uni_millar));
  LUT4 #(
    .INIT(16'h7B80)) 
    \uni_millar[3]_i_2 
       (.I0(digitos[14]),
        .I1(digitos[12]),
        .I2(digitos[13]),
        .I3(digitos[15]),
        .O(\uni_millar[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \uni_millar[3]_i_3 
       (.I0(digitos[8]),
        .I1(digitos[9]),
        .I2(digitos[11]),
        .I3(digitos[10]),
        .O(\uni_millar[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uni_millar_reg[0] 
       (.C(CLK_10MHZ),
        .CE(uni_millar),
        .D(\uni_millar[0]_i_1_n_0 ),
        .Q(digitos[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \uni_millar_reg[1] 
       (.C(CLK_10MHZ),
        .CE(uni_millar),
        .D(\uni_millar[1]_i_1_n_0 ),
        .Q(digitos[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \uni_millar_reg[2] 
       (.C(CLK_10MHZ),
        .CE(uni_millar),
        .D(\uni_millar[2]_i_1_n_0 ),
        .Q(digitos[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \uni_millar_reg[3] 
       (.C(CLK_10MHZ),
        .CE(uni_millar),
        .D(\uni_millar[3]_i_2_n_0 ),
        .Q(digitos[15]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \uni_millon[0]_i_1 
       (.I0(digitos[24]),
        .O(\uni_millon[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \uni_millon[1]_i_1 
       (.I0(digitos[26]),
        .I1(digitos[27]),
        .I2(digitos[25]),
        .I3(digitos[24]),
        .O(\uni_millon[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \uni_millon[2]_i_1 
       (.I0(digitos[26]),
        .I1(digitos[25]),
        .I2(digitos[24]),
        .O(\uni_millon[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \uni_millon[3]_i_1 
       (.I0(\cen_millar[3]_i_3_n_0 ),
        .I1(\uni_millar[3]_i_3_n_0 ),
        .I2(decenas),
        .I3(\dec_millar[3]_i_4_n_0 ),
        .I4(\dec_millar[3]_i_5_n_0 ),
        .I5(\uni_millon[3]_i_3_n_0 ),
        .O(uni_millon));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \uni_millon[3]_i_2 
       (.I0(digitos[26]),
        .I1(digitos[25]),
        .I2(digitos[24]),
        .I3(digitos[27]),
        .O(\uni_millon[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \uni_millon[3]_i_3 
       (.I0(digitos[20]),
        .I1(digitos[21]),
        .I2(digitos[23]),
        .I3(digitos[22]),
        .O(\uni_millon[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uni_millon_reg[0] 
       (.C(CLK_10MHZ),
        .CE(uni_millon),
        .D(\uni_millon[0]_i_1_n_0 ),
        .Q(digitos[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \uni_millon_reg[1] 
       (.C(CLK_10MHZ),
        .CE(uni_millon),
        .D(\uni_millon[1]_i_1_n_0 ),
        .Q(digitos[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \uni_millon_reg[2] 
       (.C(CLK_10MHZ),
        .CE(uni_millon),
        .D(\uni_millon[2]_i_1_n_0 ),
        .Q(digitos[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \uni_millon_reg[3] 
       (.C(CLK_10MHZ),
        .CE(uni_millon),
        .D(\uni_millon[3]_i_2_n_0 ),
        .Q(digitos[27]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \unidades[0]_i_1 
       (.I0(digitos[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'h0FB0)) 
    \unidades[1]_i_1 
       (.I0(digitos[2]),
        .I1(digitos[3]),
        .I2(digitos[0]),
        .I3(digitos[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \unidades[2]_i_1 
       (.I0(digitos[2]),
        .I1(digitos[0]),
        .I2(digitos[1]),
        .O(\unidades[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7B80)) 
    \unidades[3]_i_1 
       (.I0(digitos[2]),
        .I1(digitos[0]),
        .I2(digitos[1]),
        .I3(digitos[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \unidades_reg[0] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(p_0_in[0]),
        .Q(digitos[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \unidades_reg[1] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(p_0_in[1]),
        .Q(digitos[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \unidades_reg[2] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(\unidades[2]_i_1_n_0 ),
        .Q(digitos[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \unidades_reg[3] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(p_0_in[3]),
        .Q(digitos[3]),
        .R(SR));
endmodule

module module_seg7_control
   (display_select_po_OBUF,
    digit_select,
    \digit_select_reg[0]_0 ,
    \digit_select_reg[1]_0 ,
    SR,
    CLK_10MHZ);
  output [7:0]display_select_po_OBUF;
  output [2:0]digit_select;
  output \digit_select_reg[0]_0 ;
  output \digit_select_reg[1]_0 ;
  input [0:0]SR;
  input CLK_10MHZ;

  wire CLK_10MHZ;
  wire [0:0]SR;
  wire [2:0]digit_select;
  wire \digit_select[0]_i_1_n_0 ;
  wire \digit_select[1]_i_1_n_0 ;
  wire \digit_select[2]_i_1_n_0 ;
  wire \digit_select_reg[0]_0 ;
  wire \digit_select_reg[1]_0 ;
  wire [13:0]digit_timer;
  wire digit_timer0_carry__0_n_0;
  wire digit_timer0_carry__0_n_4;
  wire digit_timer0_carry__0_n_5;
  wire digit_timer0_carry__0_n_6;
  wire digit_timer0_carry__0_n_7;
  wire digit_timer0_carry__1_n_0;
  wire digit_timer0_carry__1_n_4;
  wire digit_timer0_carry__1_n_5;
  wire digit_timer0_carry__1_n_6;
  wire digit_timer0_carry__1_n_7;
  wire digit_timer0_carry__2_n_7;
  wire digit_timer0_carry_n_0;
  wire digit_timer0_carry_n_4;
  wire digit_timer0_carry_n_5;
  wire digit_timer0_carry_n_6;
  wire digit_timer0_carry_n_7;
  wire \digit_timer[13]_i_2_n_0 ;
  wire \digit_timer[13]_i_3_n_0 ;
  wire \digit_timer[13]_i_4_n_0 ;
  wire [13:0]digit_timer_0;
  wire [7:0]display_select_po_OBUF;
  wire [2:0]NLW_digit_timer0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_digit_timer0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_digit_timer0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_digit_timer0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_digit_timer0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \digit_select[0]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_select[0]),
        .O(\digit_select[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \digit_select[1]_i_1 
       (.I0(digit_select[0]),
        .I1(\digit_timer[13]_i_2_n_0 ),
        .I2(digit_select[1]),
        .O(\digit_select[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \digit_select[2]_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(\digit_timer[13]_i_2_n_0 ),
        .I3(digit_select[2]),
        .O(\digit_select[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_select[0]_i_1_n_0 ),
        .Q(digit_select[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_select[1]_i_1_n_0 ),
        .Q(digit_select[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(\digit_select[2]_i_1_n_0 ),
        .Q(digit_select[2]),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 digit_timer0_carry
       (.CI(1'b0),
        .CO({digit_timer0_carry_n_0,NLW_digit_timer0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(digit_timer[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({digit_timer0_carry_n_4,digit_timer0_carry_n_5,digit_timer0_carry_n_6,digit_timer0_carry_n_7}),
        .S(digit_timer[4:1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 digit_timer0_carry__0
       (.CI(digit_timer0_carry_n_0),
        .CO({digit_timer0_carry__0_n_0,NLW_digit_timer0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({digit_timer0_carry__0_n_4,digit_timer0_carry__0_n_5,digit_timer0_carry__0_n_6,digit_timer0_carry__0_n_7}),
        .S(digit_timer[8:5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 digit_timer0_carry__1
       (.CI(digit_timer0_carry__0_n_0),
        .CO({digit_timer0_carry__1_n_0,NLW_digit_timer0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({digit_timer0_carry__1_n_4,digit_timer0_carry__1_n_5,digit_timer0_carry__1_n_6,digit_timer0_carry__1_n_7}),
        .S(digit_timer[12:9]));
  CARRY4 digit_timer0_carry__2
       (.CI(digit_timer0_carry__1_n_0),
        .CO(NLW_digit_timer0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_digit_timer0_carry__2_O_UNCONNECTED[3:1],digit_timer0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,digit_timer[13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \digit_timer[0]_i_1 
       (.I0(digit_timer[0]),
        .O(digit_timer_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[10]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__1_n_6),
        .O(digit_timer_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[11]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__1_n_5),
        .O(digit_timer_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[12]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__1_n_4),
        .O(digit_timer_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[13]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__2_n_7),
        .O(digit_timer_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \digit_timer[13]_i_2 
       (.I0(\digit_timer[13]_i_3_n_0 ),
        .I1(digit_timer[3]),
        .I2(digit_timer[2]),
        .I3(digit_timer[5]),
        .I4(digit_timer[4]),
        .I5(\digit_timer[13]_i_4_n_0 ),
        .O(\digit_timer[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \digit_timer[13]_i_3 
       (.I0(digit_timer[7]),
        .I1(digit_timer[6]),
        .I2(digit_timer[9]),
        .I3(digit_timer[8]),
        .O(\digit_timer[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \digit_timer[13]_i_4 
       (.I0(digit_timer[12]),
        .I1(digit_timer[13]),
        .I2(digit_timer[11]),
        .I3(digit_timer[10]),
        .I4(digit_timer[1]),
        .I5(digit_timer[0]),
        .O(\digit_timer[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[1]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry_n_7),
        .O(digit_timer_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[2]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry_n_6),
        .O(digit_timer_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[3]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry_n_5),
        .O(digit_timer_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[4]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry_n_4),
        .O(digit_timer_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[5]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__0_n_7),
        .O(digit_timer_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[6]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__0_n_6),
        .O(digit_timer_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[7]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__0_n_5),
        .O(digit_timer_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[8]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__0_n_4),
        .O(digit_timer_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[9]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__1_n_7),
        .O(digit_timer_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[0]),
        .Q(digit_timer[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[10] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[10]),
        .Q(digit_timer[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[11] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[11]),
        .Q(digit_timer[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[12] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[12]),
        .Q(digit_timer[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[13] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[13]),
        .Q(digit_timer[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[1]),
        .Q(digit_timer[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[2]),
        .Q(digit_timer[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[3] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[3]),
        .Q(digit_timer[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[4] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[4]),
        .Q(digit_timer[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[5] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[5]),
        .Q(digit_timer[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[6] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[6]),
        .Q(digit_timer[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[7] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[7]),
        .Q(digit_timer[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[8] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[8]),
        .Q(digit_timer[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit_timer_reg[9] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(digit_timer_0[9]),
        .Q(digit_timer[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h7)) 
    \display_po_OBUF[4]_inst_i_10 
       (.I0(digit_select[0]),
        .I1(digit_select[1]),
        .O(\digit_select_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \display_po_OBUF[4]_inst_i_7 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .O(\digit_select_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \display_select_po_OBUF[0]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[1]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[0]));
  LUT3 #(
    .INIT(8'hFB)) 
    \display_select_po_OBUF[1]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[1]));
  LUT3 #(
    .INIT(8'hFB)) 
    \display_select_po_OBUF[2]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[1]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[2]));
  LUT3 #(
    .INIT(8'hBF)) 
    \display_select_po_OBUF[3]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[1]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[3]));
  LUT3 #(
    .INIT(8'hFD)) 
    \display_select_po_OBUF[4]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[1]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[4]));
  LUT3 #(
    .INIT(8'hDF)) 
    \display_select_po_OBUF[5]_inst_i_1 
       (.I0(digit_select[0]),
        .I1(digit_select[1]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[5]));
  LUT3 #(
    .INIT(8'hDF)) 
    \display_select_po_OBUF[6]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \display_select_po_OBUF[7]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[7]));
endmodule

(* BITS_ANODO = "14" *) (* BITS_CATODO = "20" *) (* COUNT_ANODO = "10000" *) 
(* COUNT_CATODO = "1000000" *) (* ECO_CHECKSUM = "2209ca28" *) 
(* NotValidForBitStream *)
module top_module_contador_7seg
   (clk_100Mhz_pi,
    reset_pi,
    display_po,
    display_select_po);
  input clk_100Mhz_pi;
  input reset_pi;
  output [6:0]display_po;
  output [7:0]display_select_po;

  (* IBUF_LOW_PWR *) wire clk_100Mhz_pi;
  wire clk_10Mhz;
  wire clock_catodo_en;
  wire [2:0]digit_select;
  wire [6:0]display_po;
  wire [6:0]display_po_OBUF;
  wire [7:0]display_select_po;
  wire [7:0]display_select_po_OBUF;
  wire reset_pi;
  wire reset_pi_IBUF;
  wire seg7_control_n_11;
  wire seg7_control_n_12;
  wire NLW_generate_clock_10Mhz_locked_UNCONNECTED;

initial begin
 $sdf_annotate("tb_simulate_time_impl.sdf",,,,"tool_control");
end
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
        .CLK_10MHZ(clk_10Mhz),
        .locked(NLW_generate_clock_10Mhz_locked_UNCONNECTED));
  module_clock_catodo module_clock_catodo
       (.CLK_10MHZ(clk_10Mhz),
        .E(clock_catodo_en),
        .SR(reset_pi_IBUF));
  module_digitos module_digitos
       (.CLK_10MHZ(clk_10Mhz),
        .E(clock_catodo_en),
        .SR(reset_pi_IBUF),
        .digit_select(digit_select),
        .display_po_OBUF(display_po_OBUF),
        .\display_po_OBUF[4]_inst_i_1_0 (seg7_control_n_11),
        .\display_po_OBUF[4]_inst_i_1_1 (seg7_control_n_12));
  IBUF reset_pi_IBUF_inst
       (.I(reset_pi),
        .O(reset_pi_IBUF));
  module_seg7_control seg7_control
       (.CLK_10MHZ(clk_10Mhz),
        .SR(reset_pi_IBUF),
        .digit_select(digit_select),
        .\digit_select_reg[0]_0 (seg7_control_n_11),
        .\digit_select_reg[1]_0 (seg7_control_n_12),
        .display_select_po_OBUF(display_select_po_OBUF));
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
