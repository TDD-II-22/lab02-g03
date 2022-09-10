`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2022 18:51:56
// Design Name: 
// Module Name: tb_module_key_detector
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


module tb_module_key_detector;
    logic    deb1_i,
             deb2_i,
             deb3_i,
             deb4_i;
    logic    det_o;
    
    key_detector detector(
    .deb1_i         (deb1_i),
    .deb2_i         (deb2_i),
    .deb3_i         (deb3_i),
    .deb4_i         (deb4_i),
    .det_o          (det_o)
    );
    
    initial begin
        deb1_i = 0;
        deb2_i = 0;
        deb3_i = 0;
        deb4_i = 0;
        #50;
        deb1_i = 1;
        deb2_i = 1;
        deb3_i = 1;
        deb4_i = 0;
        #50;
        deb1_i = 1;
        deb2_i = 0;
        deb3_i = 1;
        deb4_i = 1;
        #50;
        deb1_i = 1;
        deb2_i = 1;
        deb3_i = 1;
        deb4_i = 1;
        #50;
        deb1_i = 1;
        deb2_i = 0;
        deb3_i = 0;
        deb4_i = 0;
        #50;
        deb1_i = 0;
        deb2_i = 1;
        deb3_i = 0;
        deb4_i = 0;
        #50;
        deb1_i = 0;
        deb2_i = 0;
        deb3_i = 1;
        deb4_i = 0;
        #50;
        deb1_i = 0;
        deb2_i = 0;
        deb3_i = 0;
        deb4_i = 1;
        #50;
        deb1_i = 0;
        deb2_i = 1;
        deb3_i = 1;
        deb4_i = 1;
        #50;
        deb1_i = 0;
        deb2_i = 1;
        deb3_i = 1;
        deb4_i = 0;
        #50;
        deb1_i = 1;
        deb2_i = 1;
        deb3_i = 1;
        deb4_i = 1;
        #50;
        deb1_i = 0;
        deb2_i = 0;
        deb3_i = 1;
        deb4_i = 1;
        #50;
        deb1_i = 1;
        deb2_i = 1;
        deb3_i = 0;
        deb4_i = 0;
        #50;
        deb1_i = 1;
        deb2_i = 0;
        deb3_i = 0;
        deb4_i = 1;
        #50;
        deb1_i = 1;
        deb2_i = 1;
        deb3_i = 1;
        deb4_i = 1;
        #50;
        deb1_i = 0;
        deb2_i = 1;
        deb3_i = 1;
        deb4_i = 0;
        #50;
        deb1_i = 1;
        deb2_i = 0;
        deb3_i = 1;
        deb4_i = 1;
        #50;
        deb1_i = 0;
        deb2_i = 0;
        deb3_i = 0;
        deb4_i = 1;
        
        
        
    end


endmodule
