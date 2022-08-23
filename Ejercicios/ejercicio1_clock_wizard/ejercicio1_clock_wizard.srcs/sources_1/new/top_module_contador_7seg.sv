`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 15.08.2022 02:59:44
// Design Name: 
// Module Name: top_module_contador_7seg
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


module top_module_contador_7seg(

    input   logic               clk_100Mhz_pi,
                                reset_pi,
    output  logic   [6 : 0]     display_po,
                    [7 : 0]     display_select_po
    );
    
    logic           clk_10Mhz;
    logic           clock_catodo_en;
    logic [2 : 0]   select_anodo;
    
    logic [3 : 0]   unidades,
                    decenas,
                    centenas,
                    uni_millar,
                    dec_millar,
                    cen_millar,
                    uni_millon,
                    dec_millon;
    
    clk_wiz_0 instance_name(
    // Clock out ports
    .CLK_10MHZ(clk_10Mhz),     // output CLK_10MHZ
    // Status and control signals
    .reset(reset_pi), // input reset
   // Clock in ports
    .CLK_100MHZ(clk_100Mhz_pi)
    );
    
    
    //clock para control del catodo
    module_clock_catodo module_clock_catodo(
    
        .clk_10Mhz_i(clk_10Mhz),
        .reset_i(reset_pi),
        .clock_catodo_o(clock_catodo_en) 
    
    );
    
    //control que mostrar en el catodo
    module_digitos digitos(
        
        .clk_10Mhz(clk_10Mhz),
        .clock_catodo_en(clock_catodo_en),    
        .reset(reset_pi),       
        .unidades(unidades),    
        .decenas(decenas),     
        .centenas(centenas),    
        .uni_millar(uni_millar),  
        .dec_millar(dec_millar),  
        .cen_millar(cen_millar),  
        .uni_millon(uni_millon),  
        .dec_millon(dec_millon)  
                 
    );
    
    //controla y genera los segmentos del display
    module_seg7_control seg7_control(
              
        .clk_10Mhz_i(clk_10Mhz),        
        .reset_i(reset_pi),           
        .display_i({dec_millon, uni_millon, cen_millar, dec_millar, 
                    uni_millar, centenas, decenas, unidades}),        
        .display_o(display_po),         
        .display_select_o(display_select_po)                    
    
    );
 
endmodule