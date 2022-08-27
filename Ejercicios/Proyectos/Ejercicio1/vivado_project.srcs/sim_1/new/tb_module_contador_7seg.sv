`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 16.08.2022 13:31:35
// Design Name: 
// Module Name: tb_module_contador_7seg
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


module tb_module_contador_7seg;


    logic               clk_100Mhz_i,
                        reset_i,
                        flanco_i, 
                        locked_i;
    logic   [6 : 0]     display_o;
    logic   [7 : 0]     display_select_o;
        
    logic [2 : 0]   counter;
    
    
    top_module_contador_7seg module_contador_7seg(

    .clk_100Mhz_pi      (clk_100Mhz_i),
    .reset_pi           (reset_i),
    .locked             (locked_i),
    .display_po         (display_o),
    .display_select_po  (display_select_o)
    
    );
    
    
    
    
    initial begin
    
        //declaracion de variables
        counter = 0;
        clk_100Mhz_i = 0;
        flanco_i = 1;
        clk_prueba = top_module_contador_7seg.module_clock_catodo.clk_10Mhz_i;
        
        //generate clock
        forever #5 clk_100Mhz_i = ~clk_100Mhz_i; 
        
    end
    
    initial begin
        #1;
		reset_i <= 1;	
		@(negedge clk_100Mhz_i);
		reset_i <= 0;
    end
    
    
    
    
    
    /*always @(posedge clk_100Mhz_i) begin
    
        if(reset_i) begin     
            #2_395;
            counter = 0;         
        end else begin
        
                $display ("ERROR!, el clock no esta sincronizado, time=%0t", $time);    
            if(counter == 4) begin       
                counter = 0;
                flanco_i = ~flanco_i;
            end else
                counter = counter + 1;
                            
        end 
        
    end                    
    */
endmodule

