`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2022 18:39:45
// Design Name: 
// Module Name: tb_contador
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


module tb_contador;

    logic             clk,
                      bt1,
                      rst,
                      clk_10MHz,
                      signal,
                      clk_slw;
    logic    [7:0]    conta;
    
    
    top_module_debouncer DUT (
        .clk (clk),
        .bt1 (bt1),
        .rst (rst),
        .conta (conta)
        );  
    initial begin
        
            
        #10;
    
        $finish;
       
    end
endmodule
