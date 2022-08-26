`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 14.08.2022 21:07:38
// Design Name: 
// Module Name: module_generate_1khz
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


module module_digitos(
    
    input   logic               clk_10Mhz_i,    
                                clock_catodo_en_i,
                                reset_i,
    output  logic   [3 : 0]     unidades_i,
                    [3 : 0]     decenas_i,
                    [3 : 0]     centenas_i,
                    [3 : 0]     uni_millar_i,
                    [3 : 0]     dec_millar_i,
                    [3 : 0]     cen_millar_i,
                    [3 : 0]     uni_millon_i,
                    [3 : 0]     dec_millon_i
    );
    
    //control unidades   
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            unidades_i <= 0;
        else
            if(clock_catodo_en_i) begin
            
                if(unidades_i == 9)
                    unidades_i <= 0;
                else
                    unidades_i <= unidades_i + 1;

            end
        
                
    //control decenas   
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            decenas_i <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades_i == 9)
                    if(decenas_i == 9)
                        decenas_i <= 0;
                    else    
                        decenas_i <= decenas_i + 1;

            end
        
    //Nota no hay else, por lo tanto si esta condición no se cumple se va a generar memoria
        //es decir, se va a mantener el ultimo dato guardado (lo cual es deseable)
    
    //control centenas   
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            centenas_i  <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades_i == 9 && decenas_i == 9)
            
                    if(centenas_i == 9)
                        centenas_i <= 0;
                    else    
                        centenas_i <= centenas_i + 1;
         
            end
                       
    //control unidades de millar  
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            uni_millar_i  <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades_i == 9 && decenas_i == 9 && centenas_i == 9)
            
                    if(uni_millar_i == 9)
                        uni_millar_i <= 0;
                    else    
                        uni_millar_i <= uni_millar_i + 1;

            end
          
    
    //control decenas de millar  
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            dec_millar_i  <= 0;
        else
        
        if(clock_catodo_en_i) begin
            
            if (unidades_i    == 9 && decenas_i == 9 && centenas_i == 9 &&
                uni_millar_i  == 9)
            
                if(dec_millar_i == 9)
                    dec_millar_i <= 0;
                else    
                    dec_millar_i <= dec_millar_i + 1;

        end         
    
    //control centenas de millar  
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            cen_millar_i  <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades_i    == 9 && decenas_i     == 9 && centenas_i == 9 &&
                    uni_millar_i  == 9 && dec_millar_i  == 9)
            
                    if(cen_millar_i == 9)
                        cen_millar_i <= 0;
                    else    
                        cen_millar_i <= cen_millar_i + 1;

            end
             
    //control unidades de millon
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            uni_millon_i  <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades_i    == 9 && decenas_i     == 9 && centenas_i    == 9 &&
                    uni_millar_i  == 9 && dec_millar_i  == 9 && cen_millar_i  == 9)
            
                    if(uni_millon_i == 9)
                        uni_millon_i <= 0;
                    else    
                        uni_millon_i <= uni_millon_i + 1;

            end
        

    //control unidades de millon
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            dec_millon_i  <= 0;
        else
        
        if(clock_catodo_en_i) begin
            
          if (unidades_i    == 9 && decenas_i     == 9 && centenas_i    == 9 &&
              uni_millar_i  == 9 && dec_millar_i  == 9 && cen_millar_i  == 9 &&
              uni_millon_i  == 9)
            
              if(dec_millon_i == 9)
                 dec_millon_i <= 0;
              else    
                 dec_millon_i <= dec_millon_i + 1;

        end        
 
endmodule
