`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2022 08:49:23 PM
// Design Name: 
// Module Name: tb_memoria
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


module tb_memoria;

import pkg_bits::*;

logic            clk_i;
logic            rst_i;
logic             we_i;
bitsh_t     addr_rs1_i;
bitsh_t     addr_rs2_i;
bitsh_t      addr_rd_i;
bits_t       data_in_i;
bits_t           rs1_o;
bits_t           rs2_o;


logic                                                   self_check;
logic [ BITS_WIDTH  - 1 : 0 ]                                    a;
logic [ 2**BITS_HEIGHT - 1 : 0 ][ BITS_WIDTH - 1 : 0 ]           b;

// Reloj de 100 MHz
initial begin
    clk_i = 0; // En tiempo 0
end
always begin
    #5 clk_i = ~clk_i; // Periodo de 10ns  
end

top_module_memoria memoria__1(                

                        .clk_i(        clk_i      ),
                        .rst_i(        rst_i      ),
                        .we_i(         we_i       ),
                        .addr_rs1_i(   addr_rs1_i ),
                        .addr_rs2_i(   addr_rs2_i ),
                        .addr_rd_i(    addr_rd_i  ),
                        .data_in_i(    data_in_i  ),
                        .rs1_o(        rs1_o      ),
                        .rs2_o(        rs2_o      )
                           );

    initial begin
        #2390
        rst_i = 0 ;
        #25
        rst_i = 1 ;
        we_i  = 0 ;
        #10
        for ( int i = 0 ; i < ( 2**BITS_HEIGHT ) ; i++ ) begin
            a            = $random%BITS_WIDTH;
            b [ i ]      =                  a; 
            addr_rd_i    =                  i;
            data_in_i    =                  a;
            we_i         =                  1;
            #100;
        end
        we_i  = 0 ;
        #10
        for ( int j = 0 ; j < ( 2**BITS_HEIGHT ) ; j++ ) begin
            addr_rs1_i = j;
            addr_rs2_i = j;
            #5
            if ( b [ j ] == rs2_o ) begin 
                self_check = 1'b1;
            end
            else begin
                self_check = 1'b0;
            end
            #100;
        end 
        #100
        #150
        $finish;
    end   
endmodule
