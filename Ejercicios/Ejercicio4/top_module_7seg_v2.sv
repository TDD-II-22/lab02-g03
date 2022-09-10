`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC 
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 27.08.2022 14:38:45
// Design Name: 
// Module Name: top_module_7seg_v2
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


module top_module_7seg_v2(

    input   logic               clk_100Mhz_pi,
                                reset_pi,
                                control_pi,
    output  logic   [6 : 0]     display_po,
                    [7 : 0]     display_select_po
    );
    
    logic                       clk_10Mhz;
    logic                       clock_2s;
    
    logic [31 : 0]              display_r;
    logic [31 : 0]              display;
    
    parameter                   NUM_BITS = 32;
    
    parameter                   COUNT_CATODO    = 20_000_000;       //FRECUENCIA DEL CATODO DESEADA => clk_10Mhz / frecuencia (0.5Hz)
    parameter                   BITS_CATODO     = 25;               //BITS NECESARIOS PARA EL CONTADOR DE CATODO
    
    parameter                   COUNT_ANODO     = 10_000;           //FRECUENCIA DEL ANODO DESEADA => clk_10Mhz / frecuencia(1KHz)
    parameter                   BITS_ANODO      = 14;               //BITS NECESARIOS PARA EL CONTADOR DE ANODO
    
    
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
    module_clock_divider #(
                              
        //parametrizacion
        .COUNT_CATODO           (COUNT_CATODO),       
        .BITS_CATODO            (BITS_CATODO))     
    
    //nombre de la instancia
    module_clock_divider(  
        
        //entradas / salidas 
        .clk_10Mhz_i            (clk_10Mhz),
        .reset_i                (reset_pi),
        .clock_catodo_o         (clock_2s) 
    
    );   
    
    //modulo generador de numeros
    
    //modulo de la instancia
    module_pseudo_random #(
    
        //parametrizacion
        .NUM_BITS (NUM_BITS))
    
    //nombre de la instancia   
    random_display(
        .i_Clk                  (clk_10Mhz),
        .i_Rst                  (reset_pi),
        .i_Enable               (clock_2s),
        .o_LFSR_Data            (display)
    );
    
    //module registro
    module_register_pp register_pp(
                  
        .clk_i                  (clk_10Mhz),            
        .rst_i                  (reset_pi),            
        .control_i              (control_pi), 
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
