-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Aug 24 08:23:38 2022
-- Host        : DESKTOP-LUJVCA8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/TDD/lab02-g03/Teclado/wizard_clock_10MHz/wizard_clock_10MHz.srcs/sources_1/ip/clk_wiz_10MHZ/clk_wiz_10MHZ_stub.vhdl
-- Design      : clk_wiz_10MHZ
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_10MHZ is
  Port ( 
    clk_out10MHz : out STD_LOGIC;
    clk_in100MHz : in STD_LOGIC
  );

end clk_wiz_10MHZ;

architecture stub of clk_wiz_10MHZ is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out10MHz,clk_in100MHz";
begin
end;
