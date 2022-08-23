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


module top_module_7seg_v2(

    input   logic               clk_100Mhz_pi,
                                reset_pi,
                                control_reg,
    output  logic   [6 : 0]     display_po,
                    [7 : 0]     display_select_po
    );
    
    logic           clk_10Mhz;
    logic           clock_2s;
    
    logic [31 : 0]  display_re;
    logic [31 : 0]  display;
    

    clk_wiz_0 instance_name(
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
    
    //FUNCIONA (BORRAR ESTE COMENTARIO)
    
    //modulo generador de numeros
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
    
    //controla y genera los segmentos del display
 module_seg7_control seg7_control(
              
        .clk_10Mhz_i(clk_10Mhz),        
        .reset_i(reset_pi),           
        .display_i(display_re),        
        .display_o(display_po),         
        .display_select_o(display_select_po)                    
    
    );

    
endmodule
