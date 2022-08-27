`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 15.08.2022 02:59:44
// Design Name: 
// Module Name: module_clock_catodo
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


module module_clock_catodo(

    input   logic       clk_10Mhz_i,
                        reset_i,
    output  logic       clock_catodo_o 
    
    );
    /*    
       FORMULA: counter = (100Mhz / f_cambio) / 2
                f_cambio: que tan lento o que tan rapido va a cambiar el catodo del display
                          -> un valor alto, aumenta la velocidad
                          -> un valor bajo, disminuye la velocidad
       
       Nota se divide entre dos, ya que hay dos flancos de reloj por periodo
            
       Counter debe tener un tama�o igual o superior a este valor.       
    */ 
    
    logic [19 : 0] counter = 0;
    
    logic clk_out = 0;
    
    always_ff @(posedge clk_10Mhz_i)
        
        if(reset_i) begin
            counter <= 0;
            clk_out <= 0;        
        end else
            if(counter == 999_999) begin //esto genera un flanco reloj, que se va a dar justo en el counter 50k
                counter <= 0;
                clk_out <= 1; 
            end else begin
                counter <= counter + 1;
                clk_out <= 0;
            end  
    
    assign clock_catodo_o = clk_out;
endmodule
