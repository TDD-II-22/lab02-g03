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
    input     logic    clk, // Data Input
    input     logic    D, // Clock Input
    input     logic    EN,
    output    logic    Q       // Q output
    );
//-------------Code Starts Here---------
    always_ff @ ( posedge clk) begin
        if (EN)  Q <= D;
       end

endmodule 
