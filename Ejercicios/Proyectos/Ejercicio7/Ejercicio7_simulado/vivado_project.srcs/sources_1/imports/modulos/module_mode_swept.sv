`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 23:53:07
// Design Name: 
// Module Name: module_mode_swept
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


module module_mode_swept #(parameter COUNT_CATODO = 10_000_000, BITS_CATODO = 24)(

    input logic                                 clk_i,
                                                rst_i,
                                                desbloqueo_barrido_i,
    output          pkg_bits:: bitsh_t          contador_r                             
    );
    
    //IMPORTAR PAQUETES
    import                                      pkg_bits::*;
    
    //VARIABLES INTERNA
    //-------------------------------------------------------------------------------------------------------- 
        
    logic                                       clock_1s;
   
    //clock para control del catodo
    
    //modulo de la instancia   
    module_clock_divider #(
                              
        //parametrizacion
        .COUNT_CATODO           (COUNT_CATODO),       
        .BITS_CATODO            (BITS_CATODO))     
    
    //nombre de la instancia
    module_clock_divider(  
        
        //entradas / salidas 
        .clk_10Mhz_i            (clk_i),
        .reset_i                (rst_i),
        .clock_catodo_o         (clock_1s) 
    
    );
    
    module_barrido barrido(
    
        .clk_i                  (clk_i),
        .clock_1s               (clock_1s),
        .rst_i                  (rst_i),
        .desbloqueo_barrido_i   (desbloqueo_barrido_i),
        .contador_r             (contador_r) 
    
    );
    
    
    
    

    
    
    
    
endmodule
