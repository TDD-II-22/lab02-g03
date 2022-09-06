`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2022 22:31:58
// Design Name: 
// Module Name: module_leds_rgb
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


module module_leds_rgb #(parameter COUNT = 10_000, BITS = 14)(
    
    input   logic               clk_i,
                                rst_i,
                    [2 : 0]     color_i,
    output  logic   [2 : 0]     rgb_o
    
    );
    
    
    logic [1 : 0]               digit_select;   // 3 bits para seleccionar los 8 digitos 
    logic [BITS - 1 : 0]        digit_timer;    // contador para refrescar los digitos
    
    
    parameter                   OFF             = 0,
                                ROJO            = 1,
                                VERDE           = 2,
                                AZUL            = 3,
                                AMARILLO        = 4,
                                CIAN            = 5,
                                MAGENTA         = 6,
                                BLANCO          = 7;
    
    
    //CLOCK
    //logica para controlar la seleccion de digitos
    always_ff @(posedge clk_i) begin
        if(rst_i) begin
            digit_select <= 0;
            digit_timer  <= 0;
        end else
            /*           
                Son 8 display a un periodo de 1ms por perido, se tiene que:
                    1ms x 8 display = 8ms periodo de refrescamiento
                    
                El periodo es de 1ms -> 1kHz
                    entonces: 10MHz/1kHz = 10 000
                        por lo que cada 10 000 hay un periodo
                            este sera entonces la tasa de refrescamiento
            */
            
            //logica para el periodo de refrescamiento
            if( digit_timer  == (COUNT - 1)) begin
                digit_timer  <= 0;
                digit_select <= digit_select + 1;
            end else
                digit_timer  <= digit_timer + 1;   
    end
    
    //logica para encender un adono determinado
    always @(digit_select) begin
        case(color_i)
            OFF:
                begin
                     case(digit_select)
                        2'h0: rgb_o <= 3'b000;
                        2'h1: rgb_o <= 3'b000;
                        2'h2: rgb_o <= 3'b000;
                    endcase
                end
            ROJO:
                begin
                     case(digit_select)
                        2'h0: rgb_o <= 3'b100;
                        2'h1: rgb_o <= 3'b000;
                        2'h2: rgb_o <= 3'b000;
                    endcase
                end
            VERDE:
                begin
                     case(digit_select)
                        2'h0: rgb_o <= 3'b000;
                        2'h1: rgb_o <= 3'b010;
                        2'h2: rgb_o <= 3'b000;
                    endcase
                end
            AZUL:
                begin
                     case(digit_select)
                        2'h0: rgb_o <= 3'b000;
                        2'h1: rgb_o <= 3'b000;
                        2'h2: rgb_o <= 3'b001;
                    endcase
                end
            AMARILLO:
                begin
                     case(digit_select)
                        2'h0: rgb_o <= 3'b100;
                        2'h1: rgb_o <= 3'b010;
                        2'h2: rgb_o <= 3'b000;
                    endcase
                end
            CIAN:
                begin
                     case(digit_select)
                        2'h0: rgb_o <= 3'b000;
                        2'h1: rgb_o <= 3'b010;
                        2'h2: rgb_o <= 3'b001;
                    endcase
                end
            MAGENTA:
                begin
                     case(digit_select)
                        2'h0: rgb_o <= 3'b100;
                        2'h1: rgb_o <= 3'b000;
                        2'h2: rgb_o <= 3'b001;
                    endcase
                end
            BLANCO:
                begin
                     case(digit_select)
                        2'h0: rgb_o <= 3'b100;
                        2'h1: rgb_o <= 3'b010;
                        2'h2: rgb_o <= 3'b001;
                    endcase
                end
        endcase
    
    
       
        
    end
    
    
    
    
endmodule
