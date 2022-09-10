`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2022 02:44:36 PM
// Design Name: 
// Module Name: tb_top_module_control
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


module module_alu(
                    input  logic  [3 : 0]        dato1_i,
                    input  logic  [3 : 0]        dato2_i,
                    input  logic  [3 : 0]        operacion_i,
                    output logic  [15 : 0]       resultado_o
    );
    always_comb begin
        case( operacion_i )
            4'ha    : resultado_o = dato1_i +  dato2_i;
            4'hb    : resultado_o = dato1_i -  dato2_i;
            4'hc    : resultado_o = dato1_i & dato2_i;
            4'hd    : resultado_o = dato1_i | dato2_i;
            4'hf    : resultado_o = dato1_i << dato2_i;
            default : resultado_o =            dato1_i;
        endcase
    end
endmodule