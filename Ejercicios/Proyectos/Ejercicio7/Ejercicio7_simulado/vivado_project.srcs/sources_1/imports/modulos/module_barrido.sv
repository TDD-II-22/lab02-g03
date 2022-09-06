`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2022 10:03:32
// Design Name: 
// Module Name: module_barrido
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


module module_barrido(
    
    input logic                                 clk_i,
                                                clock_1s,
                                                rst_i,
                                                desbloqueo_barrido_i,
    output          pkg_bits:: bitsh_t          contador_r 
    
    );
    
    //IMPORTAR PAQUETES
    import                                      pkg_bits::*;
    
    //VARIABLES INTERNA
    //-------------------------------------------------------------------------------------------------------- 
    logic           [3 : 0]     contador_full =  1,
                                flag_conta;
    bitsh_t                     contador = 1;
                                
    
    
    always_ff @(posedge clk_i) begin
        
        if(rst_i) begin
        
            contador        <= 1;
            contador_full   <= 1;
            flag_conta      <= 1;

        end else begin
        
            if(clock_1s) begin
            
                if(desbloqueo_barrido_i) begin
                     
                    contador      <= contador + 1;
             
                    if(contador_full == 10) begin
                    
                        if (flag_conta == 3) begin
                        
                            contador        <= 1;
                            contador_full   <= 1;
                            flag_conta      <= 1;
                        
                        end else begin
                        
                            flag_conta      <= flag_conta + 1;
                        
                        end
                        
                    end else begin
                    
                        if (flag_conta == 3) begin
                        
                            contador_full   <= contador_full + 1;
                            flag_conta      <= 1;
                        
                        end else begin
                        
                            flag_conta      <= flag_conta + 1;
                           
                        end
                    
                    end
                    
                    

                end else begin
                
                    contador        <= 1;
                    contador_full   <= 1;
                    flag_conta      <= 1;
                
                end //end desbloqueo
                
            end//end clock
        
        
        end//end reset 

    end//end always
    
    assign contador_r = contador;
    
endmodule
