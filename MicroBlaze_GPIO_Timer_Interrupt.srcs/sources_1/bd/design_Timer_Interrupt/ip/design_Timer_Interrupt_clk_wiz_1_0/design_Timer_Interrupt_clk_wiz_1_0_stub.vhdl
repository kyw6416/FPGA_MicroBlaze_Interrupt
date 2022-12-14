-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Oct 21 10:50:10 2022
-- Host        : 603-21 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/MicroBlaze_GPIO_Timer_Interrupt/MicroBlaze_GPIO_Timer_Interrupt.srcs/sources_1/bd/design_Timer_Interrupt/ip/design_Timer_Interrupt_clk_wiz_1_0/design_Timer_Interrupt_clk_wiz_1_0_stub.vhdl
-- Design      : design_Timer_Interrupt_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_Timer_Interrupt_clk_wiz_1_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end design_Timer_Interrupt_clk_wiz_1_0;

architecture stub of design_Timer_Interrupt_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
