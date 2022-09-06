`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2022 00:45:33
// Design Name: 
// Module Name: module_calcu
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


module module_mode_calcu(

    input logic                                 clk_i,
                                                rst_i,
                                                selec_mux_i,
                                                led_error_o,
                    [2 : 0]                     control_save_i,
                    [3 : 0]                     teclado_i,
    pkg_bits:: bits_t                           ope_a,
                                                ope_b,
    output logic    [15 : 0]                    resultado_o,
    output logic    [2 :  0]                    rgb_o,
                    [4 :  0]                    addr_rs1,
                                                addr_rs2,
                                                contador_r,
    pkg_bits:: bits_t                           data_reg                        
    );
    
    //IMPORTAR PAQUETES
    import                                      pkg_bits::*;
    
    
        //VARIABLES INTERNA
    //--------------------------------------------------------------------------------------------------------
    
    logic               [4 : 0]                 operacion;
                                                
    bits_t                                      resultado_ALU;
    
    
    
    //modulo control de entrada
    module_control module_control(   
    .clk_i                      (clk_i),
    .rst_i                      (rst_i),
    .control_save_i             (control_save_i),
    .teclado_i                  (teclado_i),
    .rgb_o                      (rgb_o),
    .led_error_o                (led_error_o),
    .operacion_o                (operacion),
    .contador_r                 (contador_r),
    .addr_rs1_o                 (addr_rs1),
    .addr_rs2_o                 (addr_rs2)
    
    );

    module_mux module_mux_entrada(
    .teclado_i                  (teclado_i),
    .resultado_ALU_i            (resultado_ALU),
    .seleccion_i                (selec_mux_i),
    .data_reg_o                 (data_reg)
    );
    
    module_alu module_alu_ope(
        .dato1_i                (ope_a),
        .dato2_i                (ope_b),
        .operacion_i            (operacion),
        .resultado_o            (resultado_ALU)
    );
    assign resultado_o = resultado_ALU;
    
    
    
endmodule
