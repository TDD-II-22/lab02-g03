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
    logic               flanco;
    logic               flag_check = 0;
    
    //instancia del top clock
    top_simulate top_simulate(
    
    .clk_100Mhz_i   (clk_100Mhz_i),
    .clk_10Mhz_o    (clk_10Mhz_o),
    .locked_o       (locked_o)
    );
    
    initial begin
    
        //declaracion de variables
        counter = 0;
        clk_100Mhz_i = 0;
        flanco = 1;
         
        //generate clock
        forever #5 clk_100Mhz_i = ~clk_100Mhz_i; 
        
    end
    
    //aplicar reset
    initial begin
        #1;
		reset_i <= 1;	
		@(negedge clk_100Mhz_i);
		reset_i <= 0;
    end
    
    //generar flancos de reloj "artificial" para verificacion
    always @(posedge clk_100Mhz_i) begin
    
        if(reset_i) begin     
            #2_395;         
        end else begin  
            if(counter == 4) begin       
                counter = 0;
                flanco = ~flanco;
            end else
                counter = counter + 1;                   
        end 
        
    end
    
    //proceso de verificacion
    always @(posedge clk_100Mhz_i) begin
    
        if(reset_i) begin     
            #2_395;      
        end else begin
            #7.5;                           //delay dado el retardo del sistema
            flag_check = ~flag_check;       //muestra donde se genera la verificacion
            if(clk_10Mhz_o != flanco) begin
                $display ("ERROR!, el clock no esta sincronizado, time=%0t", $time);
            end
        end 
        
    end  
                    


endmodule
