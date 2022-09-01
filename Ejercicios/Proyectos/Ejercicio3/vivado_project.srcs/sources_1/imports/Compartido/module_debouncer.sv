`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2022 14:42:12
// Design Name: 
// Module Name: module_debouncer
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


module module_debouncer ( 

    input     logic    clk,
    input     logic    bt1_i,
    input     logic    rst_i,
    output    logic    signal_o

    );
    
    logic en_out;
    logic Q1,Q1_neg, Q2, Q2_neg;
    
    module_DFF ff1(en_out,bt1_i,Q1
        //.D (bt1),
        //.clk (clk_out),
        //.EN (1'b1),
        //.Q (Q1),
        //.Q_neg (Q1_neg)
        );
        
    module_DFF ff2(en_out, Q1,Q2
       // .D (Q1),
       // .clk (clk_out),
        //.EN (1'b1),
       // .Q (Q2)
       // .Q_neg (Q2_neg)
        );
    
    assign Q2_neg = ~Q2;    
    assign signal_o = Q1 & Q2_neg; 
        
    module_clock_catodo #(12_500_000, 25)(
        .clk_10MHz_i       (clk),
        .reset_i           (rst_i),
        .clock_catodo_o    (en_out)  
        );
    
    
endmodule 








