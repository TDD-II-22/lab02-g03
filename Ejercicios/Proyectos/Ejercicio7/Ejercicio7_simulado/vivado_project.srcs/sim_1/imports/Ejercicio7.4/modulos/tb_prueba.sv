`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2022 08:30:44
// Design Name: 
// Module Name: tb_prueba
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


module tb_prueba;
    logic                                           clk_100Mhz_pi,
                                                    rst_pi,
                                                    sw_mode_pi,
                                                    en_tecla; //SE DEBE CAMBIAR
    logic                [3 : 0]                    teclado_pi;
    logic                                           locked_o,
                                                    led_error_po;                
    logic                                           autoverifacion;                
    logic                                           slc_mux;                
    logic               [6 : 0]                     display_po;
    logic               [7 : 0]                     display_select_po ; 
    logic               [15  : 0]                   resultado_po ; 

    top_simulate_maquina_estado_calcu top_maquina_estado_calcu(
    .clk_100Mhz_pi                                  (clk_100Mhz_pi),
    .rst_pi                                         (rst_pi),
    .sw_mode_pi                                     (sw_mode_pi),
    .en_tecla                                       (en_tecla), //SE DEBE CAMBIAR
    .teclado_pi                                     (teclado_pi),
    .locked_po                                      (locked_o),
    .slc_mux_po                                     (slc_mux),
    .resultado_po                                   (resultado_po),                              
    .led_error_po                                   (led_error_po),
    .display_po                                     (display_po),
    .display_select_po                              (display_select_po)     
    );
    
    
    initial begin
    
        //declaracion de variables
        clk_100Mhz_pi = 0;
        rst_pi = 1;
        sw_mode_pi=0;
        en_tecla=0;
        //generate clock
        forever #5 clk_100Mhz_pi = ~clk_100Mhz_pi; 
        
    end
    
        //aplicar reset
    always @(posedge locked_o) begin
        #50;
        rst_pi <= 0;     
    end
    
        always @(posedge clk_100Mhz_pi) begin
        if(locked_o) begin
            #150;
            en_tecla = ~en_tecla;
        end     
    end
    
    always @(posedge locked_o) begin
        if(locked_o) begin
            repeat(33) begin
                #100;
                teclado_pi=2;
                #400;
                teclado_pi=4'ha;
                #400;
                teclado_pi=4;
                #400;
                teclado_pi=4'he;
                #400;
            end
            
        end     
    end
    
    logic [15 : 0]     resultado_sim;
    logic              flag1          =0;
    logic              flag2          =0;
    logic              flag3          =0;
    logic [3:0][15:0]  b_2            ='0;
    always @ (teclado_pi) begin
            if(teclado_pi <4'ha && !flag1)begin
                b_2 [0] =teclado_pi;
                flag1=1;
                flag2=0;
            end
            if(teclado_pi>4'h9&& flag1&& teclado_pi!=4'he)begin
                b_2 [1] =teclado_pi;
                flag2=1;
            end
            if(teclado_pi <4'ha && flag2&& flag1)begin 
                b_2 [2] =teclado_pi;
                flag1=0;
                flag2=0;
                flag3=1;
                
            end
            if(teclado_pi==4'he && flag3)begin
                case( b_2[1] )
                4'ha    : b_2[3] = b_2[0] +  b_2[2];
                4'hb    : b_2[3] = b_2[0] -  b_2[2];
                4'hc    : b_2[3] = b_2[0] & b_2[2];
                4'hd    : b_2[3] = b_2[0] | b_2[2];
                4'hf    : b_2[3] = b_2[0] << b_2[2];
                endcase
                resultado_sim=b_2[3];
                flag3=0;
                
            end 
    end
    always_ff @(posedge clk_100Mhz_pi)begin
        if(slc_mux) begin
                if(resultado_sim != resultado_po) $display ("ERROR!, Se registro un dato catodo incorrecto, time=%0t", $time);
                if(resultado_sim != resultado_po) autoverifacion=0;
                else autoverifacion=1;
        end
    end





   always @(posedge locked_o) begin
        if(locked_o) begin
        
        forever #1200000 sw_mode_pi = ~sw_mode_pi;  
        end     
    end
    
    
  

endmodule
