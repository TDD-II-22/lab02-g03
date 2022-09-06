`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2022 19:02:34
// Design Name: 
// Module Name: tb_module_key_encoding
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


module tb_module_key_encoding;
    logic             det_i;
    logic    [3:0]    entradas_in;
    logic    [3:0]    salidas_o;
    
    module_key_encoding encoding(
    .det_i              (det_i),
    .entradas_in        (entradas_in),
    .salidas_o          (salidas_o)
    );
    
    initial begin
        det_i       = 0;
        entradas_in = 4'b0000;
        #50
        det_i       = 1;
        entradas_in = 4'b1100;
        #50
        det_i       = 1;
        entradas_in = 4'b0110;
        #50
        det_i       = 1;
        entradas_in = 4'b0001;
        #50
        det_i       = 0;
        entradas_in = 4'b0011;
        #50
        det_i       = 1;
        entradas_in = 4'b1010;
        #50
        det_i       = 1;
        entradas_in = 4'b1110;
        #50
        det_i       = 0;
        entradas_in = 4'b0111;
        #50
        det_i       = 1;
        entradas_in = 4'b0111;
        #50
        det_i       = 1;
        entradas_in = 4'b0101;
        #50
        det_i       = 1;
        entradas_in = 4'b1111;
        #50
        det_i       = 1;
        entradas_in = 4'b0100;
        #50
        det_i       = 1;
        entradas_in = 4'b1000;
        #50
        det_i       = 0;
        entradas_in = 4'b0010;
        #50
        det_i       = 0;
        entradas_in = 4'b0110;
        #50
        det_i       = 1;
        entradas_in = 4'b1011;
        #50
        det_i       = 1;
        entradas_in = 4'b0001;
        #50
        det_i       = 0;
        entradas_in = 4'b1100;
        #50
        det_i       = 1;
        entradas_in = 4'b0110;
    
    end


endmodule
