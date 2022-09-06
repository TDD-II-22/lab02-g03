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
                    
                    
    logic               [6 : 0]                     display_po;
    logic               [7 : 0]                     display_select_po ; 
        

    top_maquina_estado_calcu_sin_teclado top_maquina_estado_calcu(
    .clk_100Mhz_pi(clk_100Mhz_pi),
    .rst_pi(rst_pi),
    .sw_mode_pi(sw_mode_pi),
    .en_tecla(en_tecla), //SE DEBE CAMBIAR
    .teclado_pi(teclado_pi),
    .locked_po(locked_o),                              
    .led_error_po(led_error_po),
    .display_po(display_po),
    .display_select_po(display_select_po)     
                                      
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
                teclado_pi=9;
                #400;
                teclado_pi=4'ha;
                #400;
                teclado_pi=9;
                #400;
                teclado_pi=4'he;
                #400;
            end
            
        end     
    end

   always @(posedge locked_o) begin
        if(locked_o) begin
        
        forever #1200000 sw_mode_pi = ~sw_mode_pi;  
        end     
    end
    
    
  

endmodule
