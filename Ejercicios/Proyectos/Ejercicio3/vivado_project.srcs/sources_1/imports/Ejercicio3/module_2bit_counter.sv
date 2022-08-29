`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 16:39:41
// Design Name: 
// Module Name: module_2bit_counter
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


module module_2bit_counter(
    input logic         clk,  
    input logic         en_i, 
    output logic [1:0]  conta_o);
    
  /*  logic clk_4Hz;
        clk_div_4HZ  u1(//clk, clk_out
        .clk_10MHz(clk), 
        .clk_4Hz(clk_4Hz)
        );
 */   

always_ff@(posedge clk) begin
    if(!en_i) begin
       //detectando s?lo el flanco positivo de en_i 
       if(conta_o == 2'b11) conta_o <= 0;
       else begin
       conta_o <= conta_o + 2'd1;
       end
    end
end


endmodule
/*
    module clk_div_4HZ (input logic clk_10MHz, output logic clk_4Hz);
    logic [25:0] count = 0;
    
    always_ff @ (posedge clk_10MHz)
    begin
    count <= count +1;
    if (count == 5_000_000-1)
    begin
    count <=0;  
    clk_4Hz = ~clk_4Hz;
    end
    end
endmodule */