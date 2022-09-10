`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2022 07:45:24
// Design Name: 
// Module Name: module_control7seg_calcu
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


module module_control7seg_calcu #(parameter COUNT_ANODO = 10_000, BITS_ANODO = 14)(

    input   logic               clk_i,
                                rst_i,
                                control_reg_i,
                    [31 : 0]    display_i,
    output  logic   [6 : 0]     display_o,
                    [7 : 0]     display_select_o            
    );
    
    logic           [31 : 0]    display_r;
    
    
    //module registro
    module_register_pp register_pp(
                  
        .clk_i                  (clk_i),            
        .rst_i                  (rst_i),            
        .control_i              (control_reg_i), 
        .entrada_i              (display_i),        
        .salida_o               (display_r)         
    
    );
    
    //controla y genera los segmentos del display
    
    //modulo de la instancia
    module_seg7_control #(
                              
        //parametrizacion
        .COUNT_ANODO            (COUNT_ANODO),       
        .BITS_ANODO             (BITS_ANODO))     
    
    //nombre de la instancia
    seg7_control(                                   

         //entradas / salidas 
        .clk_10Mhz_i            (clk_i),         
        .reset_i                (rst_i),           
        .display_i              (display_r),        
        .display_o              (display_o),         
        .display_select_o       (display_select_o)                    
    
    );
endmodule
