`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2022 09:52:42
// Design Name: 
// Module Name: tb_teclado
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


module tb_teclado();
        logic             rst_i;
        logic             fila1_i;
        logic             fila2_i;
        logic             fila3_i;
        logic             fila4_i;
        logic             E1_i;
        logic             E2_i;
        logic    [1:0]    conta_i;
        logic    [3:0]    conc;                       
        logic    [1:0]    counter_o;
        logic    [3:0]    deco_o;
        logic             CLK_100MHZ;
        logic             CLK_10MHZ;
        logic    [3:0]    cont2;


    
    
    initial begin
        CLK_100MHZ = 0;
        CLK_10MHZ  = 0;
        cont2      = 0; 
    end
    always begin
        #5 CLK_100MHZ = ~CLK_100MHZ;
        if(CLK_100MHZ == 1)begin
            cont2 = cont2 + 1;
        end
        if(cont2 == 4'b0101)begin
            CLK_10MHZ = ~CLK_10MHZ;
            cont2 = 0;
        end
    end
    
    top_tb_teclado TEC(
        .clk        (CLK_100MHZ),
        .rst_i      (rst_i),
        .fila1_i    (fila1_i),
        .fila2_i    (fila2_i),
        .fila3_i    (fila3_i),
        .fila4_i    (fila4_i),
        .E1_i       (E1_i),
        .conta_i    (conta_i),
        .E2_i       (E2_i)
    );
    
    initial begin           
        rst_i         =    1'b0;
        fila1_i       =    1'b0;
        fila2_i       =    1'b1;
        fila3_i       =    1'b1;
        fila4_i       =    1'b1;
        E1_i          =    1'b1;
        E2_i          =    1'b1;
        conta_i[0]    =    1'b1;
        conta_i[1]    =    1'b1;
        #100;
    end
    
    
    
endmodule
