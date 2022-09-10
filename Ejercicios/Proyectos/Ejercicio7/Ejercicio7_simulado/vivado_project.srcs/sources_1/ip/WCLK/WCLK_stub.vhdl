-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Aug 26 08:48:48 2022
-- Host        : Andrey-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top WCLK -prefix
--               WCLK_ WCLK_stub.vhdl
-- Design      : WCLK
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WCLK is
  Port ( 
    CLK_10MHZ : out STD_LOGIC;
    locked : out STD_LOGIC;
    CLK_100MHZ : in STD_LOGIC
  );

end WCLK;

architecture stub of WCLK is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK_10MHZ,locked,CLK_100MHZ";
begin
end;
