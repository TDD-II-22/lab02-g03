module contador_prueba(
    input logic         clk, 
    input logic         rst_n_i, 
    input logic         en_i, 
    //output logic        sal_tb,
    output logic [7:0]  conta);

//para detectar el flanco de la señal en_i
logic [1:0] registro_en_r;

always_ff@(posedge clk) begin
    registro_en_r <= {registro_en_r[0], en_i};
end

always_ff@(posedge clk) begin
    if(!rst_n_i) conta <= 0;
    else begin
       //detectando sólo el flanco positivo de en_i 
       if(registro_en_r == 2'b01) begin conta <= conta + 8'd1;
       //sal_tb <= 'b1;
       end
    end
end

endmodule


 /*   always_ff @(posedge clk_10Mhz_i)      
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
                        uni_millar, centenas,   decenas,    unidades}; */