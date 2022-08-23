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
    input     logic    bt1,
    output    logic    signal

    );
    logic slow_clk_en;
    clock_enable u1(clk,slow_clk_en);
    
    module_DFF d1(              // se usa el full adder 1bit dentro del for
        .D      (bt1),             // asignacion de datos
        .clk    (clk),
        .EN     (slow_clk_en),
        .Q      ()
        );
        
    module_DFF d2(              // se usa el full adder 1bit dentro del for
        .D      (d1.Q),             // asignacion de datos
        .clk    (clk),
        .EN     (slow_clk_en),
        .Q      ()
        );
    assign signal = d1.Q & ~d2.Q;
    
    
endmodule 

module clock_enable(input Clk_100M,output slow_clk_en);
    logic [26:0]counter=0;
    always @(posedge Clk_100M)
    begin
       counter <= (counter>=249999)?0:counter+1;
    end
    assign slow_clk_en = (counter == 249999)?1'b1:1'b0;
endmodule
