`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 22:39:44
// Design Name: 
// Module Name: key_detector
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


module key_detector(
    input     logic    deb1_i,
                       deb2_i,
                       deb3_i,
                       deb4_i,
    output    logic    det_o
    );
    
    logic    [3:0]    registro;
    assign registro = {deb1_i,deb2_i,deb3_i,deb4_i};
    always_comb begin
       if(registro == 4'b1111) det_o = 1'b0;
       else det_o = 1'b1;
    end

    
    
endmodule
