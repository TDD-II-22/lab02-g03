`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2022 17:54:53
// Design Name: 
// Module Name: tb_module_2bit_counter
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


module tb_module_2bit_counter;
    logic           clk;  
    logic           en_i; 
    logic           rst_i;
    logic           det_i;
    logic    [1:0]  conta_o = 0;
    logic           CLK_100MHZ;
    logic           CLK_10MHZ;
    logic    [3:0]  cont2;
    
    
    initial begin
        CLK_100MHZ = 0;
        CLK_10MHZ  = 0;
        cont2      = 0; 
    end
    always begin
        #5 CLK_100MHZ = ~CLK_100MHZ;
        if(CLK_100MHZ == 1)begin
            cont2 = cont2 + 1;
        end
        if(cont2 == 4'b0101)begin
            CLK_10MHZ = ~CLK_10MHZ;
            cont2 = 0;
        end
    end
    
    module_2bit_counter counter_2bits(
    .clk            (CLK_10MHZ),
    .en_i           (en_i),
    .rst_i          (rst_i),
    .det_i          (det_i),
    .conta_o        (conta_o)
    );

    initial begin
        en_i   = 0;
        rst_i  = 1;
        det_i  = 0;
        #100;
        en_i   = 1;
        rst_i  = 0;
        det_i  = 0;
        #200
        en_i   = 1;
        rst_i  = 0;
        det_i  = 1;
        #250;
        en_i   = 1;
        rst_i  = 0;
        det_i  = 0;
        #150
        en_i   = 1;
        rst_i  = 1;
        det_i  = 0;
    end
    
endmodule
