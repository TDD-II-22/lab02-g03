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


module module_seg7_control(
    
    input   logic               clk_10Mhz_i,
                                reset_i,
                    [31 : 0]    display_i,
    output  logic   [6 : 0]     display_o,
                    [7 : 0]     display_select_o
    
    );
  
    logic [2 : 0]   digit_select;   // 3 bits para seleccionar los 8 digitos
    logic [13 : 0]  digit_timer;        // contador para refrescar los digitos
    
     //Parametros para el patron de segmento
    parameter CERO      = 7'b100_0000;
    parameter UNO       = 7'b111_1001;
    parameter DOS       = 7'b010_0100;
    parameter TRES      = 7'b011_0000;
    parameter CUATRO    = 7'b001_1001;
    parameter CINCO     = 7'b001_0010;
    parameter SEIS      = 7'b000_0010;
    parameter SIETE     = 7'b111_1000;
    parameter OCHO      = 7'b000_0000;
    parameter NUEVE     = 7'b001_1000;
    parameter A         = 7'b000_1000;
    parameter B         = 7'b000_0011;
    parameter C         = 7'b100_0110;
    parameter D         = 7'b010_0001;
    parameter E         = 7'b000_0110;       
    parameter F         = 7'b000_1110;
    
    //CLOCK DEL ANODO
    //logica para controlar la seleccion de digitos
    always_ff @(posedge clk_10Mhz_i or posedge reset_i) begin
        if(reset_i) begin
            digit_select <= 0;
            digit_timer <= 0;
        end else
            /*
                Son 8 display a un periodo de 1ms por perido, se tiene que:
                    1ms x 8 display = 8ms periodo de refrescamiento
                    
                El periodo es de 1ms -> 1kHz
                    entonces: 100MHz/1kHz = 100 000
                        por lo que cada 100 000 hay un periodo
                            este sera entonces la tasa de refrescamiento
            */
            
            //logica para el periodo de refrescamiento
            if(digit_timer == 9_999) begin
                digit_timer <= 0;
                digit_select <= digit_select + 1;
            end else
                digit_timer <= digit_timer + 1;   
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
    
    //logica para conducir segmentos según el dígito seleccionado y el valor de cada dígito.
    always_comb begin
    
        case(digit_select)
            3'h0:   
                begin
                    case(display_i[3 : 0])
                        4'h0: display_o = CERO;
                        4'h1: display_o = UNO;
                        4'h2: display_o = DOS;
                        4'h3: display_o = TRES;
                        4'h4: display_o = CUATRO;
                        4'h5: display_o = CINCO;
                        4'h6: display_o = SEIS;
                        4'h7: display_o = SIETE;
                        4'h8: display_o = OCHO;
                        4'h9: display_o = NUEVE;
                        4'ha: display_o = A;
                        4'hb: display_o = B;
                        4'hc: display_o = C;
                        4'hd: display_o = D;
                        4'he: display_o = E;
                        4'hf: display_o = F;
                    endcase
                end
            3'h1:   
                begin
                    case(display_i[7 : 4])
                        4'h0: display_o = CERO;
                        4'h1: display_o = UNO;
                        4'h2: display_o = DOS;
                        4'h3: display_o = TRES;
                        4'h4: display_o = CUATRO;
                        4'h5: display_o = CINCO;
                        4'h6: display_o = SEIS;
                        4'h7: display_o = SIETE;
                        4'h8: display_o = OCHO;
                        4'h9: display_o = NUEVE;
                        4'ha: display_o = A;
                        4'hb: display_o = B;
                        4'hc: display_o = C;
                        4'hd: display_o = D;
                        4'he: display_o = E;
                        4'hf: display_o = F;
                    endcase
                end
            3'h2:   
                begin
                    case(display_i[11 : 8])
                        4'h0: display_o = CERO;
                        4'h1: display_o = UNO;
                        4'h2: display_o = DOS;
                        4'h3: display_o = TRES;
                        4'h4: display_o = CUATRO;
                        4'h5: display_o = CINCO;
                        4'h6: display_o = SEIS;
                        4'h7: display_o = SIETE;
                        4'h8: display_o = OCHO;
                        4'h9: display_o = NUEVE;
                        4'ha: display_o = A;
                        4'hb: display_o = B;
                        4'hc: display_o = C;
                        4'hd: display_o = D;
                        4'he: display_o = E;
                        4'hf: display_o = F;
                    endcase
                end
            3'h3:   
                begin
                    case(display_i[15 : 12])
                        4'h0: display_o = CERO;
                        4'h1: display_o = UNO;
                        4'h2: display_o = DOS;
                        4'h3: display_o = TRES;
                        4'h4: display_o = CUATRO;
                        4'h5: display_o = CINCO;
                        4'h6: display_o = SEIS;
                        4'h7: display_o = SIETE;
                        4'h8: display_o = OCHO;
                        4'h9: display_o = NUEVE;
                        4'ha: display_o = A;
                        4'hb: display_o = B;
                        4'hc: display_o = C;
                        4'hd: display_o = D;
                        4'he: display_o = E;
                        4'hf: display_o = F;
                    endcase
                end
            3'h4:   
                begin
                    case(display_i[19 : 16])
                        4'h0: display_o = CERO;
                        4'h1: display_o = UNO;
                        4'h2: display_o = DOS;
                        4'h3: display_o = TRES;
                        4'h4: display_o = CUATRO;
                        4'h5: display_o = CINCO;
                        4'h6: display_o = SEIS;
                        4'h7: display_o = SIETE;
                        4'h8: display_o = OCHO;
                        4'h9: display_o = NUEVE;
                        4'ha: display_o = A;
                        4'hb: display_o = B;
                        4'hc: display_o = C;
                        4'hd: display_o = D;
                        4'he: display_o = E;
                        4'hf: display_o = F;
                    endcase
                end
            3'h5:   
                begin
                    case(display_i[23 : 20])
                        4'h0: display_o = CERO;
                        4'h1: display_o = UNO;
                        4'h2: display_o = DOS;
                        4'h3: display_o = TRES;
                        4'h4: display_o = CUATRO;
                        4'h5: display_o = CINCO;
                        4'h6: display_o = SEIS;
                        4'h7: display_o = SIETE;
                        4'h8: display_o = OCHO;
                        4'h9: display_o = NUEVE;
                        4'ha: display_o = A;
                        4'hb: display_o = B;
                        4'hc: display_o = C;
                        4'hd: display_o = D;
                        4'he: display_o = E;
                        4'hf: display_o = F;
                    endcase
                end
            3'h6:   
                begin
                    case(display_i[27 : 24])
                        4'h0: display_o = CERO;
                        4'h1: display_o = UNO;
                        4'h2: display_o = DOS;
                        4'h3: display_o = TRES;
                        4'h4: display_o = CUATRO;
                        4'h5: display_o = CINCO;
                        4'h6: display_o = SEIS;
                        4'h7: display_o = SIETE;
                        4'h8: display_o = OCHO;
                        4'h9: display_o = NUEVE;
                        4'ha: display_o = A;
                        4'hb: display_o = B;
                        4'hc: display_o = C;
                        4'hd: display_o = D;
                        4'he: display_o = E;
                        4'hf: display_o = F;
                    endcase
                end
            3'h7:   
                begin
                    case(display_i[31 : 28])
                        4'h0: display_o = CERO;
                        4'h1: display_o = UNO;
                        4'h2: display_o = DOS;
                        4'h3: display_o = TRES;
                        4'h4: display_o = CUATRO;
                        4'h5: display_o = CINCO;
                        4'h6: display_o = SEIS;
                        4'h7: display_o = SIETE;
                        4'h8: display_o = OCHO;
                        4'h9: display_o = NUEVE;
                        4'ha: display_o = A;
                        4'hb: display_o = B;
                        4'hc: display_o = C;
                        4'hd: display_o = D;
                        4'he: display_o = E;
                        4'hf: display_o = F;
                    endcase
                end   
        endcase    
    end
endmodule
