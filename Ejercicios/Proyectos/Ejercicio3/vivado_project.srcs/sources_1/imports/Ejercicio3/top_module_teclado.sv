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
                                rst_i,
                                fila1_i,
                                fila2_i,
                                fila3_i,
                                fila4_i,
                                E1_i,
                                E2_i,
    output    logic    [1:0]    counter_o,
                       [3:0]    deco_o,
                                led_det_o
    );
    
    logic    clk_10Mhz,
             en_10kHz,
             locked,
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
    
    module_clock_catodo #(5000, 25) en10kHz(
        .clk_10MHz_i       (clk),
        .reset_i           (rst_i),
        .clock_catodo_o    (en_10kHz)
        );
    
    module_2bit_counter u1(
        .clk        (clk_10Mhz),
        .en_i       (en_10kHz),
        .rst_i      (rst_i),
        .conta_o    (counter_o)
        );
    
    module_debouncer db1(
        .clk         (clk_10Mhz),
        .bt1_i       (fila1_i),
        .rst_i       (rst_i),
        .signal_o    (deb1)
        );
        
    
    module_debouncer db2(
        .clk         (clk_10Mhz),
        .bt1_i       (fila2_i),
        .rst_i       (rst_i),
        .signal_o    (deb2)
        );
        
        
    module_debouncer db3(
        .clk         (clk_10Mhz),
        .bt1_i       (fila3_i),
        .rst_i       (rst_i),
        .signal_o    (deb3)
        );
        
    module_debouncer db4(
        .clk         (clk_10Mhz),
        .bt1_i       (fila4_i),
        .rst_i       (rst_i),
        .signal_o    (deb4)
        );
        
        
    key_detector(
        .deb1_i    (db1),
        .deb2_i    (db2),
        .deb3_i    (db3),
        .deb4_i    (db4),
        .det_o     (key_det)
        );
    
    assign led_det_o = key_det;
    
    
        
        
    
endmodule
