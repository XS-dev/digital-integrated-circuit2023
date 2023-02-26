-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sat Feb 25 19:12:33 2023
-- Host        : XS-WIN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               l:/FPGA/ICIG/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_multiplier_0_0/design_1_multiplier_0_0_stub.vhdl
-- Design      : design_1_multiplier_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_multiplier_0_0 is
  Port ( 
    InputX : in STD_LOGIC_VECTOR ( 15 downto 0 );
    InputY : in STD_LOGIC_VECTOR ( 15 downto 0 );
    product : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_multiplier_0_0;

architecture stub of design_1_multiplier_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "InputX[15:0],InputY[15:0],product[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "multiplier,Vivado 2021.2";
begin
end;
