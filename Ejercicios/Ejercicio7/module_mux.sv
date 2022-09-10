`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2022 05:01:09 PM
// Design Name: 
// Module Name: module_mux
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


module module_mux(
    input  logic                        seleccion_i,
                    [ 3 : 0 ]           teclado_i,
                    pkg_bits::bits_t    resultado_ALU_i,                             
    output          pkg_bits::bits_t    data_reg_o
    );
    
    always_comb begin
    
        if(seleccion_i) begin
            data_reg_o = resultado_ALU_i;
        end else begin
            data_reg_o = teclado_i;
        end
        
    end//end always
     
endmodule
