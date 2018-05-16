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

-- DATE "05/16/2018 00:07:37"

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
	SW : IN std_logic_vector(17 DOWNTO 0);
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
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockGenerator|f0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockGenerator|f1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockGenerator|f3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[0]~18_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_sync_0~feeder_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_sync_0~q\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_sync_1~q\ : std_logic;
SIGNAL \clockGenerator|dbk3|comb~0_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[0]~19\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[1]~20_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[1]~21\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[2]~22_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[2]~23\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[3]~24_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[3]~25\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[4]~26_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[4]~27\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[5]~28_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_state~1_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_state~2_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[5]~29\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[6]~30_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[6]~31\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[7]~32_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[7]~33\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[8]~34_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[8]~35\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[9]~36_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[9]~37\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[10]~38_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[10]~39\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[11]~40_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[11]~41\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[12]~42_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[12]~43\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[13]~44_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[13]~45\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[14]~46_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[14]~47\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[15]~48_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[15]~49\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[16]~50_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[16]~51\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt[17]~52_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_state~0_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_state~3_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_state~4_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_state~5_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_state~6_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_state~q\ : std_logic;
SIGNAL \clockGenerator|count~1_combout\ : std_logic;
SIGNAL \clockGenerator|Add0~1_combout\ : std_logic;
SIGNAL \clockGenerator|Add0~0_combout\ : std_logic;
SIGNAL \clockGenerator|always0~2_combout\ : std_logic;
SIGNAL \clockGenerator|count~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_sync_0~feeder_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_sync_0~q\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_sync_1~q\ : std_logic;
SIGNAL \clockGenerator|dbk0|comb~0_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[0]~18_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[0]~19\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[1]~20_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[1]~21\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[2]~22_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[2]~23\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[3]~24_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[3]~25\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[4]~26_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[4]~27\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[5]~28_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_state~1_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_state~2_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[5]~29\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[6]~30_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[6]~31\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[7]~32_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[7]~33\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[8]~34_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[8]~35\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[9]~36_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[9]~37\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[10]~38_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[10]~39\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[11]~40_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[11]~41\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[12]~42_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[12]~43\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[13]~44_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[13]~45\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[14]~46_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[14]~47\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[15]~48_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[15]~49\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[16]~50_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[16]~51\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_cnt[17]~52_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_state~0_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_state~4_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_state~3_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_state~5_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_state~6_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|PB_state~q\ : std_logic;
SIGNAL \clockGenerator|always0~0_combout\ : std_logic;
SIGNAL \clockGenerator|always0~1_combout\ : std_logic;
SIGNAL \clockGenerator|f1~feeder_combout\ : std_logic;
SIGNAL \clockGenerator|f2~0_combout\ : std_logic;
SIGNAL \clockGenerator|f1~q\ : std_logic;
SIGNAL \clockGenerator|f1~clkctrl_outclk\ : std_logic;
SIGNAL \clockGenerator|always0~3_combout\ : std_logic;
SIGNAL \clockGenerator|always0~4_combout\ : std_logic;
SIGNAL \clockGenerator|f0~0_combout\ : std_logic;
SIGNAL \clockGenerator|f0~q\ : std_logic;
SIGNAL \clockGenerator|f0~clkctrl_outclk\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \switches|codop[3]~feeder_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \switches|codop[0]~feeder_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \switches|codop[1]~feeder_combout\ : std_logic;
SIGNAL \regFile|always0~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \clockGenerator|f3~q\ : std_logic;
SIGNAL \clockGenerator|f3~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \switches|addC[1]~feeder_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \switches|addC[2]~feeder_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \switches|addC[3]~feeder_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \regFile|finalB~2_combout\ : std_logic;
SIGNAL \switches|addB_LMM[0]~feeder_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regFile|finalB~0_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \regFile|finalB~1_combout\ : std_logic;
SIGNAL \switches|addB_LMM[3]~feeder_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \regFile|finalB~3_combout\ : std_logic;
SIGNAL \display|display4|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr0~0_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \regFile|finalB~4_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \regFile|finalB~7_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \regFile|finalB~6_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \regFile|finalB~5_combout\ : std_logic;
SIGNAL \display|display5|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr0~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \display|display6|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr0~0_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \display|display7|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr0~0_combout\ : std_logic;
SIGNAL \clockGenerator|dbk3|PB_cnt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clockGenerator|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockGenerator|dbk0|PB_cnt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \switches|codop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switches|addC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switches|addB_LMM\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|finalB\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clockGenerator|dbk3|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \clockGenerator|dbk0|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \display|display7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display4|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
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

\regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\switches|addC\(3) & \switches|addC\(2) & \switches|addC\(1) & \switches|addC\(0));

\regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\SW[11]~input_o\ & \SW[10]~input_o\ & \SW[9]~input_o\ & \SW[8]~input_o\);

\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\regFile|registers_rtl_0|auto_generated|ram_block1a1\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\regFile|registers_rtl_0|auto_generated|ram_block1a2\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\regFile|registers_rtl_0|auto_generated|ram_block1a3\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\regFile|registers_rtl_0|auto_generated|ram_block1a4\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\regFile|registers_rtl_0|auto_generated|ram_block1a5\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\regFile|registers_rtl_0|auto_generated|ram_block1a6\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\regFile|registers_rtl_0|auto_generated|ram_block1a7\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\switches|addC\(3) & \switches|addC\(2) & \switches|addC\(1) & \switches|addC\(0));

\regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\SW[7]~input_o\ & \SW[6]~input_o\ & \SW[5]~input_o\ & \SW[4]~input_o\);

\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\regFile|registers_rtl_1|auto_generated|ram_block1a1\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\regFile|registers_rtl_1|auto_generated|ram_block1a2\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\regFile|registers_rtl_1|auto_generated|ram_block1a3\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\regFile|registers_rtl_1|auto_generated|ram_block1a4\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\regFile|registers_rtl_1|auto_generated|ram_block1a5\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\regFile|registers_rtl_1|auto_generated|ram_block1a6\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\regFile|registers_rtl_1|auto_generated|ram_block1a7\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clockGenerator|f0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockGenerator|f0~q\);

\clockGenerator|f1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockGenerator|f1~q\);

\clockGenerator|f3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockGenerator|f3~q\);
\clockGenerator|dbk3|ALT_INV_comb~0_combout\ <= NOT \clockGenerator|dbk3|comb~0_combout\;
\clockGenerator|dbk0|ALT_INV_comb~0_combout\ <= NOT \clockGenerator|dbk0|comb~0_combout\;
\display|display7|ALT_INV_WideOr0~0_combout\ <= NOT \display|display7|WideOr0~0_combout\;
\display|display6|ALT_INV_WideOr0~0_combout\ <= NOT \display|display6|WideOr0~0_combout\;
\display|display5|ALT_INV_WideOr0~0_combout\ <= NOT \display|display5|WideOr0~0_combout\;
\display|display4|ALT_INV_WideOr0~0_combout\ <= NOT \display|display4|WideOr0~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => \display|display4|WideOr6~0_combout\,
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
	i => \display|display5|WideOr6~0_combout\,
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
	i => \display|display5|WideOr5~0_combout\,
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
	i => \display|display5|WideOr4~0_combout\,
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
	i => \display|display5|WideOr3~0_combout\,
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
	i => \display|display5|WideOr2~0_combout\,
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
	i => \display|display5|WideOr1~0_combout\,
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
	i => \display|display5|ALT_INV_WideOr0~0_combout\,
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
	i => \display|display6|WideOr6~0_combout\,
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
	i => \display|display7|WideOr6~0_combout\,
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
	i => \display|display7|WideOr5~0_combout\,
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
	i => \display|display7|WideOr4~0_combout\,
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
	i => \display|display7|WideOr3~0_combout\,
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
	i => \display|display7|WideOr2~0_combout\,
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
	i => \display|display7|WideOr1~0_combout\,
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
	i => \display|display7|ALT_INV_WideOr0~0_combout\,
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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X109_Y33_N14
\clockGenerator|dbk3|PB_cnt[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[0]~18_combout\ = \clockGenerator|dbk3|PB_cnt\(0) $ (VCC)
-- \clockGenerator|dbk3|PB_cnt[0]~19\ = CARRY(\clockGenerator|dbk3|PB_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(0),
	datad => VCC,
	combout => \clockGenerator|dbk3|PB_cnt[0]~18_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[0]~19\);

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

-- Location: LCCOMB_X111_Y33_N30
\clockGenerator|dbk3|PB_sync_0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_sync_0~feeder_combout\ = \KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \clockGenerator|dbk3|PB_sync_0~feeder_combout\);

-- Location: FF_X111_Y33_N31
\clockGenerator|dbk3|PB_sync_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_sync_0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_sync_0~q\);

-- Location: FF_X110_Y33_N31
\clockGenerator|dbk3|PB_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clockGenerator|dbk3|PB_sync_0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_sync_1~q\);

-- Location: LCCOMB_X110_Y33_N30
\clockGenerator|dbk3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|comb~0_combout\ = \clockGenerator|dbk3|PB_sync_1~q\ $ (\clockGenerator|dbk3|PB_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockGenerator|dbk3|PB_sync_1~q\,
	datad => \clockGenerator|dbk3|PB_state~q\,
	combout => \clockGenerator|dbk3|comb~0_combout\);

