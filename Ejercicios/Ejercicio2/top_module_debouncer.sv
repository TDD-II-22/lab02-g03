`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2022 20:08:37
// Design Name: 
// Module Name: top_module_debouncer
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


module top_module_debouncer(
    input     logic             clk,
    input     logic             bt1,
    input     logic             rst,
    output    logic    [7:0]    conta
                         
    );
    
  logic clk_10MHz;
  logic signal;
  
  module_debouncer db1(
      .clk_10MHz    (clk_10MHz),
      .bt1          (bt1),
      .signal       (signal)      
      );
  
  contador_prueba c1(
      .clk        (clk_10MHz),
      .rst_n_i    (rst),
      .en_i       (bt1),
      .conta    (conta)  
      );
  
  
    
  clk_wiz_10MHZ inst
  (
  // Clock out ports  
  .clk_out10MHz(clk_10MHz),
  // Clock in ports
  .clk_in100MHz(clk)
  );
  
 
endmodule 
