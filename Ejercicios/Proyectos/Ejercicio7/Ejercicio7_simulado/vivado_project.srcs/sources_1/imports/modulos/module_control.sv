`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora 
// 
// Create Date: 01.09.2022 23:08:29
// Design Name: 
// Module Name: module_control_tecla
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


module module_control(
    
    input   logic               clk_i,
                                rst_i,
                    [2 : 0]     control_save_i,
                    [3 : 0]     teclado_i,
    output  logic               led_error_o,
                    [2 : 0]     rgb_o,
                    [4 : 0]     operacion_o,
                                addr_rs1_o,
                                addr_rs2_o,
                                contador_r
                                                      
    );
    
    //paremetros
    parameter                   COUNT   = 10_000,
                                BITS    = 14;
    
    
    
    //variables internas        
    logic           [3 : 0]     contador_full = 1;
    logic           [4 : 0]     contador = 1;
    logic           [2 : 0]     led_operacion;
    
    module_leds_rgb #(
    
        .COUNT      (COUNT),
        .BITS       (BITS))
        
    leds_rgb_control(
    
        .clk_i      (clk_i),
        .rst_i      (rst_i),
        .color_i    (led_operacion),
        .rgb_o      (rgb_o)
    
    );
    
    
    
    
    //logica secuencial
    always_ff @(posedge clk_i) begin
             
            if(rst_i) begin//reset positivo
            
                addr_rs1_o          <= 0;
                addr_rs2_o          <= 0;
                contador_full       <= 1;
                contador            <= 1;
                led_operacion       <= 0;
                led_error_o         <= 0;
                
            end else begin

                if(contador_full == 11) begin
                   contador        <= 1;
                   contador_full   <= 1;
                end       
                                
                case(control_save_i)                                       
                    1:
                        begin
                            addr_rs2_o    <= contador;
                            contador      <= contador + 1;      
                        end
                    2:
                        begin
                            operacion_o         <= teclado_i;
                            led_error_o         <= 0;
                            case(teclado_i)
                            
                               4'ha:  led_operacion = 5;
                               4'hb:  led_operacion = 6;
                               4'hc:  led_operacion = 2;
                               4'hd:  led_operacion = 3;
                               4'hf:  led_operacion = 4;
        
                            endcase
                        end
                    3:
                        begin
                            addr_rs1_o    <= addr_rs2_o;
                            addr_rs2_o    <= contador; 
                            contador      <= contador + 1;      
                        end
                    4:
                        begin
                            led_operacion <= 0;
                            addr_rs2_o    <= contador; 
                            contador      <= contador + 1;
                            contador_full <= contador_full + 1;  
                        end
                    5:
                        begin
                            addr_rs2_o    <= 1; 
                            contador      <= 1;
                            contador_full <= 1;
                        end
                    6:
                        begin
                            led_error_o <= 1;      
                        end
                 endcase
              
            end//end rst              
   
    end//end always
    
    assign contador_r = contador;
    
endmodule
