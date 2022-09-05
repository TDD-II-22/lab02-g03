`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2022 13:28:52
// Design Name: 
// Module Name: module_clock_divisor
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


module module_clock_divisor(
    input logic  clk,
    output logic clk_2hz = 0
    );
    logic [23:0]cont_clk = 0;
    
    always_ff@ (posedge clk) begin
        if(cont_clk == 24'h4C4B40)begin
            cont_clk = 0;
            clk_2hz    = ~clk_2hz;
        end
        if(cont_clk == 24'h4C4B3F)begin
            clk_2hz    = ~clk_2hz;
        end    
        if(cont_clk != 24'h4C4B40)begin
            cont_clk = cont_clk + 1;
        end
    end
endmodule
