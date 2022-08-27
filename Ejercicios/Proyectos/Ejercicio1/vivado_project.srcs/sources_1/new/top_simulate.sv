`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 27.08.2022 08:49:12
// Design Name: 
// Module Name: top_simulate
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


module top_simulate(
    
    input   logic       clk_100Mhz_i,
    output  logic       clk_10Mhz_o,
                        locked_o
    );
     
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ      (clk_10Mhz_o),          // output CLK_10MHZ
        // Status and control signals
        .locked         (locked_o),                // output locked
        // Clock in ports
        .CLK_100MHZ     (clk_100Mhz_i)       // input CLK_100MHZ
    );    
    
    
endmodule
