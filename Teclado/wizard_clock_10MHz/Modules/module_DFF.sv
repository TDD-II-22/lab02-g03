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
    //input     logic    EN,
    output    logic    Q,       // Q output
    output    logic    Q_neg
    );
//-------------Code Starts Here---------
    always_ff @ ( posedge clk)
        //if (EN)
        begin
        Q <= D;
        Q_neg <= !Q;        
        //end  else begin
       // Q <= 1'b0;
       // Q_neg <= !Q;
       end

endmodule 
