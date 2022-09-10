`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 01.09.2022 21:18:19
// Design Name: 
// Module Name: top_maquina_estado_calcu
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


module top_maquina_estado_calcu_con_teclado2(
    input logic                                 clk_100Mhz_pi,
                                                rst_pi,
                                                sw_mode_pi,
                    [1 : 0]                     E1_i,
                    [3 : 0]                     fila_i,
    /*output logic                              locked_po,*/    //PARA SIMULACION                 
    output logic                                led_error_po,
                    [1 : 0]                     counter_o,
                    [6 : 0]                     display_po,
                    [7 : 0]                     display_select_po,
                    [2 : 0]                     rgb_po    
                                      
    );
    
    
    //IMPORTAR PAQUETES
    import                                      pkg_bits::*;
    
    //DEFICION DE MEMORIA
    //--------------------------------------------------------------------------------------------------------
    
    //declaracion de estados
    parameter                                   bits_codificacion   = 3;
    logic           [bits_codificacion - 1 : 0] state, 
                                                next_state;
    
    //defincion de estados
    parameter                                   WAIT_DIGIT          = 3'b000,
                                                WAIT_OP             = 3'b001,       //espera digito
                                                WAIT_DIGIT2         = 3'b010,
                                                WAIT_E              = 3'b011,       //espera operador
                                                SAVE                = 3'b100,       //espera enter
                                                SWEPT               = 3'b101,       //lee el registro
                                                RESET_SWEPT         = 3'b111,
    
                                                COUNT_ANODO         = 10_000,       //FRECUENCIA DEL ANODO DESEADA => clk_10Mhz / frecuencia(1KHz)
                                                BITS_ANODO          = 14,
                                                
                                                COUNT_CATODO        = 10_000_000,
                                                BITS_CATODO           = 24;
                                                
                                                //CLOCK PARA SIMULACION
                                               /* COUNT_CATODO        = 10,
                                                BITS_CATODO         = 4;*/
                                                           
    
    
    
    //VARIABLES INTERNA
    //--------------------------------------------------------------------------------------------------------
    
    //variables de un bit
    logic                                       clk_10Mhz,
                                                selec_mux,    
                                                en_display,
                                                en_registro,
                                                desbloqueo_barrido,
                                                en_tecla_debounce,
                                                en_tecla;
    
    //variables de 3 bits                                            
    logic               [2 : 0]                 control_save;
    
    logic               [3 : 0]                 teclado_pi;
    
    //variable definada por packege
    bits_t                                      data_reg,
                                                resultado_ALU;
     
    //varaible de 5 bits                                           
    logic               [4 : 0]                 operacion,                                           
                                                addr_rs1,
                                                addr_rs2,
                                                contador_r;
    
    //variable defiida por packege                                       
    bitsh_t                                     addr_rs1_calc,
                                                addr_rs2_calc,
                                                addr_rs1_swep,
                                                addr_rs2_swep;
    //variable defiida por packege                                                                                         
    bits_t                                      out_reg1,
                                                out_reg2;
    
    //INSTANCIAS
    //--------------------------------------------------------------------------------------------------------
    
    //generar reloj
    WCLK generate_clock_10Mhz(
        // Clock out ports
        .CLK_10MHZ              (clk_10Mhz),            // output CLK_10MHZ
        // Status and control signals
        .locked                 (locked_po),//QUITAR                 // output locked
        // Clock in ports
        .CLK_100MHZ             (clk_100Mhz_pi)         // input CLK_100MHZ
    );   
    
    
    //MODO CALCULADORA
    module_mode_calcu mode_calculadora(
    .clk_i                      (clk_10Mhz),
    .rst_i                      (rst_pi),
    .selec_mux_i                (selec_mux),
    .control_save_i             (control_save),
    .teclado_i                  (teclado_pi),
    .ope_a                      (out_reg1),
    .ope_b                      (out_reg2),
    .rgb_o                      (rgb_po),
    .led_error_o                (led_error_po),
    .addr_rs1                   (addr_rs1_calc),
    .addr_rs2                   (addr_rs2_calc),
    .contador_r                 (contador_r),
    .data_reg                   (data_reg)                         
    );
    
    //REALIZA EL BARRIDO
    
    //modulo de la instancia
    module_mode_swept #(
        
        //parametrizacion
        .COUNT_CATODO           (COUNT_CATODO), 
        .BITS_CATODO            (BITS_CATODO))
    
    //nombre de la instancia    
    barrido(
        
        //variables internas
        .clk_i                  (clk_10Mhz),
        .rst_i                  (rst_pi),
        .desbloqueo_barrido_i   (desbloqueo_barrido),
        .contador_r             (addr_rs2_swep)
                                 
    );
    
    //modulo registro de memoria
    module_memoria module_memoria_calcu(
    .clk_i                      (clk_10Mhz),
    .rst_i                      (rst_pi),
    .desbloqueo_barrido_i       (desbloqueo_barrido),
    //entradas modo calculadora     
    .we_calc_i                  (en_registro),
    .addr_rs1_calc_i            (addr_rs1_calc),
    .addr_rs2_calc_i            (addr_rs2_calc),
    .addr_rd_calc_i             (contador_r),
    .data_in_calc_i             (data_reg),  
    //entradas modo barrido    
    .addr_rs1_swep_i            (addr_rs1_swep),
    .addr_rs2_swep_i            (addr_rs2_swep),
    //salidas del modulo
    .rs1_o                      (out_reg1),
    .rs2_o                      (out_reg2)  
    );
    
   
    //controla y genera los segmentos del display
    
    //modulo de la instancia
    module_control7seg_calcu #(
                              
        //parametrizacion
        .COUNT_ANODO            (COUNT_ANODO),       
        .BITS_ANODO             (BITS_ANODO))     
    
    //nombre de la instancia
    seg7_control_calcu(                                   

         //entradas / salidas 
        .clk_i                  (clk_10Mhz),         
        .rst_i                  (rst_pi),
        .control_reg_i          (en_display),
        .display_i              ({16'h0,out_reg2}),                
        .display_o              (display_po),         
        .display_select_o       (display_select_po)                    
    
    );
    
    module_debounce debounce(
        .clk_i                  (clk_10Mhz),
        .rst_i                  (rst_pi),
        .btn_i                  (en_tecla_debounce),
        .btn_o                  (en_tecla)
            
    );
    
    
    //TECLADO
    
    top_module_teclado teclado(
        .clk_10Mhz              (clk_10Mhz),
        .rst_i                  (rst_pi),                           
        .fila1_i                (fila_i[0]),
        .fila2_i                (fila_i[1]),
        .fila3_i                (fila_i[2]),
        .fila4_i                (fila_i[3]),
        .E1_i                   (E1_i[0]),
        .E2_i                   (E1_i[1]),                              
        .led_det_o              (en_tecla_debounce),
        .counter_o              (counter_o),
        .deco_o                 (teclado_pi)
    );
    
    //MEMORIA
    //--------------------------------------------------------------------------------------------------------
    
    always_ff @(posedge clk_10Mhz) begin
        //reset positivo
        if(rst_pi)     state <= WAIT_DIGIT; 
        else           state <= next_state;
        
    end

    //CONTROL DE ESTADOS
    //--------------------------------------------------------------------------------------------------------
    
    always@(*) begin
        
        //reinicio de entradas
        en_display          = 1;
        selec_mux           = 0;
        en_registro         = 0;
        desbloqueo_barrido  = 0;
        control_save        = 0;
        case(state)          
             
            WAIT_DIGIT:
                begin
                    en_display    = 0;
                    if(en_tecla == 0 && sw_mode_pi == 1) begin
                        next_state                   = SWEPT;

                    end else begin
                    
                        if(en_tecla == 1 && sw_mode_pi == 0) begin                      
                            
                            if(teclado_pi < 10) begin
                                
                                en_registro         = 1;
                                control_save        = 1;     
                                next_state          = WAIT_OP;
                                
                            end else begin
  
                                next_state          = WAIT_DIGIT;  
                            
                            end//end compara teclado
                            
                        end else begin 
                                            
                            next_state              = WAIT_DIGIT;  
                                            
                        end//en se pulso boton
                        
                    end//end entrada con switch 1
                    
                end//end always
            
            WAIT_OP:
                begin
                    en_display    = 0;
                               
                    if(en_tecla) begin
                            
                        if(teclado_pi >= 10 && teclado_pi != 4'he) begin
                                                                             
                            control_save        = 2;//luces             
                            next_state          = WAIT_DIGIT2;
                                     
                        end else begin
                            
                            control_save        = 6;//luces
                            next_state          = WAIT_OP;  
                            
                        end//end compara teclado                             
                    
                    end else
                        next_state              = WAIT_OP;
                    
                end//end always
                
            WAIT_DIGIT2:
                begin
                    en_display    = 0;       
                    if(en_tecla) begin
                            
                        if(teclado_pi < 10) begin

                            en_registro         = 1;
                            control_save        = 3;
                            en_display          = 0; 
                            next_state          = WAIT_E;      
                                
                        end else begin
                            
                            next_state          = WAIT_DIGIT2;  
                            
                        end//end compara teclado  
                    
                    end else
                        next_state              = WAIT_DIGIT2;                     
   
                end

            WAIT_E:
                begin
                en_display    = 0;
                    if(en_tecla) begin
                            
                        if(teclado_pi == 4'he) begin
                             
                            next_state          = SAVE;    
                                
                        end else begin
                            
                            next_state          = WAIT_E;  
                            
                        end//end compara teclado  
                    
                    end else
                        next_state               = WAIT_E;

                end
                
            SAVE:
                begin
                    selec_mux                       = 1;         
                    en_registro                     = 1;
                    control_save                    = 4;
                    en_display                      = 0;                                  
                    next_state                      = WAIT_DIGIT;
                end
            
            SWEPT:
                begin
                    if (!sw_mode_pi) begin
                        control_save                = 5;
                        next_state                  = RESET_SWEPT;
                    end else begin
                        en_display                  = 0;
                        desbloqueo_barrido          = 1;
                        next_state                  = SWEPT;
                    end
                end
           
            RESET_SWEPT:
                begin
                        next_state                  = WAIT_DIGIT;             
                end
        endcase
          
    end
   
    
    
endmodule
