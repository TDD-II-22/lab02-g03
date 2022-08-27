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

    input     logic    clk_10MHz,
    input     logic    bt1,
    output    logic    signal

    );
    
    logic clk_out;
    logic Q1,Q1_neg, Q2, Q2_neg;
    
    clk_div_4Hz  u1(//clk, clk_out
        .clk_10MHz(clk_10MHz), 
        .clk_4Hz(clk_out)
        );
    
    module_DFF ff1(clk_out,bt1,Q1
        //.D (bt1),
        //.clk (clk_out),
        //.EN (1'b1),
        //.Q (Q1),
        //.Q_neg (Q1_neg)
        );
        
    module_DFF ff2(clk_out, Q1,Q2
       // .D (Q1),
       // .clk (clk_out),
        //.EN (1'b1),
       // .Q (Q2)
       // .Q_neg (Q2_neg)
        );
    
    assign Q2_neg = ~Q2;    
    assign signal = Q1 & Q2_neg; 
        
      

    
    
endmodule 

module clk_div_4Hz (input logic clk_10MHz, output logic clk_4Hz);
    logic [25:0] count = 0;
    
    always @ (posedge clk_10MHz)
    begin
    count <= count +1;
    if (count == 500000)
    begin
    count <=0;  
    clk_4Hz = ~clk_4Hz;
    end
    end
endmodule 







