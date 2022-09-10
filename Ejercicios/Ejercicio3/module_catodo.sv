`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 22:57:18
// Design Name: 
// Module Name: module_catodo
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


module module_catodo(
    input     logic    EN_i,
                       D_i,
                       clk,
                       clk_slw_i,
    output    logic    Q_o
    );
    
    always_ff @(posedge clk)      
        if(!EN_i)
            Q_o <= 0;
        else
            if(clk_slw_i) begin
            
                Q_o <= EN_i;

            end
    
    
endmodule
