// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Aug 27 16:01:58 2022
// Host        : LAPTOP-UOLPLFOP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Documentos/GitHub/lab02-g03/Ejercicios/ejercicio_6/ejercicio_6.sim/sim_1/synth/timing/xsim/tb_memoria_time_synth.v
// Design      : top_module_memoria
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clk_wiz_0
   (CLK_10MHZ,
    locked,
    CLK_100MHZ);
  output CLK_10MHZ;
  output locked;
  input CLK_100MHZ;

  wire CLK_100MHZ;
  wire CLK_10MHZ;
  wire locked;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.CLK_100MHZ(CLK_100MHZ),
        .CLK_10MHZ(CLK_10MHZ),
        .locked(locked));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (CLK_10MHZ,
    locked,
    CLK_100MHZ);
  output CLK_10MHZ;
  output locked;
  input CLK_100MHZ;

  wire CLK_100MHZ;
  wire CLK_100MHZ_clk_wiz_0;
  wire CLK_10MHZ;
  wire CLK_10MHZ_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
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
        .LOCKED(locked),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

module module_memoria
   (rs1_po_OBUF,
    rs2_po_OBUF,
    D,
    CLK,
    we_pi_IBUF,
    addr_rd_pi_IBUF,
    addr_rs1_pi_IBUF,
    addr_rs2_pi_IBUF,
    rst_pi_IBUF);
  output [7:0]rs1_po_OBUF;
  output [7:0]rs2_po_OBUF;
  input [7:0]D;
  input CLK;
  input we_pi_IBUF;
  input [1:0]addr_rd_pi_IBUF;
  input [1:0]addr_rs1_pi_IBUF;
  input [1:0]addr_rs2_pi_IBUF;
  input rst_pi_IBUF;

  wire CLK;
  wire [7:0]D;
  wire [1:0]addr_rd_pi_IBUF;
  wire [1:0]addr_rs1_pi_IBUF;
  wire [1:0]addr_rs2_pi_IBUF;
  wire memoria;
  wire \memoria[1][7]_i_2_n_0 ;
  wire \memoria[2][7]_i_1_n_0 ;
  wire [7:0]\memoria_reg[1] ;
  wire [7:0]\memoria_reg[2] ;
  wire [7:0]\memoria_reg[3] ;
  wire p_0_in;
  wire [7:0]rs1_po_OBUF;
  wire [7:0]rs2_po_OBUF;
  wire rst_pi_IBUF;
  wire we_pi_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \memoria[1][7]_i_1 
       (.I0(rst_pi_IBUF),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h20)) 
    \memoria[1][7]_i_2 
       (.I0(we_pi_IBUF),
        .I1(addr_rd_pi_IBUF[1]),
        .I2(addr_rd_pi_IBUF[0]),
        .O(\memoria[1][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \memoria[2][7]_i_1 
       (.I0(we_pi_IBUF),
        .I1(addr_rd_pi_IBUF[1]),
        .I2(addr_rd_pi_IBUF[0]),
        .O(\memoria[2][7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \memoria[3][7]_i_1 
       (.I0(we_pi_IBUF),
        .I1(addr_rd_pi_IBUF[1]),
        .I2(addr_rd_pi_IBUF[0]),
        .O(memoria));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][0] 
       (.C(CLK),
        .CE(\memoria[1][7]_i_2_n_0 ),
        .D(D[0]),
        .Q(\memoria_reg[1] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][1] 
       (.C(CLK),
        .CE(\memoria[1][7]_i_2_n_0 ),
        .D(D[1]),
        .Q(\memoria_reg[1] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][2] 
       (.C(CLK),
        .CE(\memoria[1][7]_i_2_n_0 ),
        .D(D[2]),
        .Q(\memoria_reg[1] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][3] 
       (.C(CLK),
        .CE(\memoria[1][7]_i_2_n_0 ),
        .D(D[3]),
        .Q(\memoria_reg[1] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][4] 
       (.C(CLK),
        .CE(\memoria[1][7]_i_2_n_0 ),
        .D(D[4]),
        .Q(\memoria_reg[1] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][5] 
       (.C(CLK),
        .CE(\memoria[1][7]_i_2_n_0 ),
        .D(D[5]),
        .Q(\memoria_reg[1] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][6] 
       (.C(CLK),
        .CE(\memoria[1][7]_i_2_n_0 ),
        .D(D[6]),
        .Q(\memoria_reg[1] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[1][7] 
       (.C(CLK),
        .CE(\memoria[1][7]_i_2_n_0 ),
        .D(D[7]),
        .Q(\memoria_reg[1] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][0] 
       (.C(CLK),
        .CE(\memoria[2][7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\memoria_reg[2] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][1] 
       (.C(CLK),
        .CE(\memoria[2][7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\memoria_reg[2] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][2] 
       (.C(CLK),
        .CE(\memoria[2][7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\memoria_reg[2] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][3] 
       (.C(CLK),
        .CE(\memoria[2][7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\memoria_reg[2] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][4] 
       (.C(CLK),
        .CE(\memoria[2][7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\memoria_reg[2] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][5] 
       (.C(CLK),
        .CE(\memoria[2][7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\memoria_reg[2] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][6] 
       (.C(CLK),
        .CE(\memoria[2][7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\memoria_reg[2] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[2][7] 
       (.C(CLK),
        .CE(\memoria[2][7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\memoria_reg[2] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][0] 
       (.C(CLK),
        .CE(memoria),
        .D(D[0]),
        .Q(\memoria_reg[3] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][1] 
       (.C(CLK),
        .CE(memoria),
        .D(D[1]),
        .Q(\memoria_reg[3] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][2] 
       (.C(CLK),
        .CE(memoria),
        .D(D[2]),
        .Q(\memoria_reg[3] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][3] 
       (.C(CLK),
        .CE(memoria),
        .D(D[3]),
        .Q(\memoria_reg[3] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][4] 
       (.C(CLK),
        .CE(memoria),
        .D(D[4]),
        .Q(\memoria_reg[3] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][5] 
       (.C(CLK),
        .CE(memoria),
        .D(D[5]),
        .Q(\memoria_reg[3] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][6] 
       (.C(CLK),
        .CE(memoria),
        .D(D[6]),
        .Q(\memoria_reg[3] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \memoria_reg[3][7] 
       (.C(CLK),
        .CE(memoria),
        .D(D[7]),
        .Q(\memoria_reg[3] [7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs1_po_OBUF[0]_inst_i_1 
       (.I0(\memoria_reg[2] [0]),
        .I1(\memoria_reg[3] [0]),
        .I2(addr_rs1_pi_IBUF[1]),
        .I3(addr_rs1_pi_IBUF[0]),
        .I4(\memoria_reg[1] [0]),
        .O(rs1_po_OBUF[0]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs1_po_OBUF[1]_inst_i_1 
       (.I0(\memoria_reg[2] [1]),
        .I1(\memoria_reg[3] [1]),
        .I2(addr_rs1_pi_IBUF[1]),
        .I3(addr_rs1_pi_IBUF[0]),
        .I4(\memoria_reg[1] [1]),
        .O(rs1_po_OBUF[1]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs1_po_OBUF[2]_inst_i_1 
       (.I0(\memoria_reg[2] [2]),
        .I1(\memoria_reg[3] [2]),
        .I2(addr_rs1_pi_IBUF[1]),
        .I3(addr_rs1_pi_IBUF[0]),
        .I4(\memoria_reg[1] [2]),
        .O(rs1_po_OBUF[2]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs1_po_OBUF[3]_inst_i_1 
       (.I0(\memoria_reg[2] [3]),
        .I1(\memoria_reg[3] [3]),
        .I2(addr_rs1_pi_IBUF[1]),
        .I3(addr_rs1_pi_IBUF[0]),
        .I4(\memoria_reg[1] [3]),
        .O(rs1_po_OBUF[3]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs1_po_OBUF[4]_inst_i_1 
       (.I0(\memoria_reg[2] [4]),
        .I1(\memoria_reg[3] [4]),
        .I2(addr_rs1_pi_IBUF[1]),
        .I3(addr_rs1_pi_IBUF[0]),
        .I4(\memoria_reg[1] [4]),
        .O(rs1_po_OBUF[4]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs1_po_OBUF[5]_inst_i_1 
       (.I0(\memoria_reg[2] [5]),
        .I1(\memoria_reg[3] [5]),
        .I2(addr_rs1_pi_IBUF[1]),
        .I3(addr_rs1_pi_IBUF[0]),
        .I4(\memoria_reg[1] [5]),
        .O(rs1_po_OBUF[5]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs1_po_OBUF[6]_inst_i_1 
       (.I0(\memoria_reg[2] [6]),
        .I1(\memoria_reg[3] [6]),
        .I2(addr_rs1_pi_IBUF[1]),
        .I3(addr_rs1_pi_IBUF[0]),
        .I4(\memoria_reg[1] [6]),
        .O(rs1_po_OBUF[6]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs1_po_OBUF[7]_inst_i_1 
       (.I0(\memoria_reg[2] [7]),
        .I1(\memoria_reg[3] [7]),
        .I2(addr_rs1_pi_IBUF[1]),
        .I3(addr_rs1_pi_IBUF[0]),
        .I4(\memoria_reg[1] [7]),
        .O(rs1_po_OBUF[7]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs2_po_OBUF[0]_inst_i_1 
       (.I0(\memoria_reg[2] [0]),
        .I1(\memoria_reg[3] [0]),
        .I2(addr_rs2_pi_IBUF[1]),
        .I3(addr_rs2_pi_IBUF[0]),
        .I4(\memoria_reg[1] [0]),
        .O(rs2_po_OBUF[0]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs2_po_OBUF[1]_inst_i_1 
       (.I0(\memoria_reg[2] [1]),
        .I1(\memoria_reg[3] [1]),
        .I2(addr_rs2_pi_IBUF[1]),
        .I3(addr_rs2_pi_IBUF[0]),
        .I4(\memoria_reg[1] [1]),
        .O(rs2_po_OBUF[1]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs2_po_OBUF[2]_inst_i_1 
       (.I0(\memoria_reg[2] [2]),
        .I1(\memoria_reg[3] [2]),
        .I2(addr_rs2_pi_IBUF[1]),
        .I3(addr_rs2_pi_IBUF[0]),
        .I4(\memoria_reg[1] [2]),
        .O(rs2_po_OBUF[2]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs2_po_OBUF[3]_inst_i_1 
       (.I0(\memoria_reg[2] [3]),
        .I1(\memoria_reg[3] [3]),
        .I2(addr_rs2_pi_IBUF[1]),
        .I3(addr_rs2_pi_IBUF[0]),
        .I4(\memoria_reg[1] [3]),
        .O(rs2_po_OBUF[3]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs2_po_OBUF[4]_inst_i_1 
       (.I0(\memoria_reg[2] [4]),
        .I1(\memoria_reg[3] [4]),
        .I2(addr_rs2_pi_IBUF[1]),
        .I3(addr_rs2_pi_IBUF[0]),
        .I4(\memoria_reg[1] [4]),
        .O(rs2_po_OBUF[4]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs2_po_OBUF[5]_inst_i_1 
       (.I0(\memoria_reg[2] [5]),
        .I1(\memoria_reg[3] [5]),
        .I2(addr_rs2_pi_IBUF[1]),
        .I3(addr_rs2_pi_IBUF[0]),
        .I4(\memoria_reg[1] [5]),
        .O(rs2_po_OBUF[5]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs2_po_OBUF[6]_inst_i_1 
       (.I0(\memoria_reg[2] [6]),
        .I1(\memoria_reg[3] [6]),
        .I2(addr_rs2_pi_IBUF[1]),
        .I3(addr_rs2_pi_IBUF[0]),
        .I4(\memoria_reg[1] [6]),
        .O(rs2_po_OBUF[6]));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    \rs2_po_OBUF[7]_inst_i_1 
       (.I0(\memoria_reg[2] [7]),
        .I1(\memoria_reg[3] [7]),
        .I2(addr_rs2_pi_IBUF[1]),
        .I3(addr_rs2_pi_IBUF[0]),
        .I4(\memoria_reg[1] [7]),
        .O(rs2_po_OBUF[7]));
endmodule

(* NotValidForBitStream *)
module top_module_memoria
   (clk_pi,
    rst_pi,
    we_pi,
    addr_rs1_pi,
    addr_rs2_pi,
    addr_rd_pi,
    data_in_pi,
    rs1_po,
    rs2_po);
  input clk_pi;
  input rst_pi;
  input we_pi;
  input [1:0]addr_rs1_pi;
  input [1:0]addr_rs2_pi;
  input [1:0]addr_rd_pi;
  input [7:0]data_in_pi;
  output [7:0]rs1_po;
  output [7:0]rs2_po;

  wire [1:0]addr_rd_pi;
  wire [1:0]addr_rd_pi_IBUF;
  wire [1:0]addr_rs1_pi;
  wire [1:0]addr_rs1_pi_IBUF;
  wire [1:0]addr_rs2_pi;
  wire [1:0]addr_rs2_pi_IBUF;
  wire clk_10MHz;
  (* IBUF_LOW_PWR *) wire clk_pi;
  wire [7:0]data_in_pi;
  wire [7:0]data_in_pi_IBUF;
  wire [7:0]rs1_po;
  wire [7:0]rs1_po_OBUF;
  wire [7:0]rs2_po;
  wire [7:0]rs2_po_OBUF;
  wire rst_pi;
  wire rst_pi_IBUF;
  wire we_pi;
  wire we_pi_IBUF;
  wire NLW_instance_1_locked_UNCONNECTED;

initial begin
 $sdf_annotate("tb_memoria_time_synth.sdf",,,,"tool_control");
end
  IBUF \addr_rd_pi_IBUF[0]_inst 
       (.I(addr_rd_pi[0]),
        .O(addr_rd_pi_IBUF[0]));
  IBUF \addr_rd_pi_IBUF[1]_inst 
       (.I(addr_rd_pi[1]),
        .O(addr_rd_pi_IBUF[1]));
  IBUF \addr_rs1_pi_IBUF[0]_inst 
       (.I(addr_rs1_pi[0]),
        .O(addr_rs1_pi_IBUF[0]));
  IBUF \addr_rs1_pi_IBUF[1]_inst 
       (.I(addr_rs1_pi[1]),
        .O(addr_rs1_pi_IBUF[1]));
  IBUF \addr_rs2_pi_IBUF[0]_inst 
       (.I(addr_rs2_pi[0]),
        .O(addr_rs2_pi_IBUF[0]));
  IBUF \addr_rs2_pi_IBUF[1]_inst 
       (.I(addr_rs2_pi[1]),
        .O(addr_rs2_pi_IBUF[1]));
  IBUF \data_in_pi_IBUF[0]_inst 
       (.I(data_in_pi[0]),
        .O(data_in_pi_IBUF[0]));
  IBUF \data_in_pi_IBUF[1]_inst 
       (.I(data_in_pi[1]),
        .O(data_in_pi_IBUF[1]));
  IBUF \data_in_pi_IBUF[2]_inst 
       (.I(data_in_pi[2]),
        .O(data_in_pi_IBUF[2]));
  IBUF \data_in_pi_IBUF[3]_inst 
       (.I(data_in_pi[3]),
        .O(data_in_pi_IBUF[3]));
  IBUF \data_in_pi_IBUF[4]_inst 
       (.I(data_in_pi[4]),
        .O(data_in_pi_IBUF[4]));
  IBUF \data_in_pi_IBUF[5]_inst 
       (.I(data_in_pi[5]),
        .O(data_in_pi_IBUF[5]));
  IBUF \data_in_pi_IBUF[6]_inst 
       (.I(data_in_pi[6]),
        .O(data_in_pi_IBUF[6]));
  IBUF \data_in_pi_IBUF[7]_inst 
       (.I(data_in_pi[7]),
        .O(data_in_pi_IBUF[7]));
  clk_wiz_0 instance_1
       (.CLK_100MHZ(clk_pi),
        .CLK_10MHZ(clk_10MHz),
        .locked(NLW_instance_1_locked_UNCONNECTED));
  module_memoria memoria_1
       (.CLK(clk_10MHz),
        .D(data_in_pi_IBUF),
        .addr_rd_pi_IBUF(addr_rd_pi_IBUF),
        .addr_rs1_pi_IBUF(addr_rs1_pi_IBUF),
        .addr_rs2_pi_IBUF(addr_rs2_pi_IBUF),
        .rs1_po_OBUF(rs1_po_OBUF),
        .rs2_po_OBUF(rs2_po_OBUF),
        .rst_pi_IBUF(rst_pi_IBUF),
        .we_pi_IBUF(we_pi_IBUF));
  OBUF \rs1_po_OBUF[0]_inst 
       (.I(rs1_po_OBUF[0]),
        .O(rs1_po[0]));
  OBUF \rs1_po_OBUF[1]_inst 
       (.I(rs1_po_OBUF[1]),
        .O(rs1_po[1]));
  OBUF \rs1_po_OBUF[2]_inst 
       (.I(rs1_po_OBUF[2]),
        .O(rs1_po[2]));
  OBUF \rs1_po_OBUF[3]_inst 
       (.I(rs1_po_OBUF[3]),
        .O(rs1_po[3]));
  OBUF \rs1_po_OBUF[4]_inst 
       (.I(rs1_po_OBUF[4]),
        .O(rs1_po[4]));
  OBUF \rs1_po_OBUF[5]_inst 
       (.I(rs1_po_OBUF[5]),
        .O(rs1_po[5]));
  OBUF \rs1_po_OBUF[6]_inst 
       (.I(rs1_po_OBUF[6]),
        .O(rs1_po[6]));
  OBUF \rs1_po_OBUF[7]_inst 
       (.I(rs1_po_OBUF[7]),
        .O(rs1_po[7]));
  OBUF \rs2_po_OBUF[0]_inst 
       (.I(rs2_po_OBUF[0]),
        .O(rs2_po[0]));
  OBUF \rs2_po_OBUF[1]_inst 
       (.I(rs2_po_OBUF[1]),
        .O(rs2_po[1]));
  OBUF \rs2_po_OBUF[2]_inst 
       (.I(rs2_po_OBUF[2]),
        .O(rs2_po[2]));
  OBUF \rs2_po_OBUF[3]_inst 
       (.I(rs2_po_OBUF[3]),
        .O(rs2_po[3]));
  OBUF \rs2_po_OBUF[4]_inst 
       (.I(rs2_po_OBUF[4]),
        .O(rs2_po[4]));
  OBUF \rs2_po_OBUF[5]_inst 
       (.I(rs2_po_OBUF[5]),
        .O(rs2_po[5]));
  OBUF \rs2_po_OBUF[6]_inst 
       (.I(rs2_po_OBUF[6]),
        .O(rs2_po[6]));
  OBUF \rs2_po_OBUF[7]_inst 
       (.I(rs2_po_OBUF[7]),
        .O(rs2_po[7]));
  IBUF rst_pi_IBUF_inst
       (.I(rst_pi),
        .O(rst_pi_IBUF));
  IBUF we_pi_IBUF_inst
       (.I(we_pi),
        .O(we_pi_IBUF));
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
