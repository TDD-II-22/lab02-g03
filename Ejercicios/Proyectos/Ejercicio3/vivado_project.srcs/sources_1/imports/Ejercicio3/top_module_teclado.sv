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
                  
        
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk_10Mhz),            // output CLK_10MHZ
        // Status and control signals
        .locked                 (locked),                     // output locked
        // Clock in ports
        .CLK_100MHZ             (clk)         // input CLK_100MHZ
    );    
    
    module_clock_catodo #(5000, 25) en10kHz(
        .clk_10Mhz_i       (clk),
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
        .deb1_i    (deb1),
        .deb2_i    (deb2),
        .deb3_i    (deb3),
        .deb4_i    (deb4),
        .det_o     (key_det)
        );
    
    assign led_det_o = key_det;
    
    module_DFF ffc0(
        .clk   (clk),
        .D     (counter_o[0]),
        .EN    (en_10kHz),
        .Q     (deco_ins[0])
        );
        
    module_DFF ffc1(
        .clk   (clk),
        .D     (counter_o[1]),
        .EN    (en_10kHz),
        .Q     (deco_ins[1])
        );
        
    module_DFF ffe1(
        .clk   (clk),
        .D     (E1_i),
        .EN    (en_10kHz),
        .Q     (deco_ins[2])
        );
        
    module_DFF ffe2(
        .clk   (clk),
        .D     (E2_i),
        .EN    (en_10kHz),
        .Q     (deco_ins[3])
        );
        
    module_key_encoding KE(
        .entradas_in    (deco_ins),
        .salidas_o      (deco_o)
        );
        
    
    
        
        
    
endmodule
