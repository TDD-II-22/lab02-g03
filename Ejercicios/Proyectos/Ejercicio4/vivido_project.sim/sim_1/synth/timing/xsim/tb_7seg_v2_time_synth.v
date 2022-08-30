// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Aug 30 11:50:43 2022
// Host        : Andrey-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/carlo/Andrey/TEC/Semestre_II_2022/Taller_Digitales/Laboratorios/Laboratorio_2/Repositorio/lab02-g03/Ejercicios/Proyectos/Ejercicio4/vivido_project.sim/sim_1/synth/timing/xsim/tb_7seg_v2_time_synth.v
// Design      : top_module_7seg_v2
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
  wire [24:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[24]_i_5_n_0 ;
  wire \counter[24]_i_6_n_0 ;
  wire \counter[24]_i_7_n_0 ;
  wire [24:0]counter_0;
  wire [24:1]data0;
  wire [3:3]NLW_counter0_carry__4_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00100000)) 
    clk_out_i_1
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .O(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(clk_out),
        .Q(E),
        .R(SR));
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({NLW_counter0_carry__4_CO_UNCONNECTED[3],counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[10]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[10]),
        .O(counter_0[10]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[11]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[11]),
        .O(counter_0[11]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[12]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[12]),
        .O(counter_0[12]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[13]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[13]),
        .O(counter_0[13]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[14]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[14]),
        .O(counter_0[14]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[15]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[15]),
        .O(counter_0[15]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[16]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[16]),
        .O(counter_0[16]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[17]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[17]),
        .O(counter_0[17]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[18]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[18]),
        .O(counter_0[18]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[19]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[19]),
        .O(counter_0[19]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[1]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[1]),
        .O(counter_0[1]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[20]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[20]),
        .O(counter_0[20]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[21]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[21]),
        .O(counter_0[21]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[22]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[22]),
        .O(counter_0[22]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[23]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[23]),
        .O(counter_0[23]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[24]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[24]),
        .O(counter_0[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \counter[24]_i_2 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(\counter[24]_i_4_n_0 ),
        .I3(\counter[24]_i_5_n_0 ),
        .I4(\counter[24]_i_6_n_0 ),
        .I5(\counter[24]_i_7_n_0 ),
        .O(\counter[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[24]_i_3 
       (.I0(counter[3]),
        .I1(counter[6]),
        .I2(counter[1]),
        .I3(counter[4]),
        .O(\counter[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[24]_i_4 
       (.I0(counter[13]),
        .I1(counter[14]),
        .I2(counter[11]),
        .I3(counter[12]),
        .O(\counter[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[24]_i_5 
       (.I0(counter[10]),
        .I1(counter[9]),
        .I2(counter[7]),
        .I3(counter[8]),
        .O(\counter[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[24]_i_6 
       (.I0(counter[21]),
        .I1(counter[22]),
        .I2(counter[20]),
        .I3(counter[19]),
        .O(\counter[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[24]_i_7 
       (.I0(counter[18]),
        .I1(counter[17]),
        .I2(counter[16]),
        .I3(counter[15]),
        .O(\counter[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[2]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[2]),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[3]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[3]),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[4]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[4]),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[5]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[5]),
        .O(counter_0[5]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[6]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[6]),
        .O(counter_0[6]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[7]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[7]),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[8]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[8]),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[9]_i_1 
       (.I0(\counter[24]_i_2_n_0 ),
        .I1(\counter[24]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
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
    \counter_reg[20] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[20]),
        .Q(counter[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[21]),
        .Q(counter[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[22]),
        .Q(counter[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[23]),
        .Q(counter[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .D(counter_0[24]),
        .Q(counter[24]),
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

module module_pseudo_random
   (Q,
    SR,
    E,
    CLK_10MHZ);
  output [31:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input CLK_10MHZ;

  wire CLK_10MHZ;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [0:0]p_0_out__0;

  LUT4 #(
    .INIT(16'h9669)) 
    p_0_out
       (.I0(Q[1]),
        .I1(Q[21]),
        .I2(Q[31]),
        .I3(Q[0]),
        .O(p_0_out__0));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[10] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[8]),
        .Q(Q[9]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[11] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[9]),
        .Q(Q[10]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[12] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[10]),
        .Q(Q[11]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[13] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[11]),
        .Q(Q[12]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[14] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[12]),
        .Q(Q[13]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[15] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[13]),
        .Q(Q[14]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[16] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[14]),
        .Q(Q[15]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[17] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[15]),
        .Q(Q[16]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[18] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[16]),
        .Q(Q[17]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[19] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[17]),
        .Q(Q[18]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[1] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(p_0_out__0),
        .Q(Q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[20] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[18]),
        .Q(Q[19]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[21] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[19]),
        .Q(Q[20]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[22] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[20]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[23] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[21]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[24] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[22]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[25] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[23]),
        .Q(Q[24]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[26] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[24]),
        .Q(Q[25]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[27] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[25]),
        .Q(Q[26]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[28] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[26]),
        .Q(Q[27]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[29] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[27]),
        .Q(Q[28]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[2] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[0]),
        .Q(Q[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[30] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[28]),
        .Q(Q[29]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[31] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[29]),
        .Q(Q[30]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[32] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[30]),
        .Q(Q[31]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[3] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[1]),
        .Q(Q[2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[4] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[2]),
        .Q(Q[3]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[5] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[3]),
        .Q(Q[4]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[6] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[4]),
        .Q(Q[5]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[7] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[5]),
        .Q(Q[6]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[8] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[6]),
        .Q(Q[7]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[9] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[7]),
        .Q(Q[8]),
        .R(SR));
endmodule

module module_register_pp
   (display_po_OBUF,
    digit_select,
    control_pi_IBUF,
    SR,
    D,
    CLK_10MHZ);
  output [6:0]display_po_OBUF;
  input [2:0]digit_select;
  input control_pi_IBUF;
  input [0:0]SR;
  input [31:0]D;
  input CLK_10MHZ;

  wire CLK_10MHZ;
  wire [31:0]D;
  wire [0:0]SR;
  wire control_pi_IBUF;
  wire [2:0]digit_select;
  wire [6:0]display_po_OBUF;
  wire \display_po_OBUF[0]_inst_i_2_n_0 ;
  wire \display_po_OBUF[0]_inst_i_3_n_0 ;
  wire \display_po_OBUF[0]_inst_i_4_n_0 ;
  wire \display_po_OBUF[0]_inst_i_5_n_0 ;
  wire \display_po_OBUF[0]_inst_i_6_n_0 ;
  wire \display_po_OBUF[0]_inst_i_7_n_0 ;
  wire \display_po_OBUF[0]_inst_i_8_n_0 ;
  wire \display_po_OBUF[1]_inst_i_2_n_0 ;
  wire \display_po_OBUF[1]_inst_i_3_n_0 ;
  wire \display_po_OBUF[1]_inst_i_4_n_0 ;
  wire \display_po_OBUF[1]_inst_i_5_n_0 ;
  wire \display_po_OBUF[1]_inst_i_6_n_0 ;
  wire \display_po_OBUF[1]_inst_i_7_n_0 ;
  wire \display_po_OBUF[1]_inst_i_8_n_0 ;
  wire \display_po_OBUF[2]_inst_i_2_n_0 ;
  wire \display_po_OBUF[2]_inst_i_3_n_0 ;
  wire \display_po_OBUF[2]_inst_i_4_n_0 ;
  wire \display_po_OBUF[2]_inst_i_5_n_0 ;
  wire \display_po_OBUF[2]_inst_i_6_n_0 ;
  wire \display_po_OBUF[2]_inst_i_7_n_0 ;
  wire \display_po_OBUF[2]_inst_i_8_n_0 ;
  wire \display_po_OBUF[3]_inst_i_2_n_0 ;
  wire \display_po_OBUF[3]_inst_i_3_n_0 ;
  wire \display_po_OBUF[3]_inst_i_4_n_0 ;
  wire \display_po_OBUF[3]_inst_i_5_n_0 ;
  wire \display_po_OBUF[3]_inst_i_6_n_0 ;
  wire \display_po_OBUF[3]_inst_i_7_n_0 ;
  wire \display_po_OBUF[3]_inst_i_8_n_0 ;
  wire \display_po_OBUF[4]_inst_i_2_n_0 ;
  wire \display_po_OBUF[4]_inst_i_3_n_0 ;
  wire \display_po_OBUF[4]_inst_i_4_n_0 ;
  wire \display_po_OBUF[4]_inst_i_5_n_0 ;
  wire \display_po_OBUF[4]_inst_i_6_n_0 ;
  wire \display_po_OBUF[4]_inst_i_7_n_0 ;
  wire \display_po_OBUF[4]_inst_i_8_n_0 ;
  wire \display_po_OBUF[5]_inst_i_2_n_0 ;
  wire \display_po_OBUF[5]_inst_i_3_n_0 ;
  wire \display_po_OBUF[5]_inst_i_4_n_0 ;
  wire \display_po_OBUF[5]_inst_i_5_n_0 ;
  wire \display_po_OBUF[5]_inst_i_6_n_0 ;
  wire \display_po_OBUF[5]_inst_i_7_n_0 ;
  wire \display_po_OBUF[5]_inst_i_8_n_0 ;
  wire \display_po_OBUF[6]_inst_i_2_n_0 ;
  wire \display_po_OBUF[6]_inst_i_3_n_0 ;
  wire \display_po_OBUF[6]_inst_i_4_n_0 ;
  wire \display_po_OBUF[6]_inst_i_5_n_0 ;
  wire \display_po_OBUF[6]_inst_i_6_n_0 ;
  wire \display_po_OBUF[6]_inst_i_7_n_0 ;
  wire \display_po_OBUF[6]_inst_i_8_n_0 ;
  wire [6:0]\seg7_control/fun_display__32 ;
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
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \display_po_OBUF[0]_inst_i_2 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[30] ),
        .I2(\state_reg_n_0_[28] ),
        .I3(\state_reg_n_0_[29] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[0]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \display_po_OBUF[0]_inst_i_3 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[22] ),
        .I2(\state_reg_n_0_[20] ),
        .I3(\state_reg_n_0_[21] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[0]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \display_po_OBUF[0]_inst_i_4 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[14] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(\state_reg_n_0_[13] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[0]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \display_po_OBUF[0]_inst_i_5 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(digit_select[0]),
        .I5(\seg7_control/fun_display__32 [0]),
        .O(\display_po_OBUF[0]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[26] ),
        .I2(\state_reg_n_0_[24] ),
        .I3(\state_reg_n_0_[25] ),
        .O(\display_po_OBUF[0]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_7 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[16] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[0]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[0]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/fun_display__32 [0]));
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
    .INIT(64'hA4C8FFFFA4C80000)) 
    \display_po_OBUF[1]_inst_i_2 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[30] ),
        .I2(\state_reg_n_0_[29] ),
        .I3(\state_reg_n_0_[28] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[1]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA4C8FFFFA4C80000)) 
    \display_po_OBUF[1]_inst_i_3 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[22] ),
        .I2(\state_reg_n_0_[21] ),
        .I3(\state_reg_n_0_[20] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[1]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA4C8FFFFA4C80000)) 
    \display_po_OBUF[1]_inst_i_4 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[14] ),
        .I2(\state_reg_n_0_[13] ),
        .I3(\state_reg_n_0_[12] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[1]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA4C8FFFFA4C80000)) 
    \display_po_OBUF[1]_inst_i_5 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(digit_select[0]),
        .I5(\seg7_control/fun_display__32 [1]),
        .O(\display_po_OBUF[1]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[26] ),
        .I2(\state_reg_n_0_[25] ),
        .I3(\state_reg_n_0_[24] ),
        .O(\display_po_OBUF[1]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_7 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[17] ),
        .I3(\state_reg_n_0_[16] ),
        .O(\display_po_OBUF[1]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[8] ),
        .O(\display_po_OBUF[1]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\seg7_control/fun_display__32 [1]));
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
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \display_po_OBUF[2]_inst_i_2 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[28] ),
        .I2(\state_reg_n_0_[29] ),
        .I3(\state_reg_n_0_[30] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[2]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \display_po_OBUF[2]_inst_i_3 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[20] ),
        .I2(\state_reg_n_0_[21] ),
        .I3(\state_reg_n_0_[22] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[2]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \display_po_OBUF[2]_inst_i_4 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[13] ),
        .I3(\state_reg_n_0_[14] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[2]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \display_po_OBUF[2]_inst_i_5 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(digit_select[0]),
        .I5(\seg7_control/fun_display__32 [2]),
        .O(\display_po_OBUF[2]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[24] ),
        .I2(\state_reg_n_0_[25] ),
        .I3(\state_reg_n_0_[26] ),
        .O(\display_po_OBUF[2]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_7 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[16] ),
        .I2(\state_reg_n_0_[17] ),
        .I3(\state_reg_n_0_[18] ),
        .O(\display_po_OBUF[2]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[10] ),
        .O(\display_po_OBUF[2]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\seg7_control/fun_display__32 [2]));
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
    .INIT(64'hC234FFFFC2340000)) 
    \display_po_OBUF[3]_inst_i_2 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[30] ),
        .I2(\state_reg_n_0_[28] ),
        .I3(\state_reg_n_0_[29] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[3]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC234FFFFC2340000)) 
    \display_po_OBUF[3]_inst_i_3 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[22] ),
        .I2(\state_reg_n_0_[20] ),
        .I3(\state_reg_n_0_[21] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[3]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC234FFFFC2340000)) 
    \display_po_OBUF[3]_inst_i_4 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[14] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(\state_reg_n_0_[13] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[3]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC234FFFFC2340000)) 
    \display_po_OBUF[3]_inst_i_5 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(digit_select[0]),
        .I5(\seg7_control/fun_display__32 [3]),
        .O(\display_po_OBUF[3]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[26] ),
        .I2(\state_reg_n_0_[24] ),
        .I3(\state_reg_n_0_[25] ),
        .O(\display_po_OBUF[3]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_7 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[16] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[3]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[3]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/fun_display__32 [3]));
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
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \display_po_OBUF[4]_inst_i_2 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[29] ),
        .I2(\state_reg_n_0_[30] ),
        .I3(\state_reg_n_0_[28] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[4]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \display_po_OBUF[4]_inst_i_3 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[21] ),
        .I2(\state_reg_n_0_[22] ),
        .I3(\state_reg_n_0_[20] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[4]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \display_po_OBUF[4]_inst_i_4 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[13] ),
        .I2(\state_reg_n_0_[14] ),
        .I3(\state_reg_n_0_[12] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[4]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \display_po_OBUF[4]_inst_i_5 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(digit_select[0]),
        .I5(\seg7_control/fun_display__32 [4]),
        .O(\display_po_OBUF[4]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[25] ),
        .I2(\state_reg_n_0_[26] ),
        .I3(\state_reg_n_0_[24] ),
        .O(\display_po_OBUF[4]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_7 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[17] ),
        .I2(\state_reg_n_0_[18] ),
        .I3(\state_reg_n_0_[16] ),
        .O(\display_po_OBUF[4]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[9] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[8] ),
        .O(\display_po_OBUF[4]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\seg7_control/fun_display__32 [4]));
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
  LUT6 #(
    .INIT(64'h5190FFFF51900000)) 
    \display_po_OBUF[5]_inst_i_2 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[30] ),
        .I2(\state_reg_n_0_[28] ),
        .I3(\state_reg_n_0_[29] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[5]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5190FFFF51900000)) 
    \display_po_OBUF[5]_inst_i_3 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[22] ),
        .I2(\state_reg_n_0_[20] ),
        .I3(\state_reg_n_0_[21] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[5]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5190FFFF51900000)) 
    \display_po_OBUF[5]_inst_i_4 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[14] ),
        .I2(\state_reg_n_0_[12] ),
        .I3(\state_reg_n_0_[13] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[5]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5190FFFF51900000)) 
    \display_po_OBUF[5]_inst_i_5 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(digit_select[0]),
        .I5(\seg7_control/fun_display__32 [5]),
        .O(\display_po_OBUF[5]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_6 
       (.I0(\state_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[26] ),
        .I2(\state_reg_n_0_[24] ),
        .I3(\state_reg_n_0_[25] ),
        .O(\display_po_OBUF[5]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_7 
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[16] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[5]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[5]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/fun_display__32 [5]));
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
  LUT6 #(
    .INIT(64'h4025FFFF40250000)) 
    \display_po_OBUF[6]_inst_i_2 
       (.I0(\state_reg_n_0_[31] ),
        .I1(\state_reg_n_0_[28] ),
        .I2(\state_reg_n_0_[30] ),
        .I3(\state_reg_n_0_[29] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[6]_inst_i_6_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4025FFFF40250000)) 
    \display_po_OBUF[6]_inst_i_3 
       (.I0(\state_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[20] ),
        .I2(\state_reg_n_0_[22] ),
        .I3(\state_reg_n_0_[21] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[6]_inst_i_7_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4025FFFF40250000)) 
    \display_po_OBUF[6]_inst_i_4 
       (.I0(\state_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[12] ),
        .I2(\state_reg_n_0_[14] ),
        .I3(\state_reg_n_0_[13] ),
        .I4(digit_select[0]),
        .I5(\display_po_OBUF[6]_inst_i_8_n_0 ),
        .O(\display_po_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4025FFFF40250000)) 
    \display_po_OBUF[6]_inst_i_5 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(digit_select[0]),
        .I5(\seg7_control/fun_display__32 [6]),
        .O(\display_po_OBUF[6]_inst_i_5_n_0 ));
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
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[16] ),
        .I2(\state_reg_n_0_[18] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[6]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[6]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \display_po_OBUF[6]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/fun_display__32 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    \state[31]_i_1 
       (.I0(control_pi_IBUF),
        .O(\state[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[10] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[10]),
        .Q(\state_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[11] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[11]),
        .Q(\state_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[12] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[12]),
        .Q(\state_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[13] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[13]),
        .Q(\state_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[14] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[14]),
        .Q(\state_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[15] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[15]),
        .Q(\state_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[16] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[16]),
        .Q(\state_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[17] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[17]),
        .Q(\state_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[18] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[18]),
        .Q(\state_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[19] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[19]),
        .Q(\state_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[20] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[20]),
        .Q(\state_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[21] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[21]),
        .Q(\state_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[22] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[22]),
        .Q(\state_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[23] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[23]),
        .Q(\state_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[24] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[24]),
        .Q(\state_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[25] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[25]),
        .Q(\state_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[26] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[26]),
        .Q(\state_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[27] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[27]),
        .Q(\state_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[28] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[28]),
        .Q(\state_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[29] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[29]),
        .Q(\state_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[30] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[30]),
        .Q(\state_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[31] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[31]),
        .Q(\state_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[3]),
        .Q(\state_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[4]),
        .Q(sel0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[5]),
        .Q(sel0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[6]),
        .Q(sel0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[7]),
        .Q(sel0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[8]),
        .Q(\state_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[9] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .D(D[9]),
        .Q(\state_reg_n_0_[9] ),
        .R(SR));
endmodule

module module_seg7_control
   (display_select_po_OBUF,
    digit_select,
    SR,
    CLK_10MHZ);
  output [7:0]display_select_po_OBUF;
  output [2:0]digit_select;
  input [0:0]SR;
  input CLK_10MHZ;

  wire CLK_10MHZ;
  wire [0:0]SR;
  wire [2:0]digit_select;
  wire \digit_select[0]_i_1_n_0 ;
  wire \digit_select[1]_i_1_n_0 ;
  wire \digit_select[2]_i_1_n_0 ;
  wire [13:0]digit_timer;
  wire digit_timer0_carry__0_n_0;
  wire digit_timer0_carry__0_n_1;
  wire digit_timer0_carry__0_n_2;
  wire digit_timer0_carry__0_n_3;
  wire digit_timer0_carry__0_n_4;
  wire digit_timer0_carry__0_n_5;
  wire digit_timer0_carry__0_n_6;
  wire digit_timer0_carry__0_n_7;
  wire digit_timer0_carry__1_n_0;
  wire digit_timer0_carry__1_n_1;
  wire digit_timer0_carry__1_n_2;
  wire digit_timer0_carry__1_n_3;
  wire digit_timer0_carry__1_n_4;
  wire digit_timer0_carry__1_n_5;
  wire digit_timer0_carry__1_n_6;
  wire digit_timer0_carry__1_n_7;
  wire digit_timer0_carry__2_n_7;
  wire digit_timer0_carry_n_0;
  wire digit_timer0_carry_n_1;
  wire digit_timer0_carry_n_2;
  wire digit_timer0_carry_n_3;
  wire digit_timer0_carry_n_4;
  wire digit_timer0_carry_n_5;
  wire digit_timer0_carry_n_6;
  wire digit_timer0_carry_n_7;
  wire \digit_timer[13]_i_2_n_0 ;
  wire \digit_timer[13]_i_3_n_0 ;
  wire \digit_timer[13]_i_4_n_0 ;
  wire [13:0]digit_timer_0;
  wire [7:0]display_select_po_OBUF;
  wire [3:0]NLW_digit_timer0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_digit_timer0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \digit_select[0]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_select[0]),
        .O(\digit_select[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \digit_select[1]_i_1 
       (.I0(digit_select[0]),
        .I1(\digit_timer[13]_i_2_n_0 ),
        .I2(digit_select[1]),
        .O(\digit_select[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  CARRY4 digit_timer0_carry
       (.CI(1'b0),
        .CO({digit_timer0_carry_n_0,digit_timer0_carry_n_1,digit_timer0_carry_n_2,digit_timer0_carry_n_3}),
        .CYINIT(digit_timer[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({digit_timer0_carry_n_4,digit_timer0_carry_n_5,digit_timer0_carry_n_6,digit_timer0_carry_n_7}),
        .S(digit_timer[4:1]));
  CARRY4 digit_timer0_carry__0
       (.CI(digit_timer0_carry_n_0),
        .CO({digit_timer0_carry__0_n_0,digit_timer0_carry__0_n_1,digit_timer0_carry__0_n_2,digit_timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({digit_timer0_carry__0_n_4,digit_timer0_carry__0_n_5,digit_timer0_carry__0_n_6,digit_timer0_carry__0_n_7}),
        .S(digit_timer[8:5]));
  CARRY4 digit_timer0_carry__1
       (.CI(digit_timer0_carry__0_n_0),
        .CO({digit_timer0_carry__1_n_0,digit_timer0_carry__1_n_1,digit_timer0_carry__1_n_2,digit_timer0_carry__1_n_3}),
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
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[10]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__1_n_6),
        .O(digit_timer_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[11]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__1_n_5),
        .O(digit_timer_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[12]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__1_n_4),
        .O(digit_timer_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[1]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry_n_7),
        .O(digit_timer_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[2]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry_n_6),
        .O(digit_timer_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[3]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry_n_5),
        .O(digit_timer_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[4]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry_n_4),
        .O(digit_timer_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[5]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__0_n_7),
        .O(digit_timer_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[6]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__0_n_6),
        .O(digit_timer_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[7]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__0_n_5),
        .O(digit_timer_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \digit_timer[8]_i_1 
       (.I0(\digit_timer[13]_i_2_n_0 ),
        .I1(digit_timer0_carry__0_n_4),
        .O(digit_timer_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \display_select_po_OBUF[0]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[1]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[2]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[3]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[4]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[5]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[6]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \display_select_po_OBUF[7]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[7]));
endmodule

(* BITS_ANODO = "14" *) (* BITS_CATODO = "25" *) (* COUNT_ANODO = "10000" *) 
(* COUNT_CATODO = "20000000" *) (* NUM_BITS = "32" *) 
(* NotValidForBitStream *)
module top_module_7seg_v2
   (clk_100Mhz_pi,
    reset_pi,
    control_pi,
    display_po,
    display_select_po);
  input clk_100Mhz_pi;
  input reset_pi;
  input control_pi;
  output [6:0]display_po;
  output [7:0]display_select_po;

  (* IBUF_LOW_PWR *) wire clk_100Mhz_pi;
  wire clk_10Mhz;
  wire clk_out;
  wire control_pi;
  wire control_pi_IBUF;
  wire [2:0]digit_select;
  wire [6:0]display_po;
  wire [6:0]display_po_OBUF;
  wire [7:0]display_select_po;
  wire [7:0]display_select_po_OBUF;
  wire [32:1]r_LFSR;
  wire reset_pi;
  wire reset_pi_IBUF;
  wire NLW_generate_clock_10Mhz_locked_UNCONNECTED;

initial begin
 $sdf_annotate("tb_7seg_v2_time_synth.sdf",,,,"tool_control");
end
  IBUF control_pi_IBUF_inst
       (.I(control_pi),
        .O(control_pi_IBUF));
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
        .E(clk_out),
        .SR(reset_pi_IBUF));
  module_pseudo_random random_display
       (.CLK_10MHZ(clk_10Mhz),
        .E(clk_out),
        .Q(r_LFSR),
        .SR(reset_pi_IBUF));
  module_register_pp register_pp
       (.CLK_10MHZ(clk_10Mhz),
        .D(r_LFSR),
        .SR(reset_pi_IBUF),
        .control_pi_IBUF(control_pi_IBUF),
        .digit_select(digit_select),
        .display_po_OBUF(display_po_OBUF));
  IBUF reset_pi_IBUF_inst
       (.I(reset_pi),
        .O(reset_pi_IBUF));
  module_seg7_control seg7_control
       (.CLK_10MHZ(clk_10Mhz),
        .SR(reset_pi_IBUF),
        .digit_select(digit_select),
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
