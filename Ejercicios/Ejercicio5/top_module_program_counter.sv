`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2022 13:33:39
// Design Name: 
// Module Name: top_module_program_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_module_program_counter #(parameter W=6)(
    input  logic         clk,
    input  logic [W-1:0] pc_i,
    input  logic [1:0]   pc_op_i,
    output logic [W-1:0] pc_o,
    output logic [W-1:0] pcinc_o,
    output logic [1:0]   flag_ver
    );
    
    logic       CLK_10MHZ;
    logic       CLK_2HZ;
    logic       locked;
    
    WCLK clk_10mhz
   (
    // Clock out ports
    .CLK_10MHZ(CLK_10MHZ),     // output CLK_10MHZ
    // Status and control signals
    .locked(locked),       // output locked
   // Clock in ports
    .CLK_100MHZ(clk));      // input CLK_100MHZ
    
    module_clock_divisor clock_2hz(
    .clk              (CLK_10MHZ),
    .clk_2hz         (CLK_2HZ)
    );
    
    module_program_counter #(.W(W))program_counter_1(
    .clk              (CLK_2HZ),
    .pc_i             (pc_i),
    .pc_op_i          (pc_op_i),
    .pc_o             (pc_o),
    .pcinc_o          (pcinc_o),
    .flag_ver         (flag_ver)
    );
    
endmodule
