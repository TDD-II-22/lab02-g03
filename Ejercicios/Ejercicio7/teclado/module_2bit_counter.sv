`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 16:39:41
// Design Name: 
// Module Name: module_2bit_counter
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


module module_2bit_counter(
    input logic         clk,  
    input logic         en_i, 
    input logic         rst_i,
    input logic         det_i,
    output logic    [1:0]    conta_o
    );

//logic [1:0]  conta_o;
always_ff@(posedge clk) begin    
    if(en_i) begin
        //if (!det_i) begin 
        
            if(conta_o == 2'b11 || rst_i) begin
            if (!det_i)
            conta_o <= 0;
            end
            
            if (!det_i) conta_o <= conta_o + 2'd1;
            
            
        end
      //  else sal_o <= conta_o;
        
    end


endmodule
