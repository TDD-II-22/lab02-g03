`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 14.08.2022 21:07:38
// Design Name: 
// Module Name: module_digitos
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
                                
    output  logic   [31 : 0]    digitos_o
    
    );
    
    
    logic   [3 : 0]             unidades      = 0,
                                decenas       = 0,
                                centenas      = 0,
                                uni_millar    = 0,
                                dec_millar    = 0,
                                cen_millar    = 0,
                                uni_millon    = 0,
                                dec_millon    = 0;
    
    
    //control unidades   
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            unidades <= 0;
        else
            if(clock_catodo_en_i) begin
            
                if(unidades == 9)
                    unidades <= 0;
                else
                    unidades <= unidades + 1;

            end
        
                
    //control decenas   
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            decenas <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades == 9)
                    if(decenas == 9)
                        decenas <= 0;
                    else    
                        decenas <= decenas + 1;

            end
        
    //Nota no hay else, por lo tanto si esta condición no se cumple se va a generar memoria
        //es decir, se va a mantener el ultimo dato guardado (lo cual es deseable)
    
    //control centenas   
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            centenas  <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades == 9 && decenas == 9)
            
                    if(centenas == 9)
                        centenas <= 0;
                    else    
                        centenas <= centenas + 1;
         
            end
                       
    //control unidades de millar  
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            uni_millar  <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades == 9 && decenas == 9 && centenas == 9)
            
                    if(uni_millar == 9)
                        uni_millar <= 0;
                    else    
                        uni_millar <= uni_millar + 1;

            end
          
    
    //control decenas de millar  
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            dec_millar  <= 0;
        else
        
        if(clock_catodo_en_i) begin
            
            if (unidades    == 9 && decenas == 9 && centenas == 9 &&
                uni_millar  == 9)
            
                if(dec_millar == 9)
                    dec_millar <= 0;
                else    
                    dec_millar <= dec_millar + 1;

        end         
    
    //control centenas de millar  
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            cen_millar  <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades    == 9 && decenas     == 9 && centenas == 9 &&
                    uni_millar  == 9 && dec_millar  == 9)
            
                    if(cen_millar   == 9)
                        cen_millar  <= 0;
                    else    
                        cen_millar <= cen_millar + 1;

            end
             
    //control unidades de millon
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            uni_millon  <= 0;
        else
        
            if(clock_catodo_en_i) begin
            
                if (unidades    == 9 && decenas     == 9 && centenas    == 9 &&
                    uni_millar  == 9 && dec_millar  == 9 && cen_millar  == 9)
            
                    if(uni_millon  == 9)
                        uni_millon <= 0;
                    else    
                        uni_millon <= uni_millon + 1;

            end
        

    //control unidades de millon
    always_ff @(posedge clk_10Mhz_i)      
        if(reset_i)
            dec_millon  <= 0;
        else
        
        if(clock_catodo_en_i) begin
            
          if (unidades    == 9 && decenas     == 9 && centenas    == 9 &&
              uni_millar  == 9 && dec_millar  == 9 && cen_millar  == 9 &&
              uni_millon  == 9)
            
              if(dec_millon == 9)
                 dec_millon <= 0;
              else    
                 dec_millon <= dec_millon + 1;

        end        
 
    assign digitos_o = {dec_millon, uni_millon, cen_millar, dec_millar, 
                        uni_millar, centenas,   decenas,    unidades};
endmodule
