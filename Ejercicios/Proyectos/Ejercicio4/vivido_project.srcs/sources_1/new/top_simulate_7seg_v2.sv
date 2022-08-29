`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC 
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 27.08.2022 13:38:45
// Design Name: 
// Module Name: top_simulate_7seg_v2
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


module top_simulate_7seg_v2(

    input   logic               clk_100Mhz_pi,
                                reset_pi,
                                control_reg,
                    [31 : 0]    display,
    output  logic   [6 : 0]     display_po,
                    [7 : 0]     display_select_po,
    output  logic               locked,
                                clk_10Mhz                
    );
    
    logic [31 : 0]              display_r;
    

    parameter                   COUNT_ANODO     = 6;           //FRECUENCIA DEL ANODO DESEADA => clk_10Mhz / frecuencia
    parameter                   BITS_ANODO      = 3; 
    
    
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk_10Mhz),            // output CLK_10MHZ
        // Status and control signals
        .locked                 (locked),                     // output locked
       // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    
    );      
    
    //module registro
    module_register_pp register_pp(
                  
        .clk_i                  (clk_10Mhz),            
        .rst_i                  (reset_pi),            
        .control                (control_reg), 
        .entrada_i              (display),        
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
        .clk_10Mhz_i            (clk_10Mhz),         
        .reset_i                (reset_pi),           
        .display_i              (display_r),        
        .display_o              (display_po),         
        .display_select_o       (display_select_po)                    
    
    );
    
endmodule
