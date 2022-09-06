`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2022 07:37:56 PM
// Design Name: 
// Module Name: module_memoria
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


module module_memoria(
    input       logic                   clk_i,
                                        rst_i,
                                        desbloqueo_barrido_i,
    //entradas modo calculadora     
    input       logic                   we_calc_i,
    pkg_bits:: bitsh_t                  addr_rs1_calc_i,
                                        addr_rs2_calc_i,
                                        addr_rd_calc_i,
    pkg_bits:: bits_t                   data_in_calc_i,
    
    //entradas modo calculadora     
    pkg_bits:: bitsh_t                  addr_rs1_swep_i,
                                        addr_rs2_swep_i,
    
    //salidas del modulo
    output pkg_bits:: bits_t            rs1_o,
                                        rs2_o                                                                           
    );
    
    //IMPORTAR PAQUETES
 
    import                              pkg_bits::*;
    
    
    //VARIABLES INTERNA
    //--------------------------------------------------------------------------------------------------------
    logic                               we_i;
    bitsh_t                             addr_rs1_i,
                                        addr_rs2_i,
                                        addr_rd_i;
    bits_t                              data_in_i;
    
    
    matriz_2alaN_x_W_t                  memoria;
    
    always @ ( posedge clk_i ) begin
    
        if(desbloqueo_barrido_i == 1) begin
        
            we_i        = 0;
            addr_rs1_i  = addr_rs1_swep_i;
            addr_rs2_i  = addr_rs2_swep_i;
            addr_rd_i   = 0;
            data_in_i   = 0;        
        
        end else begin
        
            we_i        = we_calc_i;
            addr_rs1_i  = addr_rs1_calc_i;
            addr_rs2_i  = addr_rs2_calc_i;
            addr_rd_i   = addr_rd_calc_i;
            data_in_i   = data_in_calc_i;
            
        end

     if   ( rst_i ) 
                        
        memoria <= '0;
     
     else begin
     
            memoria [ 0 ] <= '0;
            if ( we_i ) begin
                if ( addr_rd_i != 0 ) begin
                    memoria [ addr_rd_i ] <= data_in_i; 
                end
            end
            
     end//end reset
     
    end//end always
    
    //Logica de salida
    always_comb begin
        rs1_o = memoria [ addr_rs1_i ];
        rs2_o = memoria [ addr_rs2_i ];
    end
endmodule
