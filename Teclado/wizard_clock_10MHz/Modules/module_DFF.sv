`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2022 15:04:27
// Design Name: 
// Module Name: module_DFF
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


module module_DFF (
    input     logic    D, // Data Input
    input     logic    clk, // Clock Input
    input     logic    EN, // Reset input 
    output    logic    Q       // Q output
    );
//-------------Code Starts Here---------
    always_ff @ ( posedge clk)
        if (~EN) begin
        Q <= 1'b0;
        end  else begin
        Q <= D;
        end

endmodule 
