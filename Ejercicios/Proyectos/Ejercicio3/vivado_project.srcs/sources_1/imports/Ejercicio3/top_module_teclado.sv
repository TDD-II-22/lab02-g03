`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 16:09:23
// Design Name: 
// Module Name: top_module_teclado
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


module top_module_teclado(
    input    logic              clk,
                                rst,
                                fila1_i,
                                fila2_i,
                                fila3_i,
                                fila4_i,
                                E1_i,
                                E2_i,
    output    logic    [1:0]    counter_o,
                       [3:0]    deco_o,
                                led_det_o,
                                locked
    );
    
    logic    clk_10Mhz,
             clk_10kHz,
             clk_leds,
             key_det,
             deb1,
             deb2,
             deb3,
             deb4;
             
    logic    [3:0]    deco_ins;
             
    WCLK clk_wiz(
    // Clock out ports
        .clk_out1(clk_10Mhz),     // output CLK_10MHZ
    // Status and control signals
        .locked(locked),       // output locked
   // Clock in ports
        .clk_in1(clk)
    );
    
    
    module_clock_catodo clk_div(
        .clk_10Mhz_i       (clk_10Mhz),
        .reset_i           (rst),
        .clock_catodo_o    (clk_10kHz)
        );
    
    module_clock_leds clk_lds(
        .clk_10Mhz_i       (clk_10Mhz),
        .reset_i           (rst),
        .clock_catodo_o    (clk_leds)
        );    
    
    module_2bit_counter ctr1(
        .clk        (clk_10kHz),
        .en_i       (key_det),
        .conta_o    (counter_o)
        );
        
    module_debouncer db1(
        .clk_10MHz    (clk_10Mhz),
        .bt1          (fila1_i),
        .signal       (deb1)
        );
        
    module_debouncer db2(
        .clk_10MHz    (clk_10Mhz),
        .bt1          (fila2_i),
        .signal       (deb2)
        );   
 
    module_debouncer db3(
        .clk_10MHz    (clk_10Mhz),
        .bt1          (fila3_i),
        .signal       (deb3)
        );   
    
    module_debouncer db4(
        .clk_10MHz    (clk_10Mhz),
        .bt1          (fila4_i),
        .signal       (deb4)
        ); 
        
    key_detector kd1(
        .deb1_i    (deb1),
        .deb2_i    (deb2),
        .deb3_i    (deb3),
        .deb4_i    (deb4),
        .clk       (clk_10kHz),
        .det_o     (key_det)
        );    
        
    module_catodo c1 (
        .EN_i         (key_det),
        .D_i          (counter_o[1]),
        .clk          (clk_10Mhz),
        .clk_slw_i    (clk_leds),
        .Q_o          (deco_ins[3])
        );
        
    module_catodo c2 (
        .EN_i         (key_det),
        .D_i          (counter_o[0]),
        .clk          (clk_10Mhz),
        .clk_slw_i    (clk_leds),
        .Q_o          (deco_ins[2])
        );        

    module_catodo E1 (
        .EN_i         (key_det),
        .D_i          (E1_i),
        .clk          (clk_10Mhz),
        .clk_slw_i    (clk_leds),
        .Q_o          (deco_ins[1])
        );               

    module_catodo E2 (
        .EN_i         (key_det),
        .D_i          (E2_i),
        .clk          (clk_10Mhz),
        .clk_slw_i    (clk_leds),
        .Q_o          (deco_ins[0])
        );
             
    module_key_encoding (
        .entradas_in    (deco_ins),
        .salidas_o      (deco_o)
        );
endmodule
