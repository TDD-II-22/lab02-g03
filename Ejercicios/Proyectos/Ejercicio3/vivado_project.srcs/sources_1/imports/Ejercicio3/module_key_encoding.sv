`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2022 18:46:29
// Design Name: 
// Module Name: module_key_encoding
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


module module_key_encoding(
    input     logic    [3:0]    entradas_in,
    output    logic    [3:0]    salidas_o    
    );
always_comb begin
    
    	case( entradas_in )
          4'b0000 : salidas_o = 1'hE;
          4'b0001 : salidas_o = 1'h4;
          4'b0010 : salidas_o = 1'h7;
          4'b0011 : salidas_o = 1'h1;
          4'b0100 : salidas_o = 1'h0;
          4'b0101 : salidas_o = 1'h5;
          4'b0110 : salidas_o = 1'h8;
          4'b0111 : salidas_o = 1'h2;
          4'b1000 : salidas_o = 1'hF;
          4'b1001 : salidas_o = 1'h6;
          4'b1010 : salidas_o = 1'h9; 
          4'b1011 : salidas_o = 1'h3;
          4'b1100 : salidas_o = 1'hD;
          4'b1101 : salidas_o = 1'hB;
          4'b1110 : salidas_o = 1'hC;
          4'b1111 : salidas_o = 1'hA;
		endcase
	end
    
    
    
endmodule
