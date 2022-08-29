`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 27.08.2022 09:41:51
// Design Name: 
// Module Name: tb_simulate
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


module tb_simulate;

    logic               clk_100Mhz_i,
                        reset_i,
                        clk_10Mhz_o,
                        locked_o;
        
    logic   [2 : 0]     counter;
    logic               flanco,
                        flag_check,
                        flag_en;
    
    //instancia del top clock
    top_simulate top_simulate(
    
    .clk_100Mhz_i       (clk_100Mhz_i),
    .clk_10Mhz_o        (clk_10Mhz_o),
    .locked_o           (locked_o)
    );
    
    initial begin
    
        //declaracion de variables
        counter             = 0;
        clk_100Mhz_i        = 0;
        flanco              = 0;
        reset_i             = 1;
        flag_check          = 0;
        flag_en             = 0;
        //generate clock
        forever #5 clk_100Mhz_i = ~clk_100Mhz_i; 
        
    end
    
    //aplicar reset
    always @(posedge locked_o) begin
        #50;
        reset_i <= 0;     
    end
    
    always @(negedge clk_10Mhz_o) begin
        if(locked_o)    
            if(!flag_en) flag_en <= 1;  
    end
    
    //generar flancos de reloj "artificial" para verificacion
    always @(posedge clk_100Mhz_i) begin
        
        if(locked_o) begin
        
            if(flag_en) begin
            
                if(counter == 4) begin       
                    counter = 0;
                    flanco = ~flanco;
                end else
                    counter = counter + 1;
                    
            end

        end 
        
    end
    
    
    //proceso de verificacion
    always @(posedge clk_100Mhz_i) begin
    
        if(locked_o) begin
            if(flag_en) begin
                #5;
                flag_check = ~flag_check;       //muestra donde se genera la verificacion
                if(clk_10Mhz_o != flanco) begin
                    $display ("ERROR!, el clock no esta sincronizado, time=%0t", $time);
                end
                
            end
        end 
              
    end                

endmodule
