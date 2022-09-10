`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2022 09:00:43
// Design Name: 
// Module Name: module_debounce
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


module module_debounce(
    input logic         clk_i,
                        rst_i,
                        btn_i,
    output logic        btn_o
         
    );
    parameter       COUNT       = 2_500_000,
                    BITS        = 22;
    
    
    logic           clk_4hz,
                    q1,
                    q2;
    
    //clock para control del catodo
    
    //modulo de la instancia   
    module_clock_divider #(
                              
        //parametrizacion
        .COUNT_CATODO           (COUNT),       
        .BITS_CATODO            (BITS))     
    
    //nombre de la instancia
    module_clock_divider(  
        
        //entradas / salidas 
        .clk_10Mhz_i            (clk_i),
        .reset_i                (rst_i),
        .clock_catodo_o         (clk_4hz) 
    
    );
    
    
    always_ff @(posedge clk_i) begin
    
        if(clk_4hz) begin
            q1 <= btn_i;
            q2 <= q1; 
        end
  
    end
   
    assign btn_o = q1 & ~q2;

endmodule
