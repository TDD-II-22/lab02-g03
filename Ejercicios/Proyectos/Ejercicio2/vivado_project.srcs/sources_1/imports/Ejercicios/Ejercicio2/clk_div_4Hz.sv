`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2022 09:11:50
// Design Name: 
// Module Name: clk_div_4Hz
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


module clk_div_4Hz (input logic clk_10MHz, output logic clk_4Hz);
    logic [25:0] count = 0;
    
    always @ (posedge clk_10MHz)
    begin
    count <= count +1;
    if (count == 1250000)
    begin
    count <=0;  
    clk_4Hz = ~clk_4Hz;
    end
    end
endmodule 
