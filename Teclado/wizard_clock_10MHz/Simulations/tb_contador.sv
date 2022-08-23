`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2022 18:39:45
// Design Name: 
// Module Name: tb_contador
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


module tb_contador;

logic    clk,
         rst_n_i;
         
logic [7:0]  conta_o;

contador_prueba DUT(
    .clk (clk),
    .rst_n_i (rst_n_i),
    .en_i (),
    .conta_o ()
);

always @(*)begin
if (debouncer.signal) begin
conta_o <= conta_o + 8'b00000001;
end

end

always @(*)begin
if (!rst_n_i) begin
conta_o <= 8'b00000000;
end

end


endmodule
