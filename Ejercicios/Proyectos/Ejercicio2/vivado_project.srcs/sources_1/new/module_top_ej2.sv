`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2022 07:25:45
// Design Name: 
// Module Name: module_top_ej2
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


/*module module_top_ej2(
    input logic         clk,
    input logic         rst_n_i, 
    input logic         en_i, 
    input logic         bt1,
    output logic [7:0]  conta_o);

//para detectar el flanco de la señal en_i
logic [1:0] registro_en_r;
logic        CLK_10MHZ; 
logic signal;
    module_debouncer debouncer(              // se usa el full adder 1bit dentro del for
        .clk       (clk), 
        .slw_clk   (CLK_10MHZ),            // asignacion de datos
        .bt1       (bt1),
        .signal    (signal)
        );
always_ff@(posedge clk) begin
    registro_en_r <= {registro_en_r[0], signal};
end

always_ff@(posedge clk) begin
    if(!rst_n_i) conta_o <= 0;
    else begin
       //detectando sólo el flanco positivo de en_i 
       if(registro_en_r == 2'b01) conta_o <= conta_o + 8'd1;
    end
end






  clk_wiz_0 instance_name
   (
    // Clock out ports
    .CLK_10MHZ(CLK_10MHZ),     // output CLK_10MHZ
    // Status and control signals
    .resetn(), // input resetn
   // Clock in ports
    .CLK_100MHZ(clk));      // input CLK_100MHZ
// INST_TAG_END ------ End INSTANTIATION Template ---------

endmodule
*/