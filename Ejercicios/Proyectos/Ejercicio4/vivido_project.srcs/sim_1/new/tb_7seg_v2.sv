`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC 
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 27.08.2022 14:35:19
// Design Name: 
// Module Name: tb_7seg_v2
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


module tb_7seg_v2;

    logic                   clk_100Mhz_i,
                            clk_10Mhz,
                            locked,
                            reset_i,
                            control_reg,
                            flag,
                            flag_control,
                            flanco,
                            delay;
                        
    logic       [2 : 0]     counter,
                            counter_digito;
                                            
    logic       [31 : 0]    display;
    
    logic       [6 : 0]     display_o,
                            display_ver;
    
    logic       [7 : 0]     display_select_o,
                            display_select_ver;

    top_simulate_7seg_v2 top_7seg_v2(

    .clk_100Mhz_pi          (clk_100Mhz_i),
    .reset_pi               (reset_i),
    .control_reg            (control_reg),
    .display                (display),
    .display_po             (display_o),
    .display_select_po      (display_select_o),
    .locked                 (locked),
    .clk_10Mhz              (clk_10Mhz)
    );
    
    //condiciones iniciale y generar clock
    initial begin
        //declaracion de variables
        control_reg         = 0;
        reset_i             = 1;
        clk_100Mhz_i        = 0;
        counter             = 0;
        flanco              = 0;
        counter_digito      = 0;
        display_ver         = 0;
        flag                = 0;
        display_select_ver  = 0;
        flag_control        = 0;
        display             = 0;
        delay               = 0;
        //generate clock
        forever #5 clk_100Mhz_i = ~clk_100Mhz_i; 
        
    end
  
    //aplicar reset
    always @(posedge locked) begin
        #50;
        reset_i <= 0;     
    end
    
    //generar write enable del registro
    always @(posedge clk_10Mhz) begin
    
        if(locked) begin 
            #20_000;
            control_reg = 1;
            #20_000;
            control_reg = 0;         
        end 
        
    end
    
    //generar numeros aleatorios
    always @(posedge clk_100Mhz_i) begin
    
        if(locked) begin

            if(!flag_control) begin
            
                display <= 32'hda1e_bebe;  
                #10_000;
                flag_control <= 1;
                delay <= ~delay;
            
            end 
            
            repeat(50)begin
               #10_000;
               delay <= ~delay;   
               if(control_reg) begin
                    display         <= display;
                    flag_control    <= 1; 
                end else begin               
                    display         <= {$random} %32'hffff_ffff;   
                end
                 
            end

        end
    end
    
    //generar flancos de reloj "artificial" para verificacion
    always @(posedge clk_10Mhz) begin
    
        if(locked) begin
        
            if(!flag) begin
                flag <= 1;
            end else begin
                if(counter == 2) begin       
                    counter <= 0;
                    flanco  <= ~flanco;
                end else begin
                    counter <= counter + 1;
                end
            end 
                     
        end 
        
    end
    
    always @(posedge flanco) begin
      
        case(counter_digito)
            0: display_ver = comprobador_display(display[3 : 0]);
            1: display_ver = comprobador_display(display[7 : 4]);
            2: display_ver = comprobador_display(display[11 : 8]);
            3: display_ver = comprobador_display(display[15 : 12]);
            4: display_ver = comprobador_display(display[19 : 16]);
            5: display_ver = comprobador_display(display[23 : 20]);
            6: display_ver = comprobador_display(display[27 : 24]);
            7: display_ver = comprobador_display(display[31 : 28]);
        endcase
        
        case(counter_digito)
            3'h0: display_select_ver = 8'b1111_1110;
            3'h1: display_select_ver = 8'b1111_1101;
            3'h2: display_select_ver = 8'b1111_1011;
            3'h3: display_select_ver = 8'b1111_0111;
            3'h4: display_select_ver = 8'b1110_1111;
            3'h5: display_select_ver = 8'b1101_1111;
            3'h6: display_select_ver = 8'b1011_1111;
            3'h7: display_select_ver = 8'b0111_1111;
       endcase 
        
        if(display_o != display_ver) 
            $display ("ERROR!, Se registro un dato catodo incorrecto, time=%0t", $time);
            
        if(display_select_o != display_select_ver) 
            $display ("ERROR!, Se registro un dato anodo incorrecto, time=%0t", $time);
        
        if(counter_digito == 7)
            counter_digito = 0;
        else
            counter_digito = counter_digito + 1;
       
    end
    
    function [6 : 0] comprobador_display (input [3 : 0] display);
        
        logic [6 : 0] fun_display;
        
        case(display)
                        4'h0: fun_display = 7'b100_0000;    //CERO
                        4'h1: fun_display = 7'b111_1001;    //UNO
                        4'h2: fun_display = 7'b010_0100;    //DOS
                        4'h3: fun_display = 7'b011_0000;    //TRES
                        4'h4: fun_display = 7'b001_1001;    //CUATRO
                        4'h5: fun_display = 7'b001_0010;    //CINCO
                        4'h6: fun_display = 7'b000_0010;    //SEIS
                        4'h7: fun_display = 7'b111_1000;    //SIETE
                        4'h8: fun_display = 7'b000_0000;    //OCHO
                        4'h9: fun_display = 7'b001_1000;    //NUEVE
                        4'ha: fun_display = 7'b000_1000;    //A
                        4'hb: fun_display = 7'b000_0011;    //B
                        4'hc: fun_display = 7'b100_0110;    //C
                        4'hd: fun_display = 7'b010_0001;    //D
                        4'he: fun_display = 7'b000_0110;    //E
                        4'hf: fun_display = 7'b000_1110;    //F
        endcase    
        
        return fun_display;
        
    endfunction   
 
endmodule
