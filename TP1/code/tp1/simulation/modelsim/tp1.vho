-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/10/2018 14:15:34"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tp1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	sw3_0 : IN std_logic_vector(3 DOWNTO 0);
	sw7_4 : IN std_logic_vector(3 DOWNTO 0);
	sw11_8 : IN std_logic_vector(3 DOWNTO 0);
	sw15_12 : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0)
	);
END tp1;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw15_12[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw15_12[1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw15_12[2]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw15_12[3]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw3_0[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw3_0[1]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw3_0[2]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw3_0[3]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw7_4[0]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw7_4[1]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw7_4[2]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw7_4[3]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw11_8[0]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw11_8[1]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw11_8[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw11_8[3]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tp1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw3_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw7_4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw11_8 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw15_12 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \sw15_12[0]~input_o\ : std_logic;
SIGNAL \sw15_12[1]~input_o\ : std_logic;
SIGNAL \sw15_12[2]~input_o\ : std_logic;
SIGNAL \sw15_12[3]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \sw3_0[3]~input_o\ : std_logic;
SIGNAL \sw3_0[0]~input_o\ : std_logic;
SIGNAL \sw3_0[2]~input_o\ : std_logic;
SIGNAL \sw3_0[1]~input_o\ : std_logic;
SIGNAL \display|display0|displayValue[6]~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr0~0_combout\ : std_logic;
SIGNAL \sw7_4[3]~input_o\ : std_logic;
SIGNAL \sw7_4[0]~input_o\ : std_logic;
SIGNAL \sw7_4[1]~input_o\ : std_logic;
SIGNAL \sw7_4[2]~input_o\ : std_logic;
SIGNAL \display|display4|displayValue[6]~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr0~0_combout\ : std_logic;
SIGNAL \sw11_8[1]~input_o\ : std_logic;
SIGNAL \sw11_8[2]~input_o\ : std_logic;
SIGNAL \sw11_8[3]~input_o\ : std_logic;
SIGNAL \sw11_8[0]~input_o\ : std_logic;
SIGNAL \display|display6|displayValue[6]~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr0~0_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk[0]~75_combout\ : std_logic;
SIGNAL \clk[1]~25_combout\ : std_logic;
SIGNAL \clk[1]~26\ : std_logic;
SIGNAL \clk[2]~27_combout\ : std_logic;
SIGNAL \clk[2]~28\ : std_logic;
SIGNAL \clk[3]~29_combout\ : std_logic;
SIGNAL \clk[3]~30\ : std_logic;
SIGNAL \clk[4]~31_combout\ : std_logic;
SIGNAL \clk[4]~32\ : std_logic;
SIGNAL \clk[5]~33_combout\ : std_logic;
SIGNAL \clk[5]~34\ : std_logic;
SIGNAL \clk[6]~35_combout\ : std_logic;
SIGNAL \clk[6]~36\ : std_logic;
SIGNAL \clk[7]~37_combout\ : std_logic;
SIGNAL \clk[7]~38\ : std_logic;
SIGNAL \clk[8]~39_combout\ : std_logic;
SIGNAL \clk[8]~40\ : std_logic;
SIGNAL \clk[9]~41_combout\ : std_logic;
SIGNAL \clk[9]~42\ : std_logic;
SIGNAL \clk[10]~43_combout\ : std_logic;
SIGNAL \clk[10]~44\ : std_logic;
SIGNAL \clk[11]~45_combout\ : std_logic;
SIGNAL \clk[11]~46\ : std_logic;
SIGNAL \clk[12]~47_combout\ : std_logic;
SIGNAL \clk[12]~48\ : std_logic;
SIGNAL \clk[13]~49_combout\ : std_logic;
SIGNAL \clk[13]~50\ : std_logic;
SIGNAL \clk[14]~51_combout\ : std_logic;
SIGNAL \clk[14]~52\ : std_logic;
SIGNAL \clk[15]~53_combout\ : std_logic;
SIGNAL \clk[15]~54\ : std_logic;
SIGNAL \clk[16]~55_combout\ : std_logic;
SIGNAL \clk[16]~56\ : std_logic;
SIGNAL \clk[17]~57_combout\ : std_logic;
SIGNAL \clk[17]~58\ : std_logic;
SIGNAL \clk[18]~59_combout\ : std_logic;
SIGNAL \clk[18]~60\ : std_logic;
SIGNAL \clk[19]~61_combout\ : std_logic;
SIGNAL \clk[19]~62\ : std_logic;
SIGNAL \clk[20]~63_combout\ : std_logic;
SIGNAL \clk[20]~64\ : std_logic;
SIGNAL \clk[21]~65_combout\ : std_logic;
SIGNAL \clk[21]~66\ : std_logic;
SIGNAL \clk[22]~67_combout\ : std_logic;
SIGNAL \clk[22]~68\ : std_logic;
SIGNAL \clk[23]~69_combout\ : std_logic;
SIGNAL \clk[23]~70\ : std_logic;
SIGNAL \clk[24]~71_combout\ : std_logic;
SIGNAL \clk[24]~72\ : std_logic;
SIGNAL \clk[25]~73_combout\ : std_logic;
SIGNAL clk : std_logic_vector(31 DOWNTO 0);
SIGNAL \display|display6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_sw3_0 <= sw3_0;
ww_sw7_4 <= sw7_4;
ww_sw11_8 <= sw11_8;
ww_sw15_12 <= sw15_12;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\display|display6|ALT_INV_WideOr0~0_combout\ <= NOT \display|display6|WideOr0~0_combout\;
\display|display4|ALT_INV_WideOr0~0_combout\ <= NOT \display|display4|WideOr0~0_combout\;
\display|display0|ALT_INV_WideOr0~0_combout\ <= NOT \display|display0|WideOr0~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|displayValue[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|displayValue[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display6|displayValue[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display6|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display6|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display6|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display6|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display6|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display6|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => clk(25),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => clk(23),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOIBUF_X115_Y62_N8
\sw3_0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw3_0(3),
	o => \sw3_0[3]~input_o\);

-- Location: IOIBUF_X115_Y62_N15
\sw3_0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw3_0(0),
	o => \sw3_0[0]~input_o\);

-- Location: IOIBUF_X115_Y61_N22
\sw3_0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw3_0(2),
	o => \sw3_0[2]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\sw3_0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw3_0(1),
	o => \sw3_0[1]~input_o\);

-- Location: LCCOMB_X114_Y62_N16
\display|display0|displayValue[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|displayValue[6]~0_combout\ = (!\sw3_0[3]~input_o\ & (!\sw3_0[1]~input_o\ & (\sw3_0[0]~input_o\ $ (\sw3_0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw3_0[3]~input_o\,
	datab => \sw3_0[0]~input_o\,
	datac => \sw3_0[2]~input_o\,
	datad => \sw3_0[1]~input_o\,
	combout => \display|display0|displayValue[6]~0_combout\);

-- Location: LCCOMB_X114_Y62_N6
\display|display0|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr5~0_combout\ = (\sw3_0[2]~input_o\ & (\sw3_0[0]~input_o\ $ (((\sw3_0[3]~input_o\) # (\sw3_0[1]~input_o\))))) # (!\sw3_0[2]~input_o\ & (\sw3_0[3]~input_o\ & (\sw3_0[0]~input_o\ & \sw3_0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw3_0[3]~input_o\,
	datab => \sw3_0[0]~input_o\,
	datac => \sw3_0[2]~input_o\,
	datad => \sw3_0[1]~input_o\,
	combout => \display|display0|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y62_N12
\display|display0|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr4~0_combout\ = (!\sw3_0[0]~input_o\ & ((\sw3_0[3]~input_o\ & (\sw3_0[2]~input_o\)) # (!\sw3_0[3]~input_o\ & (!\sw3_0[2]~input_o\ & \sw3_0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw3_0[3]~input_o\,
	datab => \sw3_0[0]~input_o\,
	datac => \sw3_0[2]~input_o\,
	datad => \sw3_0[1]~input_o\,
	combout => \display|display0|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y62_N30
\display|display0|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr3~0_combout\ = (\sw3_0[1]~input_o\ & ((\sw3_0[0]~input_o\ & ((\sw3_0[2]~input_o\))) # (!\sw3_0[0]~input_o\ & (\sw3_0[3]~input_o\ & !\sw3_0[2]~input_o\)))) # (!\sw3_0[1]~input_o\ & (!\sw3_0[3]~input_o\ & (\sw3_0[0]~input_o\ $ 
-- (\sw3_0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw3_0[3]~input_o\,
	datab => \sw3_0[0]~input_o\,
	datac => \sw3_0[2]~input_o\,
	datad => \sw3_0[1]~input_o\,
	combout => \display|display0|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y62_N28
\display|display0|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr2~0_combout\ = (\sw3_0[3]~input_o\ & (\sw3_0[0]~input_o\ & (!\sw3_0[2]~input_o\ & \sw3_0[1]~input_o\))) # (!\sw3_0[3]~input_o\ & ((\sw3_0[0]~input_o\) # ((\sw3_0[2]~input_o\ & !\sw3_0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw3_0[3]~input_o\,
	datab => \sw3_0[0]~input_o\,
	datac => \sw3_0[2]~input_o\,
	datad => \sw3_0[1]~input_o\,
	combout => \display|display0|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y62_N2
\display|display0|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr1~0_combout\ = (!\sw3_0[2]~input_o\ & ((\sw3_0[3]~input_o\ & (\sw3_0[0]~input_o\ & \sw3_0[1]~input_o\)) # (!\sw3_0[3]~input_o\ & ((\sw3_0[0]~input_o\) # (\sw3_0[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw3_0[3]~input_o\,
	datab => \sw3_0[0]~input_o\,
	datac => \sw3_0[2]~input_o\,
	datad => \sw3_0[1]~input_o\,
	combout => \display|display0|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y62_N0
\display|display0|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr0~0_combout\ = (\sw3_0[1]~input_o\ & ((\sw3_0[3]~input_o\) # ((!\sw3_0[2]~input_o\) # (!\sw3_0[0]~input_o\)))) # (!\sw3_0[1]~input_o\ & (\sw3_0[3]~input_o\ $ (((\sw3_0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw3_0[3]~input_o\,
	datab => \sw3_0[0]~input_o\,
	datac => \sw3_0[2]~input_o\,
	datad => \sw3_0[1]~input_o\,
	combout => \display|display0|WideOr0~0_combout\);

-- Location: IOIBUF_X81_Y0_N22
\sw7_4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw7_4(3),
	o => \sw7_4[3]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\sw7_4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw7_4(0),
	o => \sw7_4[0]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\sw7_4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw7_4(1),
	o => \sw7_4[1]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\sw7_4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw7_4(2),
	o => \sw7_4[2]~input_o\);

-- Location: LCCOMB_X82_Y1_N20
\display|display4|displayValue[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|displayValue[6]~0_combout\ = (!\sw7_4[3]~input_o\ & (!\sw7_4[1]~input_o\ & (\sw7_4[0]~input_o\ $ (\sw7_4[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw7_4[3]~input_o\,
	datab => \sw7_4[0]~input_o\,
	datac => \sw7_4[1]~input_o\,
	datad => \sw7_4[2]~input_o\,
	combout => \display|display4|displayValue[6]~0_combout\);

-- Location: LCCOMB_X82_Y1_N30
\display|display4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr5~0_combout\ = (\sw7_4[2]~input_o\ & (\sw7_4[0]~input_o\ $ (((\sw7_4[3]~input_o\) # (\sw7_4[1]~input_o\))))) # (!\sw7_4[2]~input_o\ & (\sw7_4[3]~input_o\ & (\sw7_4[0]~input_o\ & \sw7_4[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw7_4[3]~input_o\,
	datab => \sw7_4[0]~input_o\,
	datac => \sw7_4[1]~input_o\,
	datad => \sw7_4[2]~input_o\,
	combout => \display|display4|WideOr5~0_combout\);

-- Location: LCCOMB_X82_Y1_N16
\display|display4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr4~0_combout\ = (!\sw7_4[0]~input_o\ & ((\sw7_4[3]~input_o\ & ((\sw7_4[2]~input_o\))) # (!\sw7_4[3]~input_o\ & (\sw7_4[1]~input_o\ & !\sw7_4[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw7_4[3]~input_o\,
	datab => \sw7_4[0]~input_o\,
	datac => \sw7_4[1]~input_o\,
	datad => \sw7_4[2]~input_o\,
	combout => \display|display4|WideOr4~0_combout\);

-- Location: LCCOMB_X82_Y1_N10
\display|display4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr3~0_combout\ = (\sw7_4[1]~input_o\ & ((\sw7_4[0]~input_o\ & ((\sw7_4[2]~input_o\))) # (!\sw7_4[0]~input_o\ & (\sw7_4[3]~input_o\ & !\sw7_4[2]~input_o\)))) # (!\sw7_4[1]~input_o\ & (!\sw7_4[3]~input_o\ & (\sw7_4[0]~input_o\ $ 
-- (\sw7_4[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw7_4[3]~input_o\,
	datab => \sw7_4[0]~input_o\,
	datac => \sw7_4[1]~input_o\,
	datad => \sw7_4[2]~input_o\,
	combout => \display|display4|WideOr3~0_combout\);

-- Location: LCCOMB_X82_Y1_N28
\display|display4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr2~0_combout\ = (\sw7_4[3]~input_o\ & (\sw7_4[0]~input_o\ & (\sw7_4[1]~input_o\ & !\sw7_4[2]~input_o\))) # (!\sw7_4[3]~input_o\ & ((\sw7_4[0]~input_o\) # ((!\sw7_4[1]~input_o\ & \sw7_4[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw7_4[3]~input_o\,
	datab => \sw7_4[0]~input_o\,
	datac => \sw7_4[1]~input_o\,
	datad => \sw7_4[2]~input_o\,
	combout => \display|display4|WideOr2~0_combout\);

-- Location: LCCOMB_X82_Y1_N26
\display|display4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr1~0_combout\ = (!\sw7_4[2]~input_o\ & ((\sw7_4[3]~input_o\ & (\sw7_4[0]~input_o\ & \sw7_4[1]~input_o\)) # (!\sw7_4[3]~input_o\ & ((\sw7_4[0]~input_o\) # (\sw7_4[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw7_4[3]~input_o\,
	datab => \sw7_4[0]~input_o\,
	datac => \sw7_4[1]~input_o\,
	datad => \sw7_4[2]~input_o\,
	combout => \display|display4|WideOr1~0_combout\);

-- Location: LCCOMB_X82_Y1_N8
\display|display4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr0~0_combout\ = (\sw7_4[1]~input_o\ & ((\sw7_4[3]~input_o\) # ((!\sw7_4[2]~input_o\) # (!\sw7_4[0]~input_o\)))) # (!\sw7_4[1]~input_o\ & (\sw7_4[3]~input_o\ $ (((\sw7_4[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw7_4[3]~input_o\,
	datab => \sw7_4[0]~input_o\,
	datac => \sw7_4[1]~input_o\,
	datad => \sw7_4[2]~input_o\,
	combout => \display|display4|WideOr0~0_combout\);

-- Location: IOIBUF_X60_Y0_N8
\sw11_8[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw11_8(1),
	o => \sw11_8[1]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\sw11_8[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw11_8(2),
	o => \sw11_8[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\sw11_8[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw11_8(3),
	o => \sw11_8[3]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\sw11_8[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw11_8(0),
	o => \sw11_8[0]~input_o\);

-- Location: LCCOMB_X66_Y1_N12
\display|display6|displayValue[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|displayValue[6]~0_combout\ = (!\sw11_8[1]~input_o\ & (!\sw11_8[3]~input_o\ & (\sw11_8[2]~input_o\ $ (\sw11_8[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw11_8[1]~input_o\,
	datab => \sw11_8[2]~input_o\,
	datac => \sw11_8[3]~input_o\,
	datad => \sw11_8[0]~input_o\,
	combout => \display|display6|displayValue[6]~0_combout\);

-- Location: LCCOMB_X66_Y1_N26
\display|display6|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr5~0_combout\ = (\sw11_8[2]~input_o\ & (\sw11_8[0]~input_o\ $ (((\sw11_8[1]~input_o\) # (\sw11_8[3]~input_o\))))) # (!\sw11_8[2]~input_o\ & (\sw11_8[1]~input_o\ & (\sw11_8[3]~input_o\ & \sw11_8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw11_8[1]~input_o\,
	datab => \sw11_8[2]~input_o\,
	datac => \sw11_8[3]~input_o\,
	datad => \sw11_8[0]~input_o\,
	combout => \display|display6|WideOr5~0_combout\);

-- Location: LCCOMB_X66_Y1_N20
\display|display6|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr4~0_combout\ = (!\sw11_8[0]~input_o\ & ((\sw11_8[2]~input_o\ & ((\sw11_8[3]~input_o\))) # (!\sw11_8[2]~input_o\ & (\sw11_8[1]~input_o\ & !\sw11_8[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw11_8[1]~input_o\,
	datab => \sw11_8[2]~input_o\,
	datac => \sw11_8[3]~input_o\,
	datad => \sw11_8[0]~input_o\,
	combout => \display|display6|WideOr4~0_combout\);

-- Location: LCCOMB_X66_Y1_N10
\display|display6|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr3~0_combout\ = (\sw11_8[1]~input_o\ & ((\sw11_8[2]~input_o\ & ((\sw11_8[0]~input_o\))) # (!\sw11_8[2]~input_o\ & (\sw11_8[3]~input_o\ & !\sw11_8[0]~input_o\)))) # (!\sw11_8[1]~input_o\ & (!\sw11_8[3]~input_o\ & (\sw11_8[2]~input_o\ 
-- $ (\sw11_8[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw11_8[1]~input_o\,
	datab => \sw11_8[2]~input_o\,
	datac => \sw11_8[3]~input_o\,
	datad => \sw11_8[0]~input_o\,
	combout => \display|display6|WideOr3~0_combout\);

-- Location: LCCOMB_X66_Y1_N4
\display|display6|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr2~0_combout\ = (\sw11_8[1]~input_o\ & (\sw11_8[0]~input_o\ & ((!\sw11_8[3]~input_o\) # (!\sw11_8[2]~input_o\)))) # (!\sw11_8[1]~input_o\ & (!\sw11_8[3]~input_o\ & ((\sw11_8[2]~input_o\) # (\sw11_8[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw11_8[1]~input_o\,
	datab => \sw11_8[2]~input_o\,
	datac => \sw11_8[3]~input_o\,
	datad => \sw11_8[0]~input_o\,
	combout => \display|display6|WideOr2~0_combout\);

-- Location: LCCOMB_X66_Y1_N30
\display|display6|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr1~0_combout\ = (!\sw11_8[2]~input_o\ & ((\sw11_8[1]~input_o\ & ((\sw11_8[0]~input_o\) # (!\sw11_8[3]~input_o\))) # (!\sw11_8[1]~input_o\ & (!\sw11_8[3]~input_o\ & \sw11_8[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw11_8[1]~input_o\,
	datab => \sw11_8[2]~input_o\,
	datac => \sw11_8[3]~input_o\,
	datad => \sw11_8[0]~input_o\,
	combout => \display|display6|WideOr1~0_combout\);

-- Location: LCCOMB_X66_Y1_N28
\display|display6|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr0~0_combout\ = (\sw11_8[1]~input_o\ & (((\sw11_8[3]~input_o\) # (!\sw11_8[0]~input_o\)) # (!\sw11_8[2]~input_o\))) # (!\sw11_8[1]~input_o\ & (\sw11_8[2]~input_o\ $ ((\sw11_8[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw11_8[1]~input_o\,
	datab => \sw11_8[2]~input_o\,
	datac => \sw11_8[3]~input_o\,
	datad => \sw11_8[0]~input_o\,
	combout => \display|display6|WideOr0~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X108_Y72_N4
\clk[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[0]~75_combout\ = !clk(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk(0),
	combout => \clk[0]~75_combout\);

-- Location: FF_X108_Y72_N5
\clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(0));

-- Location: LCCOMB_X108_Y72_N8
\clk[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[1]~25_combout\ = (clk(0) & (clk(1) $ (VCC))) # (!clk(0) & (clk(1) & VCC))
-- \clk[1]~26\ = CARRY((clk(0) & clk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk(0),
	datab => clk(1),
	datad => VCC,
	combout => \clk[1]~25_combout\,
	cout => \clk[1]~26\);

-- Location: FF_X108_Y72_N9
\clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(1));

-- Location: LCCOMB_X108_Y72_N10
\clk[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[2]~27_combout\ = (clk(2) & (!\clk[1]~26\)) # (!clk(2) & ((\clk[1]~26\) # (GND)))
-- \clk[2]~28\ = CARRY((!\clk[1]~26\) # (!clk(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk(2),
	datad => VCC,
	cin => \clk[1]~26\,
	combout => \clk[2]~27_combout\,
	cout => \clk[2]~28\);

-- Location: FF_X108_Y72_N11
\clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(2));

-- Location: LCCOMB_X108_Y72_N12
\clk[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[3]~29_combout\ = (clk(3) & (\clk[2]~28\ $ (GND))) # (!clk(3) & (!\clk[2]~28\ & VCC))
-- \clk[3]~30\ = CARRY((clk(3) & !\clk[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(3),
	datad => VCC,
	cin => \clk[2]~28\,
	combout => \clk[3]~29_combout\,
	cout => \clk[3]~30\);

-- Location: FF_X108_Y72_N13
\clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(3));

-- Location: LCCOMB_X108_Y72_N14
\clk[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[4]~31_combout\ = (clk(4) & (!\clk[3]~30\)) # (!clk(4) & ((\clk[3]~30\) # (GND)))
-- \clk[4]~32\ = CARRY((!\clk[3]~30\) # (!clk(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(4),
	datad => VCC,
	cin => \clk[3]~30\,
	combout => \clk[4]~31_combout\,
	cout => \clk[4]~32\);

-- Location: FF_X108_Y72_N15
\clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(4));

-- Location: LCCOMB_X108_Y72_N16
\clk[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[5]~33_combout\ = (clk(5) & (\clk[4]~32\ $ (GND))) # (!clk(5) & (!\clk[4]~32\ & VCC))
-- \clk[5]~34\ = CARRY((clk(5) & !\clk[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(5),
	datad => VCC,
	cin => \clk[4]~32\,
	combout => \clk[5]~33_combout\,
	cout => \clk[5]~34\);

-- Location: FF_X108_Y72_N17
\clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(5));

-- Location: LCCOMB_X108_Y72_N18
\clk[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[6]~35_combout\ = (clk(6) & (!\clk[5]~34\)) # (!clk(6) & ((\clk[5]~34\) # (GND)))
-- \clk[6]~36\ = CARRY((!\clk[5]~34\) # (!clk(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(6),
	datad => VCC,
	cin => \clk[5]~34\,
	combout => \clk[6]~35_combout\,
	cout => \clk[6]~36\);

-- Location: FF_X108_Y72_N19
\clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(6));

-- Location: LCCOMB_X108_Y72_N20
\clk[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[7]~37_combout\ = (clk(7) & (\clk[6]~36\ $ (GND))) # (!clk(7) & (!\clk[6]~36\ & VCC))
-- \clk[7]~38\ = CARRY((clk(7) & !\clk[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(7),
	datad => VCC,
	cin => \clk[6]~36\,
	combout => \clk[7]~37_combout\,
	cout => \clk[7]~38\);

-- Location: FF_X108_Y72_N21
\clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(7));

-- Location: LCCOMB_X108_Y72_N22
\clk[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[8]~39_combout\ = (clk(8) & (!\clk[7]~38\)) # (!clk(8) & ((\clk[7]~38\) # (GND)))
-- \clk[8]~40\ = CARRY((!\clk[7]~38\) # (!clk(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk(8),
	datad => VCC,
	cin => \clk[7]~38\,
	combout => \clk[8]~39_combout\,
	cout => \clk[8]~40\);

-- Location: FF_X108_Y72_N23
\clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(8));

-- Location: LCCOMB_X108_Y72_N24
\clk[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[9]~41_combout\ = (clk(9) & (\clk[8]~40\ $ (GND))) # (!clk(9) & (!\clk[8]~40\ & VCC))
-- \clk[9]~42\ = CARRY((clk(9) & !\clk[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(9),
	datad => VCC,
	cin => \clk[8]~40\,
	combout => \clk[9]~41_combout\,
	cout => \clk[9]~42\);

-- Location: FF_X108_Y72_N25
\clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(9));

-- Location: LCCOMB_X108_Y72_N26
\clk[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[10]~43_combout\ = (clk(10) & (!\clk[9]~42\)) # (!clk(10) & ((\clk[9]~42\) # (GND)))
-- \clk[10]~44\ = CARRY((!\clk[9]~42\) # (!clk(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk(10),
	datad => VCC,
	cin => \clk[9]~42\,
	combout => \clk[10]~43_combout\,
	cout => \clk[10]~44\);

-- Location: FF_X108_Y72_N27
\clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(10));

-- Location: LCCOMB_X108_Y72_N28
\clk[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[11]~45_combout\ = (clk(11) & (\clk[10]~44\ $ (GND))) # (!clk(11) & (!\clk[10]~44\ & VCC))
-- \clk[11]~46\ = CARRY((clk(11) & !\clk[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(11),
	datad => VCC,
	cin => \clk[10]~44\,
	combout => \clk[11]~45_combout\,
	cout => \clk[11]~46\);

-- Location: FF_X108_Y72_N29
\clk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(11));

-- Location: LCCOMB_X108_Y72_N30
\clk[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[12]~47_combout\ = (clk(12) & (!\clk[11]~46\)) # (!clk(12) & ((\clk[11]~46\) # (GND)))
-- \clk[12]~48\ = CARRY((!\clk[11]~46\) # (!clk(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk(12),
	datad => VCC,
	cin => \clk[11]~46\,
	combout => \clk[12]~47_combout\,
	cout => \clk[12]~48\);

-- Location: FF_X108_Y72_N31
\clk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(12));

-- Location: LCCOMB_X108_Y71_N0
\clk[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[13]~49_combout\ = (clk(13) & (\clk[12]~48\ $ (GND))) # (!clk(13) & (!\clk[12]~48\ & VCC))
-- \clk[13]~50\ = CARRY((clk(13) & !\clk[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(13),
	datad => VCC,
	cin => \clk[12]~48\,
	combout => \clk[13]~49_combout\,
	cout => \clk[13]~50\);

-- Location: FF_X108_Y71_N1
\clk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(13));

-- Location: LCCOMB_X108_Y71_N2
\clk[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[14]~51_combout\ = (clk(14) & (!\clk[13]~50\)) # (!clk(14) & ((\clk[13]~50\) # (GND)))
-- \clk[14]~52\ = CARRY((!\clk[13]~50\) # (!clk(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(14),
	datad => VCC,
	cin => \clk[13]~50\,
	combout => \clk[14]~51_combout\,
	cout => \clk[14]~52\);

-- Location: FF_X108_Y71_N3
\clk[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(14));

-- Location: LCCOMB_X108_Y71_N4
\clk[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[15]~53_combout\ = (clk(15) & (\clk[14]~52\ $ (GND))) # (!clk(15) & (!\clk[14]~52\ & VCC))
-- \clk[15]~54\ = CARRY((clk(15) & !\clk[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(15),
	datad => VCC,
	cin => \clk[14]~52\,
	combout => \clk[15]~53_combout\,
	cout => \clk[15]~54\);

-- Location: FF_X108_Y71_N5
\clk[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(15));

-- Location: LCCOMB_X108_Y71_N6
\clk[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[16]~55_combout\ = (clk(16) & (!\clk[15]~54\)) # (!clk(16) & ((\clk[15]~54\) # (GND)))
-- \clk[16]~56\ = CARRY((!\clk[15]~54\) # (!clk(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk(16),
	datad => VCC,
	cin => \clk[15]~54\,
	combout => \clk[16]~55_combout\,
	cout => \clk[16]~56\);

-- Location: FF_X108_Y71_N7
\clk[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(16));

-- Location: LCCOMB_X108_Y71_N8
\clk[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[17]~57_combout\ = (clk(17) & (\clk[16]~56\ $ (GND))) # (!clk(17) & (!\clk[16]~56\ & VCC))
-- \clk[17]~58\ = CARRY((clk(17) & !\clk[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(17),
	datad => VCC,
	cin => \clk[16]~56\,
	combout => \clk[17]~57_combout\,
	cout => \clk[17]~58\);

-- Location: FF_X108_Y71_N9
\clk[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(17));

-- Location: LCCOMB_X108_Y71_N10
\clk[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[18]~59_combout\ = (clk(18) & (!\clk[17]~58\)) # (!clk(18) & ((\clk[17]~58\) # (GND)))
-- \clk[18]~60\ = CARRY((!\clk[17]~58\) # (!clk(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk(18),
	datad => VCC,
	cin => \clk[17]~58\,
	combout => \clk[18]~59_combout\,
	cout => \clk[18]~60\);

-- Location: FF_X108_Y71_N11
\clk[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(18));

-- Location: LCCOMB_X108_Y71_N12
\clk[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[19]~61_combout\ = (clk(19) & (\clk[18]~60\ $ (GND))) # (!clk(19) & (!\clk[18]~60\ & VCC))
-- \clk[19]~62\ = CARRY((clk(19) & !\clk[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk(19),
	datad => VCC,
	cin => \clk[18]~60\,
	combout => \clk[19]~61_combout\,
	cout => \clk[19]~62\);

-- Location: FF_X108_Y71_N13
\clk[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(19));

-- Location: LCCOMB_X108_Y71_N14
\clk[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[20]~63_combout\ = (clk(20) & (!\clk[19]~62\)) # (!clk(20) & ((\clk[19]~62\) # (GND)))
-- \clk[20]~64\ = CARRY((!\clk[19]~62\) # (!clk(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(20),
	datad => VCC,
	cin => \clk[19]~62\,
	combout => \clk[20]~63_combout\,
	cout => \clk[20]~64\);

-- Location: FF_X108_Y71_N15
\clk[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(20));

-- Location: LCCOMB_X108_Y71_N16
\clk[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[21]~65_combout\ = (clk(21) & (\clk[20]~64\ $ (GND))) # (!clk(21) & (!\clk[20]~64\ & VCC))
-- \clk[21]~66\ = CARRY((clk(21) & !\clk[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(21),
	datad => VCC,
	cin => \clk[20]~64\,
	combout => \clk[21]~65_combout\,
	cout => \clk[21]~66\);

-- Location: FF_X108_Y71_N17
\clk[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(21));

-- Location: LCCOMB_X108_Y71_N18
\clk[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[22]~67_combout\ = (clk(22) & (!\clk[21]~66\)) # (!clk(22) & ((\clk[21]~66\) # (GND)))
-- \clk[22]~68\ = CARRY((!\clk[21]~66\) # (!clk(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(22),
	datad => VCC,
	cin => \clk[21]~66\,
	combout => \clk[22]~67_combout\,
	cout => \clk[22]~68\);

-- Location: FF_X108_Y71_N19
\clk[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(22));

-- Location: LCCOMB_X108_Y71_N20
\clk[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[23]~69_combout\ = (clk(23) & (\clk[22]~68\ $ (GND))) # (!clk(23) & (!\clk[22]~68\ & VCC))
-- \clk[23]~70\ = CARRY((clk(23) & !\clk[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk(23),
	datad => VCC,
	cin => \clk[22]~68\,
	combout => \clk[23]~69_combout\,
	cout => \clk[23]~70\);

-- Location: FF_X108_Y71_N21
\clk[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(23));

-- Location: LCCOMB_X108_Y71_N22
\clk[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[24]~71_combout\ = (clk(24) & (!\clk[23]~70\)) # (!clk(24) & ((\clk[23]~70\) # (GND)))
-- \clk[24]~72\ = CARRY((!\clk[23]~70\) # (!clk(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk(24),
	datad => VCC,
	cin => \clk[23]~70\,
	combout => \clk[24]~71_combout\,
	cout => \clk[24]~72\);

-- Location: FF_X108_Y71_N23
\clk[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(24));

-- Location: LCCOMB_X108_Y71_N24
\clk[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk[25]~73_combout\ = \clk[24]~72\ $ (!clk(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk(25),
	cin => \clk[24]~72\,
	combout => \clk[25]~73_combout\);

-- Location: FF_X108_Y71_N25
\clk[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk(25));

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\sw15_12[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw15_12(0),
	o => \sw15_12[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\sw15_12[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw15_12(1),
	o => \sw15_12[1]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\sw15_12[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw15_12(2),
	o => \sw15_12[2]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\sw15_12[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw15_12(3),
	o => \sw15_12[3]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


