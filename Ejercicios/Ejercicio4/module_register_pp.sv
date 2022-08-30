`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC 
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 18.08.2022 09:38:45
// Design Name: 
// Module Name: module_register_pp
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


module module_register_pp(
    input   logic               clk_i,
    input   logic               rst_i,
    input   logic               control_i,
    input   logic    [31 : 0]   entrada_i,
    output  logic    [31 : 0]   salida_o    
    );
        
    logic [31 : 0]  state;
    logic [31 : 0]  next_state;
    
    //generar memoria
    always_ff @(posedge clk_i) begin   
        if(rst_i) state <= 0;
        else      state <= next_state;
    end 
    
    //SIGUIENTE ESTADO
    always@(*) begin
        case(control_i)
            0:next_state        = entrada_i;
            1:next_state        = state;
            default: next_state = entrada_i;
        endcase
    end
    
    //SALIDA
    always@(*) begin
	   salida_o = state;
    end  
    
endmodule
