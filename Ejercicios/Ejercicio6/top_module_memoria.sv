`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2022 06:50:11 PM
// Design Name: 
// Module Name: top_module_memoria
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


module top_module_memoria(
                        input                           clk_pi,
                        input                           rst_pi,
                        input                            we_pi,
                        input  pkg_bits:: bitsh_t  addr_rs1_pi,
                        input  pkg_bits:: bitsh_t  addr_rs2_pi,
                        input  pkg_bits:: bitsh_t   addr_rd_pi,
                        input  pkg_bits:: bits_t    data_in_pi,
                        output pkg_bits:: bits_t        rs1_po,
                        output pkg_bits:: bits_t        rs2_po
                         );
    import      pkg_bits::*;
    logic       clk_10MHz;
    logic       locked;
    
    WCLK instance_1(
                        // Clock out ports  
                        .CLK_10MHZ( clk_10MHz ),
                        // Status and control signals               
                        .locked(       locked ),
                        // Clock in ports
                        .CLK_100MHZ(   clk_pi )
                        );
    
    module_memoria memoria_1(                
                        .clk_i(        clk_10MHz   ),
                        .rst_i(        rst_pi      ),
                        .we_i(         we_pi       ),
                        .addr_rs1_i(   addr_rs1_pi ),
                        .addr_rs2_i(   addr_rs2_pi ),
                        .addr_rd_i(    addr_rd_pi  ),
                        .data_in_i(    data_in_pi  ),
                        .rs1_o(        rs1_po      ),
                        .rs2_o(        rs2_po      ) 
                           );
                 
endmodule
