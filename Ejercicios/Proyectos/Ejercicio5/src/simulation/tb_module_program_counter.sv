`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2022 13:57:08
// Design Name: 
// Module Name: tb_module_program_counter
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


module tb_module_program_counter;

    parameter W = 6;
    
    logic [W-1:0] pc_i;
    logic [1:0]   pc_op_i;
    logic [W-1:0] pc_o;
    logic [W-1:0] pcinc_o;
    logic         CLK_100MHZ;
    logic         reset;
    logic [1:0]   flag_ver;
    
    //clk 100 Mhz
    initial begin
        CLK_100MHZ = 0; 
    end
    always begin
        #5 CLK_100MHZ = ~CLK_100MHZ;
    end
    //
    top_module_program_counter #(.W(W))DUT(
    .clk              (CLK_100MHZ),
    .pc_i             (pc_i),
    .pc_op_i          (pc_op_i),
    .pc_o             (pc_o),
    .pcinc_o          (pcinc_o),
    .flag_ver         (flag_ver)
    );
   
    initial begin
        #2500;
		pc_i    = 0;
		pc_op_i = 2;
		#40000;
		pc_i    = 4'b1010;
		pc_op_i = 3;
		#15000;
		pc_op_i = 2;
    end
       
    
endmodule
