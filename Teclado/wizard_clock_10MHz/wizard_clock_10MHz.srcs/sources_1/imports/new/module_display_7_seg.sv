`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2022 04:10:09 PM
// Design Name: 
// Module Name: module_display_7_seg
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
module module_display_7_seg #( parameter BITS = 4 )(
    input  [ 15 : 0] sw_i,
    input  [ 1 : 0 ]  btn_i,
    output [ 6 : 0 ]  seg_o,
    output [ 7 : 0 ]  an_o
    );
    logic [ 3 : 0 ] mux_4_a_1_o;
    assign an_o = 8'b11111110;
    
    module_mux_4_a_1 #( .BITS    ( BITS          ) ) mux_4_a_1_7_seg(
                        .in_1    ( sw_i[ 3  : 0  ] ),
                        .in_2    ( sw_i[ 7  : 4  ] ),
                        .in_3    ( sw_i[ 11 : 8  ] ),
                        .in_4    ( sw_i[ 15 : 12 ] ),
                        .slc_i   ( btn_i           ),
                        .out_1   ( mux_4_a_1_o     )
    );
    
    module_deco_a_7 deco_a_7(
                        .entrada_deco (mux_4_a_1_o),
                        .salida_deco  (seg_o)
    ); 
endmodule
