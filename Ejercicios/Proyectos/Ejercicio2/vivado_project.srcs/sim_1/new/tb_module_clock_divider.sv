`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 16.08.2022 13:31:35
// Design Name: 
// Module Name: tb_module_clock_divider
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


module tb_module_clock_divider;


    logic           CLK_100MHZ,
                    reset,
                    CLK_10MHZ,
                    flanco;
            
    logic [2 : 0]   counter;
            
    clk_wiz_0 generate_CLK_10MHZ(
    // Clock out ports
    .CLK_10MHZ(CLK_10MHZ),     // output CLK_10MHZ
    // Status and control signals
    .resetn(reset), // input reset
   // Clock in ports
    .CLK_100MHZ(CLK_100MHZ)
    ); 
    
    initial begin
        counter = 0;
        CLK_100MHZ = 0;
        flanco = 1;
            forever #5 CLK_100MHZ = ~CLK_100MHZ;   
    end
    
    initial begin	
		reset<=0;	
		@(negedge CLK_100MHZ);
		reset<=1;
    end
    
    always @(posedge CLK_100MHZ) begin
    
        if(!reset) begin     
            #2_395;
            counter = 0;         
        end else begin
        
            if(CLK_10MHZ != flanco) 
                $display ("ERROR!, el clock no esta sincronizado, time=%0t", $time);    
            if(counter == 4) begin       
                counter = 0;
                flanco = ~flanco;
            end else
                counter = counter + 1;
                            
        end 
    end    
        
            

    
                    

endmodule
