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


module tb_module_7seg_v2;
    
    logic               clk_100Mhz_pi,
                        reset_pi,
                        control_reg;
                        
    logic   [6 : 0]     display_po;
    logic   [7 : 0]     display_select_po;
    
    
    /*
    //AUTOVERIFICACION
    
    logic           clk_10Mhz;
    logic           clock_2s;
        
    logic [31 : 0]  display_re;
    logic [31 : 0]  display;
    
        
    clk_wiz_0 generate_CLK_10MHZ(
    // Clock out ports
    .CLK_10MHZ(clk_10Mhz),     // output CLK_10MHZ
    // Status and control signals
    .reset(reset_pi), // input reset
   // Clock in ports
    .CLK_100MHZ(clk_100Mhz_pi)
    ); 
    
        //clock de 2 segundos
    module_clock_2s module_clock_2s(
                  
        .clk_10Mhz_i(clk_10Mhz),         
        .reset_i(reset_pi),     
        .clock_2s_o(clock_2s)   
                  
    );

    module_pseudo_random random_display(
        .i_Clk(clk_10Mhz),
        .i_Rst(reset_pi),
        .i_Enable(clock_2s),
        .o_LFSR_Data(display)
    );
    
    module_register_pp register_pp(
                  
        .clk_i(clk_10Mhz),            
        .rst_i(reset_pi),            
        .control(control_reg), 
        .entrada_i(display),        
        .salida_o(display_re)         
    
    );  
    */
    top_module_7seg_v2 module_7seg_v2(

        .clk_100Mhz_pi(clk_100Mhz_pi),
        .reset_pi(reset_pi),
        .control_reg(control_reg),
        .display_po(display_po),
        .display_select_po(display_select_po)
    );
    
    
    //simulacion de clock
    initial begin
        clk_100Mhz_pi = 0;
        control_reg = 0;
            forever #5 clk_100Mhz_pi = ~clk_100Mhz_pi;   
    end
    
    //aplicar reset
    initial begin	
		reset_pi<=1;	
		@(negedge clk_100Mhz_pi);
		reset_pi<=0;
    end
    /*
    //esperar estabilizacion del clock wizard
    always @(posedge clk_100Mhz_pi) begin
    
        if(reset_pi) begin     
            #2_395;       
        end else begin
        
            if(clk_10Mhz)
                if(display_po != display_re)
                    $display ("ERROR!, la salida no coincide con el valor esperado en, time=%0t", $time);  
                                                  
        end //fin del else reset_pi
    end// fin del always clock
    */
    

endmodule
