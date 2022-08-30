`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 15.08.2022 02:59:44
// Design Name: 
// Module Name: top_module_contador_7seg
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


module top_module_contador_7seg(

    input   logic               clk_100Mhz_pi,
                                reset_pi,
    output  logic   [6 : 0]     display_po,
                    [7 : 0]     display_select_po
    );
    
    logic                       clk_10Mhz,
                                clock_catodo_en;
    logic   [2 : 0]             select_anodo;
    logic   [31 : 0]            digitos;
    
    //frecuencia actual 10Hz
    parameter                   COUNT_CATODO    = 1_000_000;        //FRECUENCIA DEL CATODO DESEADA => clk_10Mhz / frecuencia
    parameter                   BITS_CATODO     = 20;               //BITS NECESARIOS PARA EL CONTADOR DE CATODO
    
    //frecuencia actual 1KHz
    parameter                   COUNT_ANODO     = 10_000;           //FRECUENCIA DEL ANODO DESEADA => clk_10Mhz / frecuencia
    parameter                   BITS_ANODO      = 14;               //BITS NECESARIOS PARA EL CONTADOR DE ANODO
    
    
    /*
    
        nota: BITS se obtiene iterando la operacion: 2^n - (10_000_000 / FREC)
              aumentando n hasta obtener un valor positivo
                    ->10_000_000 es el reloj a usar
    
    */
    
    //generar reloj
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk_10Mhz),            // output CLK_10MHZ
        // Status and control signals
        .locked                 (),                     // output locked
        // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    );    
    
    
    //clock para control del catodo
    
    //modulo de la instancia   
    module_clock_catodo #(
                              
        //parametrizacion
        .COUNT_CATODO            (COUNT_CATODO),       
        .BITS_CATODO             (BITS_CATODO))     
    
    //nombre de la instancia
    module_clock_catodo(  
        
        //entradas / salidas 
        .clk_10Mhz_i            (clk_10Mhz),
        .reset_i                (reset_pi),
        .clock_catodo_o         (clock_catodo_en) 
    
    );
    
    //control que mostrar en el catodo
    module_digitos module_digitos(
        
        .clk_10Mhz_i            (clk_10Mhz),
        .clock_catodo_en_i      (clock_catodo_en),    
        .reset_i                (reset_pi),       
        .digitos_o              (digitos)  
                 
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
        .display_i              (digitos),        
        .display_o              (display_po),         
        .display_select_o       (display_select_po)                    
    
    );
 
endmodule
