`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2022 13:30:49
// Design Name: 
// Module Name: module_program_counter
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


module module_program_counter#(parameter W=6)(
    input  logic         clk,
    input  logic [W-1:0] pc_i,
    input  logic [1:0]   pc_op_i,
    output logic [W-1:0] pc_o,
    output logic [W-1:0] pcinc_o,
    output logic [1:0]   flag_ver
    );
    
    logic        pc_op_i      = 0;
    logic        pc_o         = 0;
    logic        pcinc_o      = 0;
    logic [W-1:0]salida_1_ver = 0;
    logic [W-1:0]salida_2_ver = 0;
       
    
    always_ff@ (posedge clk)begin
        if(pc_op_i == 0) begin
            pc_o = 0;
            pcinc_o = pc_o + 4;
        end
        else if(pc_op_i == 1) begin
            pc_o = pc_o;
            pcinc_o = pc_o + 4;
        end
        else if(pc_op_i == 2) begin
            pc_o = pc_o + 1;
            pcinc_o = pc_o + 4;
        end
        else if(pc_op_i == 3) begin
            pc_o = pc_i;
            pcinc_o = pc_o + 4;
        end 
        
        salida_1_ver = pc_o;
        salida_2_ver = salida_1_ver + 4;
        
        if(salida_1_ver == pc_o & salida_2_ver == pcinc_o)begin
            flag_ver = 2'b01;
        end
        if(salida_1_ver != pc_o & salida_2_ver != pcinc_o)begin
            flag_ver = 2'b00;
        end
    end
endmodule
