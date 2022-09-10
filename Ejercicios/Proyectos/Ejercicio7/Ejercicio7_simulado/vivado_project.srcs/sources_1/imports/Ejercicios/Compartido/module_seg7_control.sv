`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC 
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 18.08.2022 09:38:45
// Design Name: 
// Module Name: module_seg7_control
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


module module_seg7_control #(parameter COUNT_ANODO = 10_000, BITS_ANODO = 14)(
    
    input   logic               clk_10Mhz_i,
                                reset_i,
                    [31 : 0]    display_i,
    output  logic   [6 : 0]     display_o,
                    [7 : 0]     display_select_o
    
    );
    
    
    logic [2 : 0]               digit_select;   // 3 bits para seleccionar los 8 digitos 
    logic [BITS_ANODO - 1 : 0]  digit_timer;    // contador para refrescar los digitos
    
    
    //CLOCK DEL ANODO
    //logica para controlar la seleccion de digitos
    always_ff @(posedge clk_10Mhz_i) begin
        if(reset_i) begin
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
            if( digit_timer  == (COUNT_ANODO - 1)) begin
                digit_timer  <= 0;
                digit_select <= digit_select + 1;
            end else
                digit_timer  <= digit_timer + 1;   
    end
    
    //logica para encender un adono determinado
    always @(digit_select) begin
        case(digit_select)
            3'h0: display_select_o = 8'b1111_1110;
            3'h1: display_select_o = 8'b1111_1101;
            3'h2: display_select_o = 8'b1111_1011;
            3'h3: display_select_o = 8'b1111_0111;
            3'h4: display_select_o = 8'b1110_1111;
            3'h5: display_select_o = 8'b1101_1111;
            3'h6: display_select_o = 8'b1011_1111;
            3'h7: display_select_o = 8'b0111_1111;
        endcase
        
    end
      
    //funcion de seleccion de catado   
    function [6 : 0] func_display_o (input [3 : 0] display_i );
   
        logic [6 : 0] fun_display;
        
        case(display_i)
                        4'h0: fun_display = 7'b100_0000;    //CERO
                        4'h1: fun_display = 7'b111_1001;    //UNO
                        4'h2: fun_display = 7'b010_0100;    //DOS
                        4'h3: fun_display = 7'b011_0000;    //TRES
                        4'h4: fun_display = 7'b001_1001;    //CUATRO
                        4'h5: fun_display = 7'b001_0010;    //CINCO
                        4'h6: fun_display = 7'b000_0010;    //SEIS
                        4'h7: fun_display = 7'b111_1000;    //SIETE
                        4'h8: fun_display = 7'b000_0000;    //OCHO
                        4'h9: fun_display = 7'b001_1000;    //NUEVE
                        4'ha: fun_display = 7'b000_1000;    //A
                        4'hb: fun_display = 7'b000_0011;    //B
                        4'hc: fun_display = 7'b100_0110;    //C
                        4'hd: fun_display = 7'b010_0001;    //D
                        4'he: fun_display = 7'b000_0110;    //E
                        4'hf: fun_display = 7'b000_1110;    //F
        endcase
        
        return fun_display;
        
    endfunction
    
    //logica para conducir segmentos según el dígito seleccionado y el valor de cada dígito.
    always_comb begin
    
        case(digit_select)
            3'h0: display_o = func_display_o(display_i[3 : 0]);
            3'h1: display_o = func_display_o(display_i[7 : 4]);
            3'h2: display_o = func_display_o(display_i[11 : 8]);
            3'h3: display_o = func_display_o(display_i[15 : 12]);  
            3'h4: display_o = func_display_o(display_i[19 : 16]);  
            3'h5: display_o = func_display_o(display_i[23 : 20]); 
            3'h6: display_o = func_display_o(display_i[27 : 24]); 
            3'h7: display_o = func_display_o(display_i[31 : 28]);
        endcase    
    end
endmodule
