`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 16:09:23
// Design Name: 
// Module Name: top_module_teclado
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


module top_module_teclado(
    input    logic              clk,
                                fila1_i,
                                fila2_i,
                                fila3_i,
                                fila4_i,
                                E1_i,
                                E2_i,
    output    logic    [1:0]    counter_o,
    output    logic    [3:0]    deco_o,
    output    logic             led_det_o
    );
    
    logic    clk_10Mhz,
             clk_10kHz,
             key_det,
             deb1,
             deb2,
             deb3,
             deb4,
             sffc1,
             sffc2,
             sffe1,
             sffe2;
    
            
    
endmodule
