// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Aug 22 22:07:59 2022
// Host        : Andrey-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/carlo/Andrey/TEC/Semestre_II_2022/Taller_Digitales/Laboratorios/Laboratorio_2/Proyectos/Lab2_v2/Lab2_v2.sim/sim_1/impl/timing/xsim/tb_module_7seg_v2_time_impl.v
// Design      : top_module_7seg_v2
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clk_wiz_0
   (CLK_10MHZ,
    reset,
    CLK_100MHZ);
  output CLK_10MHZ;
  input reset;
  input CLK_100MHZ;

  wire CLK_100MHZ;
  wire CLK_10MHZ;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.CLK_100MHZ(CLK_100MHZ),
        .CLK_10MHZ(CLK_10MHZ),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (CLK_10MHZ,
    reset,
    CLK_100MHZ);
  output CLK_10MHZ;
  input reset;
  input CLK_100MHZ;

  wire CLK_100MHZ;
  wire CLK_100MHZ_clk_wiz_0;
  wire CLK_10MHZ;
  wire CLK_10MHZ_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire reset;
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
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(CLK_100MHZ),
        .O(CLK_100MHZ_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(CLK_10MHZ_clk_wiz_0),
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
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKIN1(CLK_100MHZ_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(CLK_10MHZ_clk_wiz_0),
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
        .RST(reset));
endmodule

module module_clock_2s
   (E,
    CLK_10MHZ,
    reset_pi_IBUF);
  output [0:0]E;
  input CLK_10MHZ;
  input reset_pi_IBUF;

  wire CLK_10MHZ;
  wire [0:0]E;
  wire clk_out;
  wire [24:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry_n_0;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[16]_i_1_n_0 ;
  wire \counter[17]_i_1_n_0 ;
  wire \counter[18]_i_1_n_0 ;
  wire \counter[19]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[20]_i_1_n_0 ;
  wire \counter[21]_i_1_n_0 ;
  wire \counter[22]_i_1_n_0 ;
  wire \counter[23]_i_1_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[24]_i_5_n_0 ;
  wire \counter[24]_i_6_n_0 ;
  wire \counter[24]_i_7_n_0 ;
  wire \counter[24]_i_8_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire counter_0;
  wire [24:1]data0;
  wire reset_pi_IBUF;
  wire [2:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__4_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00100000)) 
    clk_out_i_1
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .O(clk_out));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(clk_out),
        .Q(E));
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
        .CO({counter0_carry__3_n_0,NLW_counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO(NLW_counter0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[10]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[10]),
        .O(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[11]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[11]),
        .O(\counter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[12]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[12]),
        .O(\counter[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[13]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[13]),
        .O(\counter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[14]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[14]),
        .O(\counter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[15]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[15]),
        .O(\counter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[16]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[16]),
        .O(\counter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[17]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[17]),
        .O(\counter[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[18]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[18]),
        .O(\counter[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[19]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[19]),
        .O(\counter[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[1]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[1]),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[20]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[20]),
        .O(\counter[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[21]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[21]),
        .O(\counter[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[22]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[22]),
        .O(\counter[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[23]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[23]),
        .O(\counter[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00100000FFFFFFFF)) 
    \counter[24]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(reset_pi_IBUF),
        .O(counter_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[24]_i_2 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[24]),
        .O(\counter[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \counter[24]_i_3 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(\counter[24]_i_5_n_0 ),
        .I3(\counter[24]_i_6_n_0 ),
        .I4(\counter[24]_i_7_n_0 ),
        .I5(\counter[24]_i_8_n_0 ),
        .O(\counter[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[24]_i_4 
       (.I0(counter[3]),
        .I1(counter[6]),
        .I2(counter[1]),
        .I3(counter[4]),
        .O(\counter[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[24]_i_5 
       (.I0(counter[13]),
        .I1(counter[14]),
        .I2(counter[11]),
        .I3(counter[12]),
        .O(\counter[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[24]_i_6 
       (.I0(counter[10]),
        .I1(counter[9]),
        .I2(counter[7]),
        .I3(counter[8]),
        .O(\counter[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[24]_i_7 
       (.I0(counter[21]),
        .I1(counter[22]),
        .I2(counter[20]),
        .I3(counter[19]),
        .O(\counter[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[24]_i_8 
       (.I0(counter[18]),
        .I1(counter[17]),
        .I2(counter[16]),
        .I3(counter[15]),
        .O(\counter[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[2]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[3]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[3]),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[4]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[4]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[5]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[5]),
        .O(\counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[6]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[6]),
        .O(\counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[7]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[7]),
        .O(\counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[8]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[8]),
        .O(\counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000000)) 
    \counter[9]_i_1 
       (.I0(\counter[24]_i_3_n_0 ),
        .I1(\counter[24]_i_4_n_0 ),
        .I2(counter[5]),
        .I3(counter[23]),
        .I4(counter[24]),
        .I5(data0[9]),
        .O(\counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[10]_i_1_n_0 ),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[11]_i_1_n_0 ),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[12]_i_1_n_0 ),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[13]_i_1_n_0 ),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[14]_i_1_n_0 ),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[15]_i_1_n_0 ),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[16]_i_1_n_0 ),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[17]_i_1_n_0 ),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[18]_i_1_n_0 ),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[19]_i_1_n_0 ),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[20]_i_1_n_0 ),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[21]_i_1_n_0 ),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[22]_i_1_n_0 ),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[23]_i_1_n_0 ),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[24]_i_2_n_0 ),
        .Q(counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[8]_i_1_n_0 ),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_10MHZ),
        .CE(counter_0),
        .CLR(reset_pi_IBUF),
        .D(\counter[9]_i_1_n_0 ),
        .Q(counter[9]));
endmodule

module module_pseudo_random
   (Q,
    E,
    CLK_10MHZ,
    reset_pi_IBUF);
  output [31:0]Q;
  input [0:0]E;
  input CLK_10MHZ;
  input reset_pi_IBUF;

  wire CLK_10MHZ;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]p_0_out__0;
  wire reset_pi_IBUF;

  LUT4 #(
    .INIT(16'h9669)) 
    p_0_out
       (.I0(Q[1]),
        .I1(Q[21]),
        .I2(Q[31]),
        .I3(Q[0]),
        .O(p_0_out__0));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[10] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[8]),
        .PRE(reset_pi_IBUF),
        .Q(Q[9]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[11] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[9]),
        .PRE(reset_pi_IBUF),
        .Q(Q[10]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[12] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[10]),
        .PRE(reset_pi_IBUF),
        .Q(Q[11]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[13] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[11]),
        .PRE(reset_pi_IBUF),
        .Q(Q[12]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[14] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[12]),
        .PRE(reset_pi_IBUF),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[15] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[13]),
        .Q(Q[14]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[16] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[14]),
        .PRE(reset_pi_IBUF),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[17] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[15]),
        .Q(Q[16]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[18] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[16]),
        .PRE(reset_pi_IBUF),
        .Q(Q[17]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[19] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[17]),
        .PRE(reset_pi_IBUF),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[1] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(p_0_out__0),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[20] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[18]),
        .PRE(reset_pi_IBUF),
        .Q(Q[19]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[21] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[19]),
        .PRE(reset_pi_IBUF),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[22] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[20]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[23] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[21]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[24] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[22]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[25] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[23]),
        .Q(Q[24]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[26] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[24]),
        .PRE(reset_pi_IBUF),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[27] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[25]),
        .Q(Q[26]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[28] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[26]),
        .PRE(reset_pi_IBUF),
        .Q(Q[27]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[29] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[27]),
        .PRE(reset_pi_IBUF),
        .Q(Q[28]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[2] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[0]),
        .PRE(reset_pi_IBUF),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[30] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[28]),
        .Q(Q[29]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[31] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[29]),
        .PRE(reset_pi_IBUF),
        .Q(Q[30]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[32] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[30]),
        .PRE(reset_pi_IBUF),
        .Q(Q[31]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[3] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[1]),
        .PRE(reset_pi_IBUF),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[4] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[2]),
        .PRE(reset_pi_IBUF),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[5] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[3]),
        .PRE(reset_pi_IBUF),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[6] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[4]),
        .PRE(reset_pi_IBUF),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[7] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[5]),
        .Q(Q[6]));
  FDPE #(
    .INIT(1'b1)) 
    \r_LFSR_reg[8] 
       (.C(CLK_10MHZ),
        .CE(E),
        .D(Q[6]),
        .PRE(reset_pi_IBUF),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[9] 
       (.C(CLK_10MHZ),
        .CE(E),
        .CLR(reset_pi_IBUF),
        .D(Q[7]),
        .Q(Q[8]));
endmodule

module module_register_pp
   (display_po_OBUF,
    digit_select,
    control_reg_IBUF,
    D,
    CLK_10MHZ,
    reset_pi_IBUF);
  output [6:0]display_po_OBUF;
  input [2:0]digit_select;
  input control_reg_IBUF;
  input [31:0]D;
  input CLK_10MHZ;
  input reset_pi_IBUF;

  wire CLK_10MHZ;
  wire [31:0]D;
  wire control_reg_IBUF;
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
  wire reset_pi_IBUF;
  wire [6:0]\seg7_control/display_o__32 ;
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
        .I5(\seg7_control/display_o__32 [0]),
        .O(\display_po_OBUF[0]_inst_i_5_n_0 ));
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
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[16] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[0]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[0]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2094)) 
    \display_po_OBUF[0]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/display_o__32 [0]));
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
        .I5(\seg7_control/display_o__32 [1]),
        .O(\display_po_OBUF[1]_inst_i_5_n_0 ));
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
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[17] ),
        .I3(\state_reg_n_0_[16] ),
        .O(\display_po_OBUF[1]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[8] ),
        .O(\display_po_OBUF[1]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \display_po_OBUF[1]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\seg7_control/display_o__32 [1]));
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
        .I5(\seg7_control/display_o__32 [2]),
        .O(\display_po_OBUF[2]_inst_i_5_n_0 ));
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
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[16] ),
        .I2(\state_reg_n_0_[17] ),
        .I3(\state_reg_n_0_[18] ),
        .O(\display_po_OBUF[2]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[9] ),
        .I3(\state_reg_n_0_[10] ),
        .O(\display_po_OBUF[2]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \display_po_OBUF[2]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\seg7_control/display_o__32 [2]));
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
        .I5(\seg7_control/display_o__32 [3]),
        .O(\display_po_OBUF[3]_inst_i_5_n_0 ));
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
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[16] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[3]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[3]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC234)) 
    \display_po_OBUF[3]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/display_o__32 [3]));
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
        .I5(\seg7_control/display_o__32 [4]),
        .O(\display_po_OBUF[4]_inst_i_5_n_0 ));
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
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[17] ),
        .I2(\state_reg_n_0_[18] ),
        .I3(\state_reg_n_0_[16] ),
        .O(\display_po_OBUF[4]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[9] ),
        .I2(\state_reg_n_0_[10] ),
        .I3(\state_reg_n_0_[8] ),
        .O(\display_po_OBUF[4]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_po_OBUF[4]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\seg7_control/display_o__32 [4]));
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
        .I5(\seg7_control/display_o__32 [5]),
        .O(\display_po_OBUF[5]_inst_i_5_n_0 ));
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
       (.I0(\state_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[18] ),
        .I2(\state_reg_n_0_[16] ),
        .I3(\state_reg_n_0_[17] ),
        .O(\display_po_OBUF[5]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_8 
       (.I0(\state_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[8] ),
        .I3(\state_reg_n_0_[9] ),
        .O(\display_po_OBUF[5]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \display_po_OBUF[5]_inst_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\seg7_control/display_o__32 [5]));
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
        .I5(\seg7_control/display_o__32 [6]),
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
        .O(\seg7_control/display_o__32 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    \state[31]_i_1 
       (.I0(control_reg_IBUF),
        .O(\state[31]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[0]),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[10] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[10]),
        .Q(\state_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[11] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[11]),
        .Q(\state_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[12] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[12]),
        .Q(\state_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[13] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[13]),
        .Q(\state_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[14] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[14]),
        .Q(\state_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[15] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[15]),
        .Q(\state_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[16] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[16]),
        .Q(\state_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[17] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[17]),
        .Q(\state_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[18] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[18]),
        .Q(\state_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[19] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[19]),
        .Q(\state_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[20] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[20]),
        .Q(\state_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[21] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[21]),
        .Q(\state_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[22] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[22]),
        .Q(\state_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[23] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[23]),
        .Q(\state_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[24] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[24]),
        .Q(\state_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[25] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[25]),
        .Q(\state_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[26] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[26]),
        .Q(\state_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[27] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[27]),
        .Q(\state_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[28] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[28]),
        .Q(\state_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[29] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[29]),
        .Q(\state_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[2]),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[30] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[30]),
        .Q(\state_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[31] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[31]),
        .Q(\state_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[3]),
        .Q(\state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[4]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[5]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[6]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[7]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[8]),
        .Q(\state_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[9] 
       (.C(CLK_10MHZ),
        .CE(\state[31]_i_1_n_0 ),
        .CLR(reset_pi_IBUF),
        .D(D[9]),
        .Q(\state_reg_n_0_[9] ));
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
  wire reset_pi_IBUF;
  wire [2:0]NLW_digit_timer0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_digit_timer0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_digit_timer0_carry__1_CO_UNCONNECTED;
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
  FDCE #(
    .INIT(1'b0)) 
    \digit_select_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(\digit_select[0]_i_1_n_0 ),
        .Q(digit_select[0]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_select_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(\digit_select[1]_i_1_n_0 ),
        .Q(digit_select[1]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_select_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(\digit_select[2]_i_1_n_0 ),
        .Q(digit_select[2]));
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
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[0] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[0]),
        .Q(digit_timer[0]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[10] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[10]),
        .Q(digit_timer[10]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[11] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[11]),
        .Q(digit_timer[11]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[12] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[12]),
        .Q(digit_timer[12]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[13] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[13]),
        .Q(digit_timer[13]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[1] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[1]),
        .Q(digit_timer[1]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[2] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[2]),
        .Q(digit_timer[2]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[3] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[3]),
        .Q(digit_timer[3]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[4] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[4]),
        .Q(digit_timer[4]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[5] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[5]),
        .Q(digit_timer[5]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[6] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[6]),
        .Q(digit_timer[6]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[7] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[7]),
        .Q(digit_timer[7]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[8] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[8]),
        .Q(digit_timer[8]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_timer_reg[9] 
       (.C(CLK_10MHZ),
        .CE(1'b1),
        .CLR(reset_pi_IBUF),
        .D(digit_timer_0[9]),
        .Q(digit_timer[9]));
  LUT3 #(
    .INIT(8'hFE)) 
    \display_select_po_OBUF[0]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[1]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[1]));
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[2]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[2]));
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[3]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[3]));
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_po_OBUF[4]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[0]),
        .I2(digit_select[2]),
        .O(display_select_po_OBUF[4]));
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[5]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[5]));
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_po_OBUF[6]_inst_i_1 
       (.I0(digit_select[1]),
        .I1(digit_select[2]),
        .I2(digit_select[0]),
        .O(display_select_po_OBUF[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \display_select_po_OBUF[7]_inst_i_1 
       (.I0(digit_select[2]),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(display_select_po_OBUF[7]));
endmodule

(* ECO_CHECKSUM = "e4202d47" *) 
(* NotValidForBitStream *)
module top_module_7seg_v2
   (clk_100Mhz_pi,
    reset_pi,
    control_reg,
    display_po,
    display_select_po);
  input clk_100Mhz_pi;
  input reset_pi;
  input control_reg;
  output [6:0]display_po;
  output [7:0]display_select_po;

  (* IBUF_LOW_PWR *) wire clk_100Mhz_pi;
  wire clk_10Mhz;
  wire clk_out;
  wire control_reg;
  wire control_reg_IBUF;
  wire [2:0]digit_select;
  wire [6:0]display_po;
  wire [6:0]display_po_OBUF;
  wire [7:0]display_select_po;
  wire [7:0]display_select_po_OBUF;
  wire [32:1]r_LFSR;
  wire reset_pi;
  wire reset_pi_IBUF;

initial begin
 $sdf_annotate("tb_module_7seg_v2_time_impl.sdf",,,,"tool_control");
end
  IBUF control_reg_IBUF_inst
       (.I(control_reg),
        .O(control_reg_IBUF));
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
  clk_wiz_0 instance_name
       (.CLK_100MHZ(clk_100Mhz_pi),
        .CLK_10MHZ(clk_10Mhz),
        .reset(reset_pi_IBUF));
  module_clock_2s module_clock_2s
       (.CLK_10MHZ(clk_10Mhz),
        .E(clk_out),
        .reset_pi_IBUF(reset_pi_IBUF));
  module_pseudo_random random_display
       (.CLK_10MHZ(clk_10Mhz),
        .E(clk_out),
        .Q(r_LFSR),
        .reset_pi_IBUF(reset_pi_IBUF));
  module_register_pp register_pp
       (.CLK_10MHZ(clk_10Mhz),
        .D(r_LFSR),
        .control_reg_IBUF(control_reg_IBUF),
        .digit_select(digit_select),
        .display_po_OBUF(display_po_OBUF),
        .reset_pi_IBUF(reset_pi_IBUF));
  IBUF reset_pi_IBUF_inst
       (.I(reset_pi),
        .O(reset_pi_IBUF));
  module_seg7_control seg7_control
       (.CLK_10MHZ(clk_10Mhz),
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