-- Location: FF_X109_Y33_N15
\clockGenerator|dbk3|PB_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[0]~18_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(0));

-- Location: LCCOMB_X109_Y33_N16
\clockGenerator|dbk3|PB_cnt[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[1]~20_combout\ = (\clockGenerator|dbk3|PB_cnt\(1) & (!\clockGenerator|dbk3|PB_cnt[0]~19\)) # (!\clockGenerator|dbk3|PB_cnt\(1) & ((\clockGenerator|dbk3|PB_cnt[0]~19\) # (GND)))
-- \clockGenerator|dbk3|PB_cnt[1]~21\ = CARRY((!\clockGenerator|dbk3|PB_cnt[0]~19\) # (!\clockGenerator|dbk3|PB_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(1),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[0]~19\,
	combout => \clockGenerator|dbk3|PB_cnt[1]~20_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[1]~21\);

-- Location: FF_X109_Y33_N17
\clockGenerator|dbk3|PB_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[1]~20_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(1));

-- Location: LCCOMB_X109_Y33_N18
\clockGenerator|dbk3|PB_cnt[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[2]~22_combout\ = (\clockGenerator|dbk3|PB_cnt\(2) & (\clockGenerator|dbk3|PB_cnt[1]~21\ $ (GND))) # (!\clockGenerator|dbk3|PB_cnt\(2) & (!\clockGenerator|dbk3|PB_cnt[1]~21\ & VCC))
-- \clockGenerator|dbk3|PB_cnt[2]~23\ = CARRY((\clockGenerator|dbk3|PB_cnt\(2) & !\clockGenerator|dbk3|PB_cnt[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(2),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[1]~21\,
	combout => \clockGenerator|dbk3|PB_cnt[2]~22_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[2]~23\);

-- Location: FF_X109_Y33_N19
\clockGenerator|dbk3|PB_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[2]~22_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(2));

-- Location: LCCOMB_X109_Y33_N20
\clockGenerator|dbk3|PB_cnt[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[3]~24_combout\ = (\clockGenerator|dbk3|PB_cnt\(3) & (!\clockGenerator|dbk3|PB_cnt[2]~23\)) # (!\clockGenerator|dbk3|PB_cnt\(3) & ((\clockGenerator|dbk3|PB_cnt[2]~23\) # (GND)))
-- \clockGenerator|dbk3|PB_cnt[3]~25\ = CARRY((!\clockGenerator|dbk3|PB_cnt[2]~23\) # (!\clockGenerator|dbk3|PB_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(3),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[2]~23\,
	combout => \clockGenerator|dbk3|PB_cnt[3]~24_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[3]~25\);

-- Location: FF_X109_Y33_N21
\clockGenerator|dbk3|PB_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[3]~24_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(3));

-- Location: LCCOMB_X109_Y33_N22
\clockGenerator|dbk3|PB_cnt[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[4]~26_combout\ = (\clockGenerator|dbk3|PB_cnt\(4) & (\clockGenerator|dbk3|PB_cnt[3]~25\ $ (GND))) # (!\clockGenerator|dbk3|PB_cnt\(4) & (!\clockGenerator|dbk3|PB_cnt[3]~25\ & VCC))
-- \clockGenerator|dbk3|PB_cnt[4]~27\ = CARRY((\clockGenerator|dbk3|PB_cnt\(4) & !\clockGenerator|dbk3|PB_cnt[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(4),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[3]~25\,
	combout => \clockGenerator|dbk3|PB_cnt[4]~26_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[4]~27\);

-- Location: FF_X109_Y33_N23
\clockGenerator|dbk3|PB_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[4]~26_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(4));

-- Location: LCCOMB_X109_Y33_N24
\clockGenerator|dbk3|PB_cnt[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[5]~28_combout\ = (\clockGenerator|dbk3|PB_cnt\(5) & (!\clockGenerator|dbk3|PB_cnt[4]~27\)) # (!\clockGenerator|dbk3|PB_cnt\(5) & ((\clockGenerator|dbk3|PB_cnt[4]~27\) # (GND)))
-- \clockGenerator|dbk3|PB_cnt[5]~29\ = CARRY((!\clockGenerator|dbk3|PB_cnt[4]~27\) # (!\clockGenerator|dbk3|PB_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(5),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[4]~27\,
	combout => \clockGenerator|dbk3|PB_cnt[5]~28_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[5]~29\);

-- Location: FF_X109_Y33_N25
\clockGenerator|dbk3|PB_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[5]~28_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(5));

-- Location: LCCOMB_X109_Y33_N12
\clockGenerator|dbk3|PB_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_state~1_combout\ = (\clockGenerator|dbk3|PB_cnt\(2) & (\clockGenerator|dbk3|PB_cnt\(3) & (\clockGenerator|dbk3|PB_cnt\(4) & \clockGenerator|dbk3|PB_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(2),
	datab => \clockGenerator|dbk3|PB_cnt\(3),
	datac => \clockGenerator|dbk3|PB_cnt\(4),
	datad => \clockGenerator|dbk3|PB_cnt\(5),
	combout => \clockGenerator|dbk3|PB_state~1_combout\);

-- Location: LCCOMB_X110_Y33_N12
\clockGenerator|dbk3|PB_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_state~2_combout\ = (\clockGenerator|dbk3|PB_cnt\(1) & (\clockGenerator|dbk3|PB_cnt\(0) & (\clockGenerator|dbk3|comb~0_combout\ & \clockGenerator|dbk3|PB_state~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(1),
	datab => \clockGenerator|dbk3|PB_cnt\(0),
	datac => \clockGenerator|dbk3|comb~0_combout\,
	datad => \clockGenerator|dbk3|PB_state~1_combout\,
	combout => \clockGenerator|dbk3|PB_state~2_combout\);

-- Location: LCCOMB_X109_Y33_N26
\clockGenerator|dbk3|PB_cnt[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[6]~30_combout\ = (\clockGenerator|dbk3|PB_cnt\(6) & (\clockGenerator|dbk3|PB_cnt[5]~29\ $ (GND))) # (!\clockGenerator|dbk3|PB_cnt\(6) & (!\clockGenerator|dbk3|PB_cnt[5]~29\ & VCC))
-- \clockGenerator|dbk3|PB_cnt[6]~31\ = CARRY((\clockGenerator|dbk3|PB_cnt\(6) & !\clockGenerator|dbk3|PB_cnt[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(6),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[5]~29\,
	combout => \clockGenerator|dbk3|PB_cnt[6]~30_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[6]~31\);

-- Location: FF_X109_Y33_N27
\clockGenerator|dbk3|PB_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[6]~30_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(6));

-- Location: LCCOMB_X109_Y33_N28
\clockGenerator|dbk3|PB_cnt[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[7]~32_combout\ = (\clockGenerator|dbk3|PB_cnt\(7) & (!\clockGenerator|dbk3|PB_cnt[6]~31\)) # (!\clockGenerator|dbk3|PB_cnt\(7) & ((\clockGenerator|dbk3|PB_cnt[6]~31\) # (GND)))
-- \clockGenerator|dbk3|PB_cnt[7]~33\ = CARRY((!\clockGenerator|dbk3|PB_cnt[6]~31\) # (!\clockGenerator|dbk3|PB_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(7),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[6]~31\,
	combout => \clockGenerator|dbk3|PB_cnt[7]~32_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[7]~33\);

-- Location: FF_X109_Y33_N29
\clockGenerator|dbk3|PB_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[7]~32_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(7));

-- Location: LCCOMB_X109_Y33_N30
\clockGenerator|dbk3|PB_cnt[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[8]~34_combout\ = (\clockGenerator|dbk3|PB_cnt\(8) & (\clockGenerator|dbk3|PB_cnt[7]~33\ $ (GND))) # (!\clockGenerator|dbk3|PB_cnt\(8) & (!\clockGenerator|dbk3|PB_cnt[7]~33\ & VCC))
-- \clockGenerator|dbk3|PB_cnt[8]~35\ = CARRY((\clockGenerator|dbk3|PB_cnt\(8) & !\clockGenerator|dbk3|PB_cnt[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(8),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[7]~33\,
	combout => \clockGenerator|dbk3|PB_cnt[8]~34_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[8]~35\);

-- Location: FF_X109_Y33_N31
\clockGenerator|dbk3|PB_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[8]~34_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(8));

-- Location: LCCOMB_X109_Y32_N0
\clockGenerator|dbk3|PB_cnt[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[9]~36_combout\ = (\clockGenerator|dbk3|PB_cnt\(9) & (!\clockGenerator|dbk3|PB_cnt[8]~35\)) # (!\clockGenerator|dbk3|PB_cnt\(9) & ((\clockGenerator|dbk3|PB_cnt[8]~35\) # (GND)))
-- \clockGenerator|dbk3|PB_cnt[9]~37\ = CARRY((!\clockGenerator|dbk3|PB_cnt[8]~35\) # (!\clockGenerator|dbk3|PB_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(9),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[8]~35\,
	combout => \clockGenerator|dbk3|PB_cnt[9]~36_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[9]~37\);

-- Location: FF_X109_Y32_N1
\clockGenerator|dbk3|PB_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[9]~36_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(9));

-- Location: LCCOMB_X109_Y32_N2
\clockGenerator|dbk3|PB_cnt[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[10]~38_combout\ = (\clockGenerator|dbk3|PB_cnt\(10) & (\clockGenerator|dbk3|PB_cnt[9]~37\ $ (GND))) # (!\clockGenerator|dbk3|PB_cnt\(10) & (!\clockGenerator|dbk3|PB_cnt[9]~37\ & VCC))
-- \clockGenerator|dbk3|PB_cnt[10]~39\ = CARRY((\clockGenerator|dbk3|PB_cnt\(10) & !\clockGenerator|dbk3|PB_cnt[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(10),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[9]~37\,
	combout => \clockGenerator|dbk3|PB_cnt[10]~38_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[10]~39\);

-- Location: FF_X109_Y32_N3
\clockGenerator|dbk3|PB_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[10]~38_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(10));

-- Location: LCCOMB_X109_Y32_N4
\clockGenerator|dbk3|PB_cnt[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[11]~40_combout\ = (\clockGenerator|dbk3|PB_cnt\(11) & (!\clockGenerator|dbk3|PB_cnt[10]~39\)) # (!\clockGenerator|dbk3|PB_cnt\(11) & ((\clockGenerator|dbk3|PB_cnt[10]~39\) # (GND)))
-- \clockGenerator|dbk3|PB_cnt[11]~41\ = CARRY((!\clockGenerator|dbk3|PB_cnt[10]~39\) # (!\clockGenerator|dbk3|PB_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(11),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[10]~39\,
	combout => \clockGenerator|dbk3|PB_cnt[11]~40_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[11]~41\);

-- Location: FF_X109_Y32_N5
\clockGenerator|dbk3|PB_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[11]~40_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(11));

-- Location: LCCOMB_X109_Y32_N6
\clockGenerator|dbk3|PB_cnt[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[12]~42_combout\ = (\clockGenerator|dbk3|PB_cnt\(12) & (\clockGenerator|dbk3|PB_cnt[11]~41\ $ (GND))) # (!\clockGenerator|dbk3|PB_cnt\(12) & (!\clockGenerator|dbk3|PB_cnt[11]~41\ & VCC))
-- \clockGenerator|dbk3|PB_cnt[12]~43\ = CARRY((\clockGenerator|dbk3|PB_cnt\(12) & !\clockGenerator|dbk3|PB_cnt[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(12),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[11]~41\,
	combout => \clockGenerator|dbk3|PB_cnt[12]~42_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[12]~43\);

-- Location: FF_X109_Y32_N7
\clockGenerator|dbk3|PB_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[12]~42_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(12));

-- Location: LCCOMB_X109_Y32_N8
\clockGenerator|dbk3|PB_cnt[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[13]~44_combout\ = (\clockGenerator|dbk3|PB_cnt\(13) & (!\clockGenerator|dbk3|PB_cnt[12]~43\)) # (!\clockGenerator|dbk3|PB_cnt\(13) & ((\clockGenerator|dbk3|PB_cnt[12]~43\) # (GND)))
-- \clockGenerator|dbk3|PB_cnt[13]~45\ = CARRY((!\clockGenerator|dbk3|PB_cnt[12]~43\) # (!\clockGenerator|dbk3|PB_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(13),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[12]~43\,
	combout => \clockGenerator|dbk3|PB_cnt[13]~44_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[13]~45\);

-- Location: FF_X109_Y32_N9
\clockGenerator|dbk3|PB_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[13]~44_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(13));

-- Location: LCCOMB_X109_Y32_N10
\clockGenerator|dbk3|PB_cnt[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[14]~46_combout\ = (\clockGenerator|dbk3|PB_cnt\(14) & (\clockGenerator|dbk3|PB_cnt[13]~45\ $ (GND))) # (!\clockGenerator|dbk3|PB_cnt\(14) & (!\clockGenerator|dbk3|PB_cnt[13]~45\ & VCC))
-- \clockGenerator|dbk3|PB_cnt[14]~47\ = CARRY((\clockGenerator|dbk3|PB_cnt\(14) & !\clockGenerator|dbk3|PB_cnt[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(14),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[13]~45\,
	combout => \clockGenerator|dbk3|PB_cnt[14]~46_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[14]~47\);

-- Location: FF_X109_Y32_N11
\clockGenerator|dbk3|PB_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[14]~46_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(14));

-- Location: LCCOMB_X109_Y32_N12
\clockGenerator|dbk3|PB_cnt[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[15]~48_combout\ = (\clockGenerator|dbk3|PB_cnt\(15) & (!\clockGenerator|dbk3|PB_cnt[14]~47\)) # (!\clockGenerator|dbk3|PB_cnt\(15) & ((\clockGenerator|dbk3|PB_cnt[14]~47\) # (GND)))
-- \clockGenerator|dbk3|PB_cnt[15]~49\ = CARRY((!\clockGenerator|dbk3|PB_cnt[14]~47\) # (!\clockGenerator|dbk3|PB_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(15),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[14]~47\,
	combout => \clockGenerator|dbk3|PB_cnt[15]~48_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[15]~49\);

-- Location: FF_X109_Y32_N13
\clockGenerator|dbk3|PB_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[15]~48_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(15));

-- Location: LCCOMB_X109_Y32_N14
\clockGenerator|dbk3|PB_cnt[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[16]~50_combout\ = (\clockGenerator|dbk3|PB_cnt\(16) & (\clockGenerator|dbk3|PB_cnt[15]~49\ $ (GND))) # (!\clockGenerator|dbk3|PB_cnt\(16) & (!\clockGenerator|dbk3|PB_cnt[15]~49\ & VCC))
-- \clockGenerator|dbk3|PB_cnt[16]~51\ = CARRY((\clockGenerator|dbk3|PB_cnt\(16) & !\clockGenerator|dbk3|PB_cnt[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_cnt\(16),
	datad => VCC,
	cin => \clockGenerator|dbk3|PB_cnt[15]~49\,
	combout => \clockGenerator|dbk3|PB_cnt[16]~50_combout\,
	cout => \clockGenerator|dbk3|PB_cnt[16]~51\);

-- Location: FF_X109_Y32_N15
\clockGenerator|dbk3|PB_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[16]~50_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(16));

-- Location: LCCOMB_X109_Y32_N16
\clockGenerator|dbk3|PB_cnt[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_cnt[17]~52_combout\ = \clockGenerator|dbk3|PB_cnt[16]~51\ $ (\clockGenerator|dbk3|PB_cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clockGenerator|dbk3|PB_cnt\(17),
	cin => \clockGenerator|dbk3|PB_cnt[16]~51\,
	combout => \clockGenerator|dbk3|PB_cnt[17]~52_combout\);

-- Location: FF_X109_Y32_N17
\clockGenerator|dbk3|PB_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_cnt[17]~52_combout\,
	sclr => \clockGenerator|dbk3|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_cnt\(17));

-- Location: LCCOMB_X109_Y32_N26
\clockGenerator|dbk3|PB_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_state~0_combout\ = (\clockGenerator|dbk3|PB_cnt\(15) & (\clockGenerator|dbk3|PB_cnt\(17) & (\clockGenerator|dbk3|PB_cnt\(16) & \clockGenerator|dbk3|PB_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(15),
	datab => \clockGenerator|dbk3|PB_cnt\(17),
	datac => \clockGenerator|dbk3|PB_cnt\(16),
	datad => \clockGenerator|dbk3|PB_cnt\(14),
	combout => \clockGenerator|dbk3|PB_state~0_combout\);

-- Location: LCCOMB_X110_Y33_N22
\clockGenerator|dbk3|PB_state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_state~3_combout\ = (\clockGenerator|dbk3|PB_cnt\(9) & \clockGenerator|dbk3|PB_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockGenerator|dbk3|PB_cnt\(9),
	datad => \clockGenerator|dbk3|PB_cnt\(8),
	combout => \clockGenerator|dbk3|PB_state~3_combout\);

-- Location: LCCOMB_X109_Y32_N24
\clockGenerator|dbk3|PB_state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_state~4_combout\ = (\clockGenerator|dbk3|PB_cnt\(12) & (\clockGenerator|dbk3|PB_cnt\(13) & (\clockGenerator|dbk3|PB_cnt\(11) & \clockGenerator|dbk3|PB_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(12),
	datab => \clockGenerator|dbk3|PB_cnt\(13),
	datac => \clockGenerator|dbk3|PB_cnt\(11),
	datad => \clockGenerator|dbk3|PB_cnt\(10),
	combout => \clockGenerator|dbk3|PB_state~4_combout\);

-- Location: LCCOMB_X110_Y33_N28
\clockGenerator|dbk3|PB_state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_state~5_combout\ = (\clockGenerator|dbk3|PB_cnt\(6) & (\clockGenerator|dbk3|PB_cnt\(7) & (\clockGenerator|dbk3|PB_state~3_combout\ & \clockGenerator|dbk3|PB_state~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_cnt\(6),
	datab => \clockGenerator|dbk3|PB_cnt\(7),
	datac => \clockGenerator|dbk3|PB_state~3_combout\,
	datad => \clockGenerator|dbk3|PB_state~4_combout\,
	combout => \clockGenerator|dbk3|PB_state~5_combout\);

-- Location: LCCOMB_X110_Y33_N24
\clockGenerator|dbk3|PB_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk3|PB_state~6_combout\ = \clockGenerator|dbk3|PB_state~q\ $ (((\clockGenerator|dbk3|PB_state~2_combout\ & (\clockGenerator|dbk3|PB_state~0_combout\ & \clockGenerator|dbk3|PB_state~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk3|PB_state~2_combout\,
	datab => \clockGenerator|dbk3|PB_state~0_combout\,
	datac => \clockGenerator|dbk3|PB_state~q\,
	datad => \clockGenerator|dbk3|PB_state~5_combout\,
	combout => \clockGenerator|dbk3|PB_state~6_combout\);

-- Location: FF_X110_Y33_N25
\clockGenerator|dbk3|PB_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk3|PB_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk3|PB_state~q\);

-- Location: LCCOMB_X111_Y33_N6
\clockGenerator|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|count~1_combout\ = (\clockGenerator|count\(0) & (((!\clockGenerator|count\(1))))) # (!\clockGenerator|count\(0) & (\clockGenerator|count\(1) & ((\clockGenerator|dbk3|PB_state~q\) # (!\clockGenerator|always0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(0),
	datab => \clockGenerator|dbk3|PB_state~q\,
	datac => \clockGenerator|count\(1),
	datad => \clockGenerator|always0~2_combout\,
	combout => \clockGenerator|count~1_combout\);

-- Location: FF_X111_Y33_N7
\clockGenerator|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|count\(1));

-- Location: LCCOMB_X111_Y33_N24
\clockGenerator|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|Add0~1_combout\ = \clockGenerator|count\(2) $ (((\clockGenerator|count\(0) & \clockGenerator|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(0),
	datac => \clockGenerator|count\(2),
	datad => \clockGenerator|count\(1),
	combout => \clockGenerator|Add0~1_combout\);

-- Location: FF_X111_Y33_N25
\clockGenerator|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|count\(2));

-- Location: LCCOMB_X111_Y33_N22
\clockGenerator|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|Add0~0_combout\ = \clockGenerator|count\(3) $ (((\clockGenerator|count\(1) & (\clockGenerator|count\(2) & \clockGenerator|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(1),
	datab => \clockGenerator|count\(2),
	datac => \clockGenerator|count\(3),
	datad => \clockGenerator|count\(0),
	combout => \clockGenerator|Add0~0_combout\);

-- Location: FF_X111_Y33_N23
\clockGenerator|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|count\(3));

-- Location: LCCOMB_X111_Y33_N16
\clockGenerator|always0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|always0~2_combout\ = (!\clockGenerator|count\(2) & (!\clockGenerator|count\(3) & (\clockGenerator|count\(0) $ (\clockGenerator|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(0),
	datab => \clockGenerator|count\(2),
	datac => \clockGenerator|count\(3),
	datad => \clockGenerator|count\(1),
	combout => \clockGenerator|always0~2_combout\);

-- Location: LCCOMB_X111_Y33_N10
\clockGenerator|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|count~0_combout\ = (!\clockGenerator|count\(0) & ((\clockGenerator|dbk3|PB_state~q\) # (!\clockGenerator|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk3|PB_state~q\,
	datac => \clockGenerator|count\(0),
	datad => \clockGenerator|always0~2_combout\,
	combout => \clockGenerator|count~0_combout\);

-- Location: FF_X111_Y33_N11
\clockGenerator|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|count\(0));

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

-- Location: LCCOMB_X112_Y33_N8
\clockGenerator|dbk0|PB_sync_0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_sync_0~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \clockGenerator|dbk0|PB_sync_0~feeder_combout\);

-- Location: FF_X112_Y33_N9
\clockGenerator|dbk0|PB_sync_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_sync_0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_sync_0~q\);

-- Location: FF_X112_Y33_N31
\clockGenerator|dbk0|PB_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clockGenerator|dbk0|PB_sync_0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_sync_1~q\);

-- Location: LCCOMB_X112_Y33_N30
\clockGenerator|dbk0|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|comb~0_combout\ = \clockGenerator|dbk0|PB_sync_1~q\ $ (\clockGenerator|dbk0|PB_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockGenerator|dbk0|PB_sync_1~q\,
	datad => \clockGenerator|dbk0|PB_state~q\,
	combout => \clockGenerator|dbk0|comb~0_combout\);

-- Location: LCCOMB_X113_Y33_N14
\clockGenerator|dbk0|PB_cnt[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[0]~18_combout\ = \clockGenerator|dbk0|PB_cnt\(0) $ (VCC)
-- \clockGenerator|dbk0|PB_cnt[0]~19\ = CARRY(\clockGenerator|dbk0|PB_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(0),
	datad => VCC,
	combout => \clockGenerator|dbk0|PB_cnt[0]~18_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[0]~19\);

-- Location: FF_X113_Y33_N15
\clockGenerator|dbk0|PB_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[0]~18_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(0));

-- Location: LCCOMB_X113_Y33_N16
\clockGenerator|dbk0|PB_cnt[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[1]~20_combout\ = (\clockGenerator|dbk0|PB_cnt\(1) & (!\clockGenerator|dbk0|PB_cnt[0]~19\)) # (!\clockGenerator|dbk0|PB_cnt\(1) & ((\clockGenerator|dbk0|PB_cnt[0]~19\) # (GND)))
-- \clockGenerator|dbk0|PB_cnt[1]~21\ = CARRY((!\clockGenerator|dbk0|PB_cnt[0]~19\) # (!\clockGenerator|dbk0|PB_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(1),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[0]~19\,
	combout => \clockGenerator|dbk0|PB_cnt[1]~20_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[1]~21\);

-- Location: FF_X113_Y33_N17
\clockGenerator|dbk0|PB_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[1]~20_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(1));

-- Location: LCCOMB_X113_Y33_N18
\clockGenerator|dbk0|PB_cnt[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[2]~22_combout\ = (\clockGenerator|dbk0|PB_cnt\(2) & (\clockGenerator|dbk0|PB_cnt[1]~21\ $ (GND))) # (!\clockGenerator|dbk0|PB_cnt\(2) & (!\clockGenerator|dbk0|PB_cnt[1]~21\ & VCC))
-- \clockGenerator|dbk0|PB_cnt[2]~23\ = CARRY((\clockGenerator|dbk0|PB_cnt\(2) & !\clockGenerator|dbk0|PB_cnt[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(2),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[1]~21\,
	combout => \clockGenerator|dbk0|PB_cnt[2]~22_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[2]~23\);

-- Location: FF_X113_Y33_N19
\clockGenerator|dbk0|PB_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[2]~22_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(2));

-- Location: LCCOMB_X113_Y33_N20
\clockGenerator|dbk0|PB_cnt[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[3]~24_combout\ = (\clockGenerator|dbk0|PB_cnt\(3) & (!\clockGenerator|dbk0|PB_cnt[2]~23\)) # (!\clockGenerator|dbk0|PB_cnt\(3) & ((\clockGenerator|dbk0|PB_cnt[2]~23\) # (GND)))
-- \clockGenerator|dbk0|PB_cnt[3]~25\ = CARRY((!\clockGenerator|dbk0|PB_cnt[2]~23\) # (!\clockGenerator|dbk0|PB_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(3),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[2]~23\,
	combout => \clockGenerator|dbk0|PB_cnt[3]~24_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[3]~25\);

-- Location: FF_X113_Y33_N21
\clockGenerator|dbk0|PB_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[3]~24_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(3));

-- Location: LCCOMB_X113_Y33_N22
\clockGenerator|dbk0|PB_cnt[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[4]~26_combout\ = (\clockGenerator|dbk0|PB_cnt\(4) & (\clockGenerator|dbk0|PB_cnt[3]~25\ $ (GND))) # (!\clockGenerator|dbk0|PB_cnt\(4) & (!\clockGenerator|dbk0|PB_cnt[3]~25\ & VCC))
-- \clockGenerator|dbk0|PB_cnt[4]~27\ = CARRY((\clockGenerator|dbk0|PB_cnt\(4) & !\clockGenerator|dbk0|PB_cnt[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(4),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[3]~25\,
	combout => \clockGenerator|dbk0|PB_cnt[4]~26_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[4]~27\);

-- Location: FF_X113_Y33_N23
\clockGenerator|dbk0|PB_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[4]~26_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(4));

-- Location: LCCOMB_X113_Y33_N24
\clockGenerator|dbk0|PB_cnt[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[5]~28_combout\ = (\clockGenerator|dbk0|PB_cnt\(5) & (!\clockGenerator|dbk0|PB_cnt[4]~27\)) # (!\clockGenerator|dbk0|PB_cnt\(5) & ((\clockGenerator|dbk0|PB_cnt[4]~27\) # (GND)))
-- \clockGenerator|dbk0|PB_cnt[5]~29\ = CARRY((!\clockGenerator|dbk0|PB_cnt[4]~27\) # (!\clockGenerator|dbk0|PB_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(5),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[4]~27\,
	combout => \clockGenerator|dbk0|PB_cnt[5]~28_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[5]~29\);

-- Location: FF_X113_Y33_N25
\clockGenerator|dbk0|PB_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[5]~28_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(5));

-- Location: LCCOMB_X113_Y33_N4
\clockGenerator|dbk0|PB_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_state~1_combout\ = (\clockGenerator|dbk0|PB_cnt\(2) & (\clockGenerator|dbk0|PB_cnt\(3) & (\clockGenerator|dbk0|PB_cnt\(4) & \clockGenerator|dbk0|PB_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(2),
	datab => \clockGenerator|dbk0|PB_cnt\(3),
	datac => \clockGenerator|dbk0|PB_cnt\(4),
	datad => \clockGenerator|dbk0|PB_cnt\(5),
	combout => \clockGenerator|dbk0|PB_state~1_combout\);

-- Location: LCCOMB_X112_Y33_N12
\clockGenerator|dbk0|PB_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_state~2_combout\ = (\clockGenerator|dbk0|comb~0_combout\ & (\clockGenerator|dbk0|PB_cnt\(1) & (\clockGenerator|dbk0|PB_cnt\(0) & \clockGenerator|dbk0|PB_state~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|comb~0_combout\,
	datab => \clockGenerator|dbk0|PB_cnt\(1),
	datac => \clockGenerator|dbk0|PB_cnt\(0),
	datad => \clockGenerator|dbk0|PB_state~1_combout\,
	combout => \clockGenerator|dbk0|PB_state~2_combout\);

-- Location: LCCOMB_X113_Y33_N26
\clockGenerator|dbk0|PB_cnt[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[6]~30_combout\ = (\clockGenerator|dbk0|PB_cnt\(6) & (\clockGenerator|dbk0|PB_cnt[5]~29\ $ (GND))) # (!\clockGenerator|dbk0|PB_cnt\(6) & (!\clockGenerator|dbk0|PB_cnt[5]~29\ & VCC))
-- \clockGenerator|dbk0|PB_cnt[6]~31\ = CARRY((\clockGenerator|dbk0|PB_cnt\(6) & !\clockGenerator|dbk0|PB_cnt[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(6),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[5]~29\,
	combout => \clockGenerator|dbk0|PB_cnt[6]~30_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[6]~31\);

-- Location: FF_X113_Y33_N27
\clockGenerator|dbk0|PB_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[6]~30_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(6));

-- Location: LCCOMB_X113_Y33_N28
\clockGenerator|dbk0|PB_cnt[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[7]~32_combout\ = (\clockGenerator|dbk0|PB_cnt\(7) & (!\clockGenerator|dbk0|PB_cnt[6]~31\)) # (!\clockGenerator|dbk0|PB_cnt\(7) & ((\clockGenerator|dbk0|PB_cnt[6]~31\) # (GND)))
-- \clockGenerator|dbk0|PB_cnt[7]~33\ = CARRY((!\clockGenerator|dbk0|PB_cnt[6]~31\) # (!\clockGenerator|dbk0|PB_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(7),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[6]~31\,
	combout => \clockGenerator|dbk0|PB_cnt[7]~32_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[7]~33\);

-- Location: FF_X113_Y33_N29
\clockGenerator|dbk0|PB_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[7]~32_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(7));

-- Location: LCCOMB_X113_Y33_N30
\clockGenerator|dbk0|PB_cnt[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[8]~34_combout\ = (\clockGenerator|dbk0|PB_cnt\(8) & (\clockGenerator|dbk0|PB_cnt[7]~33\ $ (GND))) # (!\clockGenerator|dbk0|PB_cnt\(8) & (!\clockGenerator|dbk0|PB_cnt[7]~33\ & VCC))
-- \clockGenerator|dbk0|PB_cnt[8]~35\ = CARRY((\clockGenerator|dbk0|PB_cnt\(8) & !\clockGenerator|dbk0|PB_cnt[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(8),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[7]~33\,
	combout => \clockGenerator|dbk0|PB_cnt[8]~34_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[8]~35\);

-- Location: FF_X113_Y33_N31
\clockGenerator|dbk0|PB_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[8]~34_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(8));

-- Location: LCCOMB_X113_Y32_N0
\clockGenerator|dbk0|PB_cnt[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[9]~36_combout\ = (\clockGenerator|dbk0|PB_cnt\(9) & (!\clockGenerator|dbk0|PB_cnt[8]~35\)) # (!\clockGenerator|dbk0|PB_cnt\(9) & ((\clockGenerator|dbk0|PB_cnt[8]~35\) # (GND)))
-- \clockGenerator|dbk0|PB_cnt[9]~37\ = CARRY((!\clockGenerator|dbk0|PB_cnt[8]~35\) # (!\clockGenerator|dbk0|PB_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(9),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[8]~35\,
	combout => \clockGenerator|dbk0|PB_cnt[9]~36_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[9]~37\);

-- Location: FF_X113_Y32_N1
\clockGenerator|dbk0|PB_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[9]~36_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(9));

-- Location: LCCOMB_X113_Y32_N2
\clockGenerator|dbk0|PB_cnt[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[10]~38_combout\ = (\clockGenerator|dbk0|PB_cnt\(10) & (\clockGenerator|dbk0|PB_cnt[9]~37\ $ (GND))) # (!\clockGenerator|dbk0|PB_cnt\(10) & (!\clockGenerator|dbk0|PB_cnt[9]~37\ & VCC))
-- \clockGenerator|dbk0|PB_cnt[10]~39\ = CARRY((\clockGenerator|dbk0|PB_cnt\(10) & !\clockGenerator|dbk0|PB_cnt[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(10),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[9]~37\,
	combout => \clockGenerator|dbk0|PB_cnt[10]~38_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[10]~39\);

-- Location: FF_X113_Y32_N3
\clockGenerator|dbk0|PB_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[10]~38_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(10));

-- Location: LCCOMB_X113_Y32_N4
\clockGenerator|dbk0|PB_cnt[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[11]~40_combout\ = (\clockGenerator|dbk0|PB_cnt\(11) & (!\clockGenerator|dbk0|PB_cnt[10]~39\)) # (!\clockGenerator|dbk0|PB_cnt\(11) & ((\clockGenerator|dbk0|PB_cnt[10]~39\) # (GND)))
-- \clockGenerator|dbk0|PB_cnt[11]~41\ = CARRY((!\clockGenerator|dbk0|PB_cnt[10]~39\) # (!\clockGenerator|dbk0|PB_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(11),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[10]~39\,
	combout => \clockGenerator|dbk0|PB_cnt[11]~40_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[11]~41\);

-- Location: FF_X113_Y32_N5
\clockGenerator|dbk0|PB_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[11]~40_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(11));

-- Location: LCCOMB_X113_Y32_N6
\clockGenerator|dbk0|PB_cnt[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[12]~42_combout\ = (\clockGenerator|dbk0|PB_cnt\(12) & (\clockGenerator|dbk0|PB_cnt[11]~41\ $ (GND))) # (!\clockGenerator|dbk0|PB_cnt\(12) & (!\clockGenerator|dbk0|PB_cnt[11]~41\ & VCC))
-- \clockGenerator|dbk0|PB_cnt[12]~43\ = CARRY((\clockGenerator|dbk0|PB_cnt\(12) & !\clockGenerator|dbk0|PB_cnt[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(12),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[11]~41\,
	combout => \clockGenerator|dbk0|PB_cnt[12]~42_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[12]~43\);

-- Location: FF_X113_Y32_N7
\clockGenerator|dbk0|PB_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[12]~42_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(12));

-- Location: LCCOMB_X113_Y32_N8
\clockGenerator|dbk0|PB_cnt[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[13]~44_combout\ = (\clockGenerator|dbk0|PB_cnt\(13) & (!\clockGenerator|dbk0|PB_cnt[12]~43\)) # (!\clockGenerator|dbk0|PB_cnt\(13) & ((\clockGenerator|dbk0|PB_cnt[12]~43\) # (GND)))
-- \clockGenerator|dbk0|PB_cnt[13]~45\ = CARRY((!\clockGenerator|dbk0|PB_cnt[12]~43\) # (!\clockGenerator|dbk0|PB_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(13),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[12]~43\,
	combout => \clockGenerator|dbk0|PB_cnt[13]~44_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[13]~45\);

-- Location: FF_X113_Y32_N9
\clockGenerator|dbk0|PB_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[13]~44_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(13));

-- Location: LCCOMB_X113_Y32_N10
\clockGenerator|dbk0|PB_cnt[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[14]~46_combout\ = (\clockGenerator|dbk0|PB_cnt\(14) & (\clockGenerator|dbk0|PB_cnt[13]~45\ $ (GND))) # (!\clockGenerator|dbk0|PB_cnt\(14) & (!\clockGenerator|dbk0|PB_cnt[13]~45\ & VCC))
-- \clockGenerator|dbk0|PB_cnt[14]~47\ = CARRY((\clockGenerator|dbk0|PB_cnt\(14) & !\clockGenerator|dbk0|PB_cnt[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(14),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[13]~45\,
	combout => \clockGenerator|dbk0|PB_cnt[14]~46_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[14]~47\);

-- Location: FF_X113_Y32_N11
\clockGenerator|dbk0|PB_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[14]~46_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(14));

-- Location: LCCOMB_X113_Y32_N12
\clockGenerator|dbk0|PB_cnt[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[15]~48_combout\ = (\clockGenerator|dbk0|PB_cnt\(15) & (!\clockGenerator|dbk0|PB_cnt[14]~47\)) # (!\clockGenerator|dbk0|PB_cnt\(15) & ((\clockGenerator|dbk0|PB_cnt[14]~47\) # (GND)))
-- \clockGenerator|dbk0|PB_cnt[15]~49\ = CARRY((!\clockGenerator|dbk0|PB_cnt[14]~47\) # (!\clockGenerator|dbk0|PB_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(15),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[14]~47\,
	combout => \clockGenerator|dbk0|PB_cnt[15]~48_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[15]~49\);

-- Location: FF_X113_Y32_N13
\clockGenerator|dbk0|PB_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[15]~48_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(15));

-- Location: LCCOMB_X113_Y32_N14
\clockGenerator|dbk0|PB_cnt[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[16]~50_combout\ = (\clockGenerator|dbk0|PB_cnt\(16) & (\clockGenerator|dbk0|PB_cnt[15]~49\ $ (GND))) # (!\clockGenerator|dbk0|PB_cnt\(16) & (!\clockGenerator|dbk0|PB_cnt[15]~49\ & VCC))
-- \clockGenerator|dbk0|PB_cnt[16]~51\ = CARRY((\clockGenerator|dbk0|PB_cnt\(16) & !\clockGenerator|dbk0|PB_cnt[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|dbk0|PB_cnt\(16),
	datad => VCC,
	cin => \clockGenerator|dbk0|PB_cnt[15]~49\,
	combout => \clockGenerator|dbk0|PB_cnt[16]~50_combout\,
	cout => \clockGenerator|dbk0|PB_cnt[16]~51\);

-- Location: FF_X113_Y32_N15
\clockGenerator|dbk0|PB_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[16]~50_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(16));

-- Location: LCCOMB_X113_Y32_N16
\clockGenerator|dbk0|PB_cnt[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_cnt[17]~52_combout\ = \clockGenerator|dbk0|PB_cnt[16]~51\ $ (\clockGenerator|dbk0|PB_cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clockGenerator|dbk0|PB_cnt\(17),
	cin => \clockGenerator|dbk0|PB_cnt[16]~51\,
	combout => \clockGenerator|dbk0|PB_cnt[17]~52_combout\);

-- Location: FF_X113_Y32_N17
\clockGenerator|dbk0|PB_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_cnt[17]~52_combout\,
	sclr => \clockGenerator|dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_cnt\(17));

-- Location: LCCOMB_X113_Y32_N22
\clockGenerator|dbk0|PB_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_state~0_combout\ = (\clockGenerator|dbk0|PB_cnt\(14) & (\clockGenerator|dbk0|PB_cnt\(17) & (\clockGenerator|dbk0|PB_cnt\(16) & \clockGenerator|dbk0|PB_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(14),
	datab => \clockGenerator|dbk0|PB_cnt\(17),
	datac => \clockGenerator|dbk0|PB_cnt\(16),
	datad => \clockGenerator|dbk0|PB_cnt\(15),
	combout => \clockGenerator|dbk0|PB_state~0_combout\);

-- Location: LCCOMB_X113_Y32_N24
\clockGenerator|dbk0|PB_state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_state~4_combout\ = (\clockGenerator|dbk0|PB_cnt\(12) & (\clockGenerator|dbk0|PB_cnt\(11) & (\clockGenerator|dbk0|PB_cnt\(13) & \clockGenerator|dbk0|PB_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(12),
	datab => \clockGenerator|dbk0|PB_cnt\(11),
	datac => \clockGenerator|dbk0|PB_cnt\(13),
	datad => \clockGenerator|dbk0|PB_cnt\(10),
	combout => \clockGenerator|dbk0|PB_state~4_combout\);

-- Location: LCCOMB_X113_Y33_N6
\clockGenerator|dbk0|PB_state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_state~3_combout\ = (\clockGenerator|dbk0|PB_cnt\(6) & (\clockGenerator|dbk0|PB_cnt\(7) & (\clockGenerator|dbk0|PB_cnt\(8) & \clockGenerator|dbk0|PB_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_cnt\(6),
	datab => \clockGenerator|dbk0|PB_cnt\(7),
	datac => \clockGenerator|dbk0|PB_cnt\(8),
	datad => \clockGenerator|dbk0|PB_cnt\(9),
	combout => \clockGenerator|dbk0|PB_state~3_combout\);

-- Location: LCCOMB_X112_Y33_N2
\clockGenerator|dbk0|PB_state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_state~5_combout\ = (\clockGenerator|dbk0|PB_state~4_combout\ & \clockGenerator|dbk0|PB_state~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockGenerator|dbk0|PB_state~4_combout\,
	datad => \clockGenerator|dbk0|PB_state~3_combout\,
	combout => \clockGenerator|dbk0|PB_state~5_combout\);

-- Location: LCCOMB_X112_Y33_N0
\clockGenerator|dbk0|PB_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|dbk0|PB_state~6_combout\ = \clockGenerator|dbk0|PB_state~q\ $ (((\clockGenerator|dbk0|PB_state~2_combout\ & (\clockGenerator|dbk0|PB_state~0_combout\ & \clockGenerator|dbk0|PB_state~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|dbk0|PB_state~2_combout\,
	datab => \clockGenerator|dbk0|PB_state~0_combout\,
	datac => \clockGenerator|dbk0|PB_state~q\,
	datad => \clockGenerator|dbk0|PB_state~5_combout\,
	combout => \clockGenerator|dbk0|PB_state~6_combout\);

-- Location: FF_X112_Y33_N1
\clockGenerator|dbk0|PB_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|dbk0|PB_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|dbk0|PB_state~q\);

-- Location: LCCOMB_X111_Y33_N14
\clockGenerator|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|always0~0_combout\ = (!\clockGenerator|count\(3) & (!\clockGenerator|count\(2) & ((!\clockGenerator|dbk3|PB_state~q\) # (!\clockGenerator|dbk0|PB_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(3),
	datab => \clockGenerator|count\(2),
	datac => \clockGenerator|dbk0|PB_state~q\,
	datad => \clockGenerator|dbk3|PB_state~q\,
	combout => \clockGenerator|always0~0_combout\);

-- Location: LCCOMB_X111_Y33_N28
\clockGenerator|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|always0~1_combout\ = (\clockGenerator|count\(0) & (\clockGenerator|always0~0_combout\ & !\clockGenerator|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(0),
	datac => \clockGenerator|always0~0_combout\,
	datad => \clockGenerator|count\(1),
	combout => \clockGenerator|always0~1_combout\);

-- Location: LCCOMB_X111_Y33_N12
\clockGenerator|f1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|f1~feeder_combout\ = \clockGenerator|always0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clockGenerator|always0~1_combout\,
	combout => \clockGenerator|f1~feeder_combout\);

-- Location: LCCOMB_X111_Y33_N26
\clockGenerator|f2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|f2~0_combout\ = (\clockGenerator|always0~0_combout\ & (((!\clockGenerator|dbk3|PB_state~q\ & !\clockGenerator|count\(0))) # (!\clockGenerator|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(1),
	datab => \clockGenerator|dbk3|PB_state~q\,
	datac => \clockGenerator|always0~0_combout\,
	datad => \clockGenerator|count\(0),
	combout => \clockGenerator|f2~0_combout\);

-- Location: FF_X111_Y33_N13
\clockGenerator|f1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|f1~feeder_combout\,
	ena => \clockGenerator|f2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|f1~q\);

-- Location: CLKCTRL_G7
\clockGenerator|f1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockGenerator|f1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockGenerator|f1~clkctrl_outclk\);

-- Location: LCCOMB_X111_Y33_N18
\clockGenerator|always0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|always0~3_combout\ = (!\clockGenerator|count\(0) & (!\clockGenerator|dbk3|PB_state~q\ & \clockGenerator|always0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(0),
	datab => \clockGenerator|dbk3|PB_state~q\,
	datad => \clockGenerator|always0~2_combout\,
	combout => \clockGenerator|always0~3_combout\);

-- Location: LCCOMB_X111_Y33_N8
\clockGenerator|always0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|always0~4_combout\ = (!\clockGenerator|count\(0) & (!\clockGenerator|dbk3|PB_state~q\ & (!\clockGenerator|count\(3) & !\clockGenerator|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(0),
	datab => \clockGenerator|dbk3|PB_state~q\,
	datac => \clockGenerator|count\(3),
	datad => \clockGenerator|count\(2),
	combout => \clockGenerator|always0~4_combout\);

-- Location: LCCOMB_X111_Y33_N20
\clockGenerator|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|f0~0_combout\ = (!\clockGenerator|always0~3_combout\ & (!\clockGenerator|always0~1_combout\ & ((!\clockGenerator|always0~4_combout\) # (!\clockGenerator|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(1),
	datab => \clockGenerator|always0~3_combout\,
	datac => \clockGenerator|always0~4_combout\,
	datad => \clockGenerator|always0~1_combout\,
	combout => \clockGenerator|f0~0_combout\);

-- Location: FF_X111_Y33_N21
\clockGenerator|f0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|f0~0_combout\,
	ena => \clockGenerator|f2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|f0~q\);

-- Location: CLKCTRL_G5
\clockGenerator|f0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockGenerator|f0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockGenerator|f0~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X114_Y6_N12
\switches|codop[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \switches|codop[3]~feeder_combout\ = \SW[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[15]~input_o\,
	combout => \switches|codop[3]~feeder_combout\);

-- Location: FF_X114_Y6_N13
\switches|codop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	d => \switches|codop[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|codop\(3));

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X114_Y6_N18
\switches|codop[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \switches|codop[0]~feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \switches|codop[0]~feeder_combout\);

-- Location: FF_X114_Y6_N19
\switches|codop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	d => \switches|codop[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|codop\(0));

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: FF_X114_Y6_N17
\switches|codop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|codop\(2));

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X114_Y6_N2
\switches|codop[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \switches|codop[1]~feeder_combout\ = \SW[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[13]~input_o\,
	combout => \switches|codop[1]~feeder_combout\);

-- Location: FF_X114_Y6_N3
\switches|codop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	d => \switches|codop[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|codop\(1));

-- Location: LCCOMB_X114_Y6_N16
\regFile|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|always0~0_combout\ = (\switches|codop\(3)) # ((\switches|codop\(1) & ((\switches|codop\(2)) # (!\switches|codop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \switches|codop\(0),
	datac => \switches|codop\(2),
	datad => \switches|codop\(1),
	combout => \regFile|always0~0_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X77_Y4_N25
\switches|addB_LMM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addB_LMM\(2));

-- Location: FF_X111_Y33_N19
\clockGenerator|f3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|always0~3_combout\,
	ena => \clockGenerator|f2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|f3~q\);

-- Location: CLKCTRL_G8
\clockGenerator|f3~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockGenerator|f3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockGenerator|f3~clkctrl_outclk\);

-- Location: LCCOMB_X77_Y4_N18
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X79_Y4_N21
\switches|addC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addC\(0));

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X79_Y4_N10
\switches|addC[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \switches|addC[1]~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \switches|addC[1]~feeder_combout\);

-- Location: FF_X79_Y4_N11
\switches|addC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	d => \switches|addC[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addC\(1));

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X79_Y5_N4
\switches|addC[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \switches|addC[2]~feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \switches|addC[2]~feeder_combout\);

-- Location: FF_X79_Y5_N5
\switches|addC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	d => \switches|addC[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addC\(2));

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X79_Y5_N30
\switches|addC[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \switches|addC[3]~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \switches|addC[3]~feeder_combout\);

-- Location: FF_X79_Y5_N31
\switches|addC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	d => \switches|addC[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addC\(3));

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: M9K_X78_Y4_N0
\regFile|registers_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "registerFile:regFile|altsyncram:registers_rtl_1|altsyncram_qvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \clockGenerator|f3~q\,
	portbre => VCC,
	clk0 => \clockGenerator|f3~clkctrl_outclk\,
	clk1 => \clockGenerator|f0~clkctrl_outclk\,
	ena0 => \clockGenerator|f3~q\,
	portadatain => \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X77_Y4_N28
\regFile|finalB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|finalB~2_combout\ = (\regFile|always0~0_combout\ & (\switches|addB_LMM\(2))) # (!\regFile|always0~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|always0~0_combout\,
	datab => \switches|addB_LMM\(2),
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	combout => \regFile|finalB~2_combout\);

-- Location: FF_X77_Y4_N29
\regFile|finalB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f1~clkctrl_outclk\,
	d => \regFile|finalB~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|finalB\(2));

-- Location: LCCOMB_X79_Y4_N18
\switches|addB_LMM[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \switches|addB_LMM[0]~feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \switches|addB_LMM[0]~feeder_combout\);

-- Location: FF_X79_Y4_N19
\switches|addB_LMM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	d => \switches|addB_LMM[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addB_LMM\(0));

-- Location: LCCOMB_X79_Y4_N16
\regFile|finalB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|finalB~0_combout\ = (\regFile|always0~0_combout\ & (\switches|addB_LMM\(0))) # (!\regFile|always0~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches|addB_LMM\(0),
	datac => \regFile|always0~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \regFile|finalB~0_combout\);

-- Location: FF_X79_Y4_N17
\regFile|finalB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f1~clkctrl_outclk\,
	d => \regFile|finalB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|finalB\(0));

-- Location: FF_X79_Y4_N25
\switches|addB_LMM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addB_LMM\(1));

-- Location: LCCOMB_X79_Y4_N30
\regFile|finalB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|finalB~1_combout\ = (\regFile|always0~0_combout\ & (\switches|addB_LMM\(1))) # (!\regFile|always0~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|always0~0_combout\,
	datab => \switches|addB_LMM\(1),
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	combout => \regFile|finalB~1_combout\);

-- Location: FF_X79_Y4_N31
\regFile|finalB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f1~clkctrl_outclk\,
	d => \regFile|finalB~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|finalB\(1));

-- Location: LCCOMB_X79_Y4_N22
\switches|addB_LMM[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \switches|addB_LMM[3]~feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \switches|addB_LMM[3]~feeder_combout\);

-- Location: FF_X79_Y4_N23
\switches|addB_LMM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f0~clkctrl_outclk\,
	d => \switches|addB_LMM[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addB_LMM\(3));

-- Location: LCCOMB_X79_Y4_N28
\regFile|finalB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|finalB~3_combout\ = (\regFile|always0~0_combout\ & (\switches|addB_LMM\(3))) # (!\regFile|always0~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|addB_LMM\(3),
	datac => \regFile|always0~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \regFile|finalB~3_combout\);

-- Location: FF_X79_Y4_N29
\regFile|finalB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f1~clkctrl_outclk\,
	d => \regFile|finalB~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|finalB\(3));

-- Location: LCCOMB_X79_Y3_N24
\display|display4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr6~0_combout\ = (\regFile|finalB\(2) & (!\regFile|finalB\(1) & (\regFile|finalB\(0) $ (!\regFile|finalB\(3))))) # (!\regFile|finalB\(2) & (\regFile|finalB\(0) & (\regFile|finalB\(1) $ (!\regFile|finalB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(2),
	datab => \regFile|finalB\(0),
	datac => \regFile|finalB\(1),
	datad => \regFile|finalB\(3),
	combout => \display|display4|WideOr6~0_combout\);

-- Location: LCCOMB_X79_Y3_N6
\display|display4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr5~0_combout\ = (\regFile|finalB\(1) & ((\regFile|finalB\(0) & ((\regFile|finalB\(3)))) # (!\regFile|finalB\(0) & (\regFile|finalB\(2))))) # (!\regFile|finalB\(1) & (\regFile|finalB\(2) & (\regFile|finalB\(0) $ 
-- (\regFile|finalB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(2),
	datab => \regFile|finalB\(0),
	datac => \regFile|finalB\(1),
	datad => \regFile|finalB\(3),
	combout => \display|display4|WideOr5~0_combout\);

-- Location: LCCOMB_X79_Y3_N8
\display|display4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr4~0_combout\ = (\regFile|finalB\(2) & (\regFile|finalB\(3) & ((\regFile|finalB\(1)) # (!\regFile|finalB\(0))))) # (!\regFile|finalB\(2) & (!\regFile|finalB\(0) & (\regFile|finalB\(1) & !\regFile|finalB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(2),
	datab => \regFile|finalB\(0),
	datac => \regFile|finalB\(1),
	datad => \regFile|finalB\(3),
	combout => \display|display4|WideOr4~0_combout\);

-- Location: LCCOMB_X79_Y3_N10
\display|display4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr3~0_combout\ = (\regFile|finalB\(1) & ((\regFile|finalB\(2) & (\regFile|finalB\(0))) # (!\regFile|finalB\(2) & (!\regFile|finalB\(0) & \regFile|finalB\(3))))) # (!\regFile|finalB\(1) & (!\regFile|finalB\(3) & (\regFile|finalB\(2) $ 
-- (\regFile|finalB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(2),
	datab => \regFile|finalB\(0),
	datac => \regFile|finalB\(1),
	datad => \regFile|finalB\(3),
	combout => \display|display4|WideOr3~0_combout\);

-- Location: LCCOMB_X79_Y3_N28
\display|display4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr2~0_combout\ = (\regFile|finalB\(1) & (((\regFile|finalB\(0) & !\regFile|finalB\(3))))) # (!\regFile|finalB\(1) & ((\regFile|finalB\(2) & ((!\regFile|finalB\(3)))) # (!\regFile|finalB\(2) & (\regFile|finalB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(2),
	datab => \regFile|finalB\(0),
	datac => \regFile|finalB\(1),
	datad => \regFile|finalB\(3),
	combout => \display|display4|WideOr2~0_combout\);

-- Location: LCCOMB_X79_Y3_N14
\display|display4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr1~0_combout\ = (\regFile|finalB\(1) & (!\regFile|finalB\(2) & ((!\regFile|finalB\(3))))) # (!\regFile|finalB\(1) & (\regFile|finalB\(0) & (\regFile|finalB\(2) $ (!\regFile|finalB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(2),
	datab => \regFile|finalB\(0),
	datac => \regFile|finalB\(1),
	datad => \regFile|finalB\(3),
	combout => \display|display4|WideOr1~0_combout\);

-- Location: LCCOMB_X79_Y3_N12
\display|display4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr0~0_combout\ = (\regFile|finalB\(0) & ((\regFile|finalB\(3)) # (\regFile|finalB\(2) $ (\regFile|finalB\(1))))) # (!\regFile|finalB\(0) & ((\regFile|finalB\(1)) # (\regFile|finalB\(2) $ (\regFile|finalB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(2),
	datab => \regFile|finalB\(0),
	datac => \regFile|finalB\(1),
	datad => \regFile|finalB\(3),
	combout => \display|display4|WideOr0~0_combout\);

-- Location: LCCOMB_X77_Y4_N30
\regFile|finalB~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|finalB~4_combout\ = (!\regFile|always0~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regFile|always0~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	combout => \regFile|finalB~4_combout\);

-- Location: FF_X77_Y4_N31
\regFile|finalB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f1~clkctrl_outclk\,
	d => \regFile|finalB~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|finalB\(4));

-- Location: LCCOMB_X77_Y4_N20
\regFile|finalB~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|finalB~7_combout\ = (!\regFile|always0~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regFile|always0~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	combout => \regFile|finalB~7_combout\);

-- Location: FF_X77_Y4_N21
\regFile|finalB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f1~clkctrl_outclk\,
	d => \regFile|finalB~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|finalB\(7));

-- Location: LCCOMB_X77_Y4_N22
\regFile|finalB~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|finalB~6_combout\ = (!\regFile|always0~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regFile|always0~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \regFile|finalB~6_combout\);

-- Location: FF_X77_Y4_N23
\regFile|finalB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f1~clkctrl_outclk\,
	d => \regFile|finalB~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|finalB\(6));

-- Location: LCCOMB_X77_Y4_N16
\regFile|finalB~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|finalB~5_combout\ = (!\regFile|always0~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regFile|always0~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	combout => \regFile|finalB~5_combout\);

-- Location: FF_X77_Y4_N17
\regFile|finalB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockGenerator|f1~clkctrl_outclk\,
	d => \regFile|finalB~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|finalB\(5));

-- Location: LCCOMB_X77_Y4_N26
\display|display5|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr6~0_combout\ = (\regFile|finalB\(7) & (\regFile|finalB\(4) & (\regFile|finalB\(6) $ (\regFile|finalB\(5))))) # (!\regFile|finalB\(7) & (!\regFile|finalB\(5) & (\regFile|finalB\(4) $ (\regFile|finalB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(4),
	datab => \regFile|finalB\(7),
	datac => \regFile|finalB\(6),
	datad => \regFile|finalB\(5),
	combout => \display|display5|WideOr6~0_combout\);

-- Location: LCCOMB_X77_Y4_N4
\display|display5|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr5~0_combout\ = (\regFile|finalB\(7) & ((\regFile|finalB\(4) & ((\regFile|finalB\(5)))) # (!\regFile|finalB\(4) & (\regFile|finalB\(6))))) # (!\regFile|finalB\(7) & (\regFile|finalB\(6) & (\regFile|finalB\(4) $ 
-- (\regFile|finalB\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(4),
	datab => \regFile|finalB\(7),
	datac => \regFile|finalB\(6),
	datad => \regFile|finalB\(5),
	combout => \display|display5|WideOr5~0_combout\);

-- Location: LCCOMB_X77_Y4_N14
\display|display5|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr4~0_combout\ = (\regFile|finalB\(7) & (\regFile|finalB\(6) & ((\regFile|finalB\(5)) # (!\regFile|finalB\(4))))) # (!\regFile|finalB\(7) & (!\regFile|finalB\(4) & (!\regFile|finalB\(6) & \regFile|finalB\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(4),
	datab => \regFile|finalB\(7),
	datac => \regFile|finalB\(6),
	datad => \regFile|finalB\(5),
	combout => \display|display5|WideOr4~0_combout\);

-- Location: LCCOMB_X77_Y4_N12
\display|display5|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr3~0_combout\ = (\regFile|finalB\(5) & ((\regFile|finalB\(4) & ((\regFile|finalB\(6)))) # (!\regFile|finalB\(4) & (\regFile|finalB\(7) & !\regFile|finalB\(6))))) # (!\regFile|finalB\(5) & (!\regFile|finalB\(7) & (\regFile|finalB\(4) 
-- $ (\regFile|finalB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(4),
	datab => \regFile|finalB\(7),
	datac => \regFile|finalB\(6),
	datad => \regFile|finalB\(5),
	combout => \display|display5|WideOr3~0_combout\);

-- Location: LCCOMB_X77_Y4_N10
\display|display5|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr2~0_combout\ = (\regFile|finalB\(5) & (\regFile|finalB\(4) & (!\regFile|finalB\(7)))) # (!\regFile|finalB\(5) & ((\regFile|finalB\(6) & ((!\regFile|finalB\(7)))) # (!\regFile|finalB\(6) & (\regFile|finalB\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(4),
	datab => \regFile|finalB\(7),
	datac => \regFile|finalB\(6),
	datad => \regFile|finalB\(5),
	combout => \display|display5|WideOr2~0_combout\);

-- Location: LCCOMB_X77_Y4_N0
\display|display5|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr1~0_combout\ = (\regFile|finalB\(5) & (((!\regFile|finalB\(7) & !\regFile|finalB\(6))))) # (!\regFile|finalB\(5) & (\regFile|finalB\(4) & (\regFile|finalB\(7) $ (!\regFile|finalB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(4),
	datab => \regFile|finalB\(7),
	datac => \regFile|finalB\(6),
	datad => \regFile|finalB\(5),
	combout => \display|display5|WideOr1~0_combout\);

-- Location: LCCOMB_X77_Y4_N2
\display|display5|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr0~0_combout\ = (\regFile|finalB\(4) & ((\regFile|finalB\(7)) # (\regFile|finalB\(6) $ (\regFile|finalB\(5))))) # (!\regFile|finalB\(4) & ((\regFile|finalB\(5)) # (\regFile|finalB\(7) $ (\regFile|finalB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|finalB\(4),
	datab => \regFile|finalB\(7),
	datac => \regFile|finalB\(6),
	datad => \regFile|finalB\(5),
	combout => \display|display5|WideOr0~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: M9K_X78_Y5_N0
\regFile|registers_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "registerFile:regFile|altsyncram:registers_rtl_0|altsyncram_qvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \clockGenerator|f3~q\,
	portbre => VCC,
	clk0 => \clockGenerator|f3~clkctrl_outclk\,
	clk1 => \clockGenerator|f0~clkctrl_outclk\,
	ena0 => \clockGenerator|f3~q\,
	portadatain => \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X77_Y5_N20
\display|display6|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr6~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ $ 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \display|display6|WideOr6~0_combout\);

-- Location: LCCOMB_X77_Y5_N26
\display|display6|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr5~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a3\))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a2\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ (\regFile|registers_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \display|display6|WideOr5~0_combout\);

-- Location: LCCOMB_X77_Y5_N24
\display|display6|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr4~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a1\) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & !\regFile|registers_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \display|display6|WideOr4~0_combout\);

-- Location: LCCOMB_X77_Y5_N10
\display|display6|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr3~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a2\)) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & \regFile|registers_rtl_0|auto_generated|ram_block1a3\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ (\regFile|registers_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \display|display6|WideOr3~0_combout\);

-- Location: LCCOMB_X77_Y5_N4
\display|display6|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr2~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((!\regFile|registers_rtl_0|auto_generated|ram_block1a3\)))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & ((!\regFile|registers_rtl_0|auto_generated|ram_block1a3\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \display|display6|WideOr2~0_combout\);

-- Location: LCCOMB_X77_Y5_N30
\display|display6|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr1~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (((!\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & !\regFile|registers_rtl_0|auto_generated|ram_block1a3\)))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a2\ $ (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \display|display6|WideOr1~0_combout\);

-- Location: LCCOMB_X77_Y5_N12
\display|display6|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr0~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a3\) # (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a2\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a1\) # (\regFile|registers_rtl_0|auto_generated|ram_block1a2\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \display|display6|WideOr0~0_combout\);

-- Location: LCCOMB_X70_Y1_N24
\display|display7|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display7|WideOr6~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a6\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \display|display7|WideOr6~0_combout\);

-- Location: LCCOMB_X70_Y1_N22
\display|display7|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display7|WideOr5~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a7\)) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a6\))))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a6\ & 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ $ (\regFile|registers_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \display|display7|WideOr5~0_combout\);

-- Location: LCCOMB_X70_Y1_N16
\display|display7|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display7|WideOr4~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a6\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a5\) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a4\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & 
-- !\regFile|registers_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \display|display7|WideOr4~0_combout\);

-- Location: LCCOMB_X70_Y1_N18
\display|display7|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display7|WideOr3~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a6\))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & !\regFile|registers_rtl_0|auto_generated|ram_block1a6\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ $ (\regFile|registers_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \display|display7|WideOr3~0_combout\);

-- Location: LCCOMB_X70_Y1_N8
\display|display7|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display7|WideOr2~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a7\))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a6\ & ((!\regFile|registers_rtl_0|auto_generated|ram_block1a7\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a6\ & 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \display|display7|WideOr2~0_combout\);

-- Location: LCCOMB_X70_Y1_N30
\display|display7|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display7|WideOr1~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & (((!\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & !\regFile|registers_rtl_0|auto_generated|ram_block1a6\)))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a7\ $ (!\regFile|registers_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \display|display7|WideOr1~0_combout\);

-- Location: LCCOMB_X70_Y1_N20
\display|display7|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display7|WideOr0~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a7\) # (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a6\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a5\) # (\regFile|registers_rtl_0|auto_generated|ram_block1a7\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \display|display7|WideOr0~0_combout\);

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

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

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


