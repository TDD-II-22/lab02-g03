`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// File downloaded from http://www.nandland.com
///////////////////////////////////////////////////////////////////////////////
// Description: Simple Testbench for LFSR.v.  Set c_NUM_BITS to different
// values to verify operation of LFSR
///////////////////////////////////////////////////////////////////////////////

// https://www.nandland.com/vhdl/modules/lfsr-linear-feedback-shift-register.html

///////////////////////////////////////////////////////////////////////////////
// Versión modificada para Taller de digitales - I 2022
///////////////////////////////////////////////////////////////////////////////

module LFSR_TB ();
 
    parameter clock_cycle = 10;//periodo 10ns
    parameter half_cycle = clock_cycle/2;
    parameter delay_val=1;//1 ns delay de escritura
    
    
    
    
    reg Clk = 1'b0;
    reg Rst = 1'b0;
    reg r_Enable = 1'b0;
    
    wire [5-1:0] w_LFSR_Data;
    wire w_LFSR_Done;
    
    always @(*)
        #(half_cycle) Clk <= ~Clk; 
        
    task wait_clk(input integer num);
        repeat(num) begin
            @(posedge Clk); #(delay_val);
        end
    endtask
   
  LFSR_individual_test_top LFSR_inst
         (.i_Clk(Clk),
          .i_Rst(Rst),
          .i_Enable(r_Enable),
          .i_Seed_Data({5{1'b0}}), // Replication
          .o_LFSR_Data(w_LFSR_Data),
          .o_LFSR_Done(w_LFSR_Done)
          );
          
  initial begin 
    wait_clk(2);
    Rst=1;
    wait_clk(5);
    r_Enable=1;
    wait_clk(100);
    r_Enable=1;
    wait_clk(10);
    r_Enable=0;
    wait_clk(10);
    repeat(15) begin
        r_Enable=~r_Enable;
        wait_clk(1);
    end
    r_Enable=0;
    wait_clk(10);
    $finish;
  end
  
  
   
endmodule // LFSR_TB
