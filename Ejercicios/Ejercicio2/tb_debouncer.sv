`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 02:51:44
// Design Name: 
// Module Name: tb_debouncer
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


module tb_debouncer;

    logic         clk,
                  bt1_i,
                  rst_i,
                  signal_o;
    
      
    module_debouncer DUT (
        .clk         (clk),
        .bt1_i       (bt1_i),
        .rst_i       (rst_i),
        .signal_o    (signal_o)
        );
    
    initial begin
       // rst_i=0;
        //signal_o=0;
        clk= 0;
        forever #5 clk = ~clk;    
    end
    
     always begin
     repeat (5) begin
     bt1_i = 0;
     #5;
     bt1_i=1;
     #7;
     bt1_i = 0;
     #10;
     bt1_i=1;
     #15; 
     bt1_i = 0;
     #10;
     bt1_i=1;
     #20;
     bt1_i = 0;
     #10;
     bt1_i=1;
     #10; 
     bt1_i = 0;
     #10;
     bt1_i=1; 
     #1000; end
 end   
    
    
endmodule
