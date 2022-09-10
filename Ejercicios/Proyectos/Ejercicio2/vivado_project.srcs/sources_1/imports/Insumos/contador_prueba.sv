module contador_prueba(
    input logic         clk, 
    input logic         rst_n_i, 
    input logic         en_i, 
    output logic [7:0]  conta);

//para detectar el flanco de la se�al en_i
logic [1:0] registro_en_r;

always_ff@(posedge clk) begin
    registro_en_r <= {registro_en_r[0], en_i};
end

always_ff@(posedge clk) begin
    if(!rst_n_i) conta <= 0;
    else begin
       //detectando s�lo el flanco positivo de en_i 
       if(registro_en_r == 2'b01) begin conta <= conta + 8'd1;
       //sal_tb <= 'b1;
       end
    end
end

endmodule
