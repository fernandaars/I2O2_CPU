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

-- DATE "05/17/2018 13:09:43"

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
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FETCH_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dbk3|PB_state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WRITEBACK_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \dbk3|PB_cnt[0]~18_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \dbk3|PB_sync_0~feeder_combout\ : std_logic;
SIGNAL \dbk3|PB_sync_0~q\ : std_logic;
SIGNAL \dbk3|PB_sync_1~q\ : std_logic;
SIGNAL \dbk3|comb~0_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[0]~19\ : std_logic;
SIGNAL \dbk3|PB_cnt[1]~20_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[1]~21\ : std_logic;
SIGNAL \dbk3|PB_cnt[2]~22_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[2]~23\ : std_logic;
SIGNAL \dbk3|PB_cnt[3]~24_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[3]~25\ : std_logic;
SIGNAL \dbk3|PB_cnt[4]~26_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[4]~27\ : std_logic;
SIGNAL \dbk3|PB_cnt[5]~28_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[5]~29\ : std_logic;
SIGNAL \dbk3|PB_cnt[6]~30_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[6]~31\ : std_logic;
SIGNAL \dbk3|PB_cnt[7]~32_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[7]~33\ : std_logic;
SIGNAL \dbk3|PB_cnt[8]~34_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[8]~35\ : std_logic;
SIGNAL \dbk3|PB_cnt[9]~36_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[9]~37\ : std_logic;
SIGNAL \dbk3|PB_cnt[10]~38_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[10]~39\ : std_logic;
SIGNAL \dbk3|PB_cnt[11]~40_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[11]~41\ : std_logic;
SIGNAL \dbk3|PB_cnt[12]~42_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[12]~43\ : std_logic;
SIGNAL \dbk3|PB_cnt[13]~44_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[13]~45\ : std_logic;
SIGNAL \dbk3|PB_cnt[14]~46_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[14]~47\ : std_logic;
SIGNAL \dbk3|PB_cnt[15]~48_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[15]~49\ : std_logic;
SIGNAL \dbk3|PB_cnt[16]~50_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt[16]~51\ : std_logic;
SIGNAL \dbk3|PB_cnt[17]~52_combout\ : std_logic;
SIGNAL \dbk3|PB_state~0_combout\ : std_logic;
SIGNAL \dbk3|PB_state~1_combout\ : std_logic;
SIGNAL \dbk3|PB_state~2_combout\ : std_logic;
SIGNAL \dbk3|PB_state~4_combout\ : std_logic;
SIGNAL \dbk3|PB_state~3_combout\ : std_logic;
SIGNAL \dbk3|PB_state~5_combout\ : std_logic;
SIGNAL \dbk3|PB_state~6_combout\ : std_logic;
SIGNAL \dbk3|PB_state~feeder_combout\ : std_logic;
SIGNAL \dbk3|PB_state~q\ : std_logic;
SIGNAL \dbk3|PB_state~clkctrl_outclk\ : std_logic;
SIGNAL \dbk0|PB_cnt[0]~18_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \dbk0|PB_sync_0~feeder_combout\ : std_logic;
SIGNAL \dbk0|PB_sync_0~q\ : std_logic;
SIGNAL \dbk0|PB_sync_1~q\ : std_logic;
SIGNAL \dbk0|comb~0_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[0]~19\ : std_logic;
SIGNAL \dbk0|PB_cnt[1]~20_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[1]~21\ : std_logic;
SIGNAL \dbk0|PB_cnt[2]~22_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[2]~23\ : std_logic;
SIGNAL \dbk0|PB_cnt[3]~24_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[3]~25\ : std_logic;
SIGNAL \dbk0|PB_cnt[4]~26_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[4]~27\ : std_logic;
SIGNAL \dbk0|PB_cnt[5]~28_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[5]~29\ : std_logic;
SIGNAL \dbk0|PB_cnt[6]~30_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[6]~31\ : std_logic;
SIGNAL \dbk0|PB_cnt[7]~32_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[7]~33\ : std_logic;
SIGNAL \dbk0|PB_cnt[8]~34_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[8]~35\ : std_logic;
SIGNAL \dbk0|PB_cnt[9]~36_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[9]~37\ : std_logic;
SIGNAL \dbk0|PB_cnt[10]~38_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[10]~39\ : std_logic;
SIGNAL \dbk0|PB_cnt[11]~40_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[11]~41\ : std_logic;
SIGNAL \dbk0|PB_cnt[12]~42_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[12]~43\ : std_logic;
SIGNAL \dbk0|PB_cnt[13]~44_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[13]~45\ : std_logic;
SIGNAL \dbk0|PB_cnt[14]~46_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[14]~47\ : std_logic;
SIGNAL \dbk0|PB_cnt[15]~48_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[15]~49\ : std_logic;
SIGNAL \dbk0|PB_cnt[16]~50_combout\ : std_logic;
SIGNAL \dbk0|PB_cnt[16]~51\ : std_logic;
SIGNAL \dbk0|PB_cnt[17]~52_combout\ : std_logic;
SIGNAL \dbk0|PB_state~0_combout\ : std_logic;
SIGNAL \dbk0|PB_state~1_combout\ : std_logic;
SIGNAL \dbk0|PB_state~2_combout\ : std_logic;
SIGNAL \dbk0|PB_state~3_combout\ : std_logic;
SIGNAL \dbk0|PB_state~4_combout\ : std_logic;
SIGNAL \dbk0|PB_state~5_combout\ : std_logic;
SIGNAL \dbk0|PB_state~6_combout\ : std_logic;
SIGNAL \dbk0|PB_state~q\ : std_logic;
SIGNAL \clockGenerator|count[0]~3_combout\ : std_logic;
SIGNAL \clockGenerator|count[1]~0_combout\ : std_logic;
SIGNAL \clockGenerator|f0~0_combout\ : std_logic;
SIGNAL \clockGenerator|count~2_combout\ : std_logic;
SIGNAL \clockGenerator|count[3]~1_combout\ : std_logic;
SIGNAL \clockGenerator|Equal3~0_combout\ : std_logic;
SIGNAL \clockGenerator|f0~q\ : std_logic;
SIGNAL \FETCH_clk~combout\ : std_logic;
SIGNAL \FETCH_clk~clkctrl_outclk\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \switches|codop[1]~feeder_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \aluExecute|out[7]~3_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \clockGenerator|Equal3~1_combout\ : std_logic;
SIGNAL \clockGenerator|f3~q\ : std_logic;
SIGNAL \WRITEBACK_clk~combout\ : std_logic;
SIGNAL \WRITEBACK_clk~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \switches|addC[0]~feeder_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \switches|addC[1]~feeder_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \switches|addC[2]~feeder_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \switches|addC[3]~feeder_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \aluExecute|out[7]~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \aluExecute|out[7]~1_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \aluExecute|Mux0~0_combout\ : std_logic;
SIGNAL \finalB[15]~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux0~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux0~2_combout\ : std_logic;
SIGNAL \aluExecute|Add0~34_combout\ : std_logic;
SIGNAL \aluExecute|Add0~35_combout\ : std_logic;
SIGNAL \aluExecute|Add0~37_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \aluExecute|Add0~36_combout\ : std_logic;
SIGNAL \aluExecute|Add0~39_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \aluExecute|Add0~38_combout\ : std_logic;
SIGNAL \aluExecute|Add0~40_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \aluExecute|Add0~41_combout\ : std_logic;
SIGNAL \aluExecute|Add0~42_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \aluExecute|Add0~43_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \aluExecute|Add0~44_combout\ : std_logic;
SIGNAL \aluExecute|Add0~45_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \aluExecute|Add0~46_combout\ : std_logic;
SIGNAL \aluExecute|Add0~47_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \aluExecute|Add0~48_combout\ : std_logic;
SIGNAL \aluExecute|Add0~49_combout\ : std_logic;
SIGNAL \aluExecute|Add0~30_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \aluExecute|Add0~31_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \aluExecute|Add0~26_combout\ : std_logic;
SIGNAL \aluExecute|Add0~27_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \aluExecute|Add0~22_combout\ : std_logic;
SIGNAL \aluExecute|Add0~23_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \aluExecute|Add0~19_combout\ : std_logic;
SIGNAL \aluExecute|Add0~18_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \aluExecute|Add0~15_combout\ : std_logic;
SIGNAL \aluExecute|Add0~14_combout\ : std_logic;
SIGNAL \aluExecute|Add0~10_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \aluExecute|Add0~11_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \aluExecute|Add0~6_combout\ : std_logic;
SIGNAL \aluExecute|Add0~7_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \aluExecute|Add0~1_combout\ : std_logic;
SIGNAL \aluExecute|Add0~0_combout\ : std_logic;
SIGNAL \aluExecute|Add0~3_cout\ : std_logic;
SIGNAL \aluExecute|Add0~5\ : std_logic;
SIGNAL \aluExecute|Add0~9\ : std_logic;
SIGNAL \aluExecute|Add0~13\ : std_logic;
SIGNAL \aluExecute|Add0~17\ : std_logic;
SIGNAL \aluExecute|Add0~21\ : std_logic;
SIGNAL \aluExecute|Add0~25\ : std_logic;
SIGNAL \aluExecute|Add0~29\ : std_logic;
SIGNAL \aluExecute|Add0~33\ : std_logic;
SIGNAL \aluExecute|Add0~51\ : std_logic;
SIGNAL \aluExecute|Add0~53\ : std_logic;
SIGNAL \aluExecute|Add0~55\ : std_logic;
SIGNAL \aluExecute|Add0~57\ : std_logic;
SIGNAL \aluExecute|Add0~59\ : std_logic;
SIGNAL \aluExecute|Add0~61\ : std_logic;
SIGNAL \aluExecute|Add0~63\ : std_logic;
SIGNAL \aluExecute|Add0~64_combout\ : std_logic;
SIGNAL \aluExecute|Mux0~3_combout\ : std_logic;
SIGNAL \aluExecute|neg~q\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \finalB[14]~2_combout\ : std_logic;
SIGNAL \aluExecute|Mux1~0_combout\ : std_logic;
SIGNAL \aluExecute|out~10_combout\ : std_logic;
SIGNAL \aluExecute|Add0~62_combout\ : std_logic;
SIGNAL \aluExecute|Mux1~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux1~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \finalB[13]~3_combout\ : std_logic;
SIGNAL \aluExecute|Mux2~0_combout\ : std_logic;
SIGNAL \aluExecute|Mux2~1_combout\ : std_logic;
SIGNAL \aluExecute|Add0~60_combout\ : std_logic;
SIGNAL \aluExecute|Mux2~2_combout\ : std_logic;
SIGNAL \aluExecute|Mux2~3_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \aluExecute|out~11_combout\ : std_logic;
SIGNAL \finalB[12]~4_combout\ : std_logic;
SIGNAL \aluExecute|Mux3~0_combout\ : std_logic;
SIGNAL \aluExecute|Add0~58_combout\ : std_logic;
SIGNAL \aluExecute|Mux3~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux3~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \finalB[11]~5_combout\ : std_logic;
SIGNAL \aluExecute|Add0~56_combout\ : std_logic;
SIGNAL \aluExecute|out~12_combout\ : std_logic;
SIGNAL \aluExecute|Mux4~0_combout\ : std_logic;
SIGNAL \aluExecute|Mux4~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux4~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \aluExecute|out~13_combout\ : std_logic;
SIGNAL \finalB[10]~6_combout\ : std_logic;
SIGNAL \aluExecute|Mux5~0_combout\ : std_logic;
SIGNAL \aluExecute|Add0~54_combout\ : std_logic;
SIGNAL \aluExecute|Mux5~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux5~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \finalB[9]~7_combout\ : std_logic;
SIGNAL \aluExecute|Add0~52_combout\ : std_logic;
SIGNAL \aluExecute|out~14_combout\ : std_logic;
SIGNAL \aluExecute|Mux6~0_combout\ : std_logic;
SIGNAL \aluExecute|Mux6~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux6~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \aluExecute|out~15_combout\ : std_logic;
SIGNAL \finalB[8]~8_combout\ : std_logic;
SIGNAL \aluExecute|Mux7~0_combout\ : std_logic;
SIGNAL \aluExecute|Add0~50_combout\ : std_logic;
SIGNAL \aluExecute|Mux7~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux7~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \finalB[7]~9_combout\ : std_logic;
SIGNAL \aluExecute|Add0~32_combout\ : std_logic;
SIGNAL \aluExecute|out~9_combout\ : std_logic;
SIGNAL \aluExecute|Mux8~0_combout\ : std_logic;
SIGNAL \aluExecute|Mux8~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux8~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \finalB[6]~10_combout\ : std_logic;
SIGNAL \aluExecute|Mux9~0_combout\ : std_logic;
SIGNAL \aluExecute|out~8_combout\ : std_logic;
SIGNAL \aluExecute|Add0~28_combout\ : std_logic;
SIGNAL \aluExecute|Mux9~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux9~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \finalB[5]~11_combout\ : std_logic;
SIGNAL \aluExecute|out~7_combout\ : std_logic;
SIGNAL \aluExecute|Add0~24_combout\ : std_logic;
SIGNAL \aluExecute|Mux10~0_combout\ : std_logic;
SIGNAL \aluExecute|Mux10~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux10~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \finalB[4]~12_combout\ : std_logic;
SIGNAL \aluExecute|Mux11~0_combout\ : std_logic;
SIGNAL \aluExecute|Add0~20_combout\ : std_logic;
SIGNAL \aluExecute|out~6_combout\ : std_logic;
SIGNAL \aluExecute|Mux11~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux11~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \finalB[3]~13_combout\ : std_logic;
SIGNAL \aluExecute|out~5_combout\ : std_logic;
SIGNAL \aluExecute|Add0~16_combout\ : std_logic;
SIGNAL \aluExecute|Mux12~0_combout\ : std_logic;
SIGNAL \aluExecute|Mux12~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux12~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \aluExecute|out~4_combout\ : std_logic;
SIGNAL \finalB[2]~14_combout\ : std_logic;
SIGNAL \aluExecute|Mux13~0_combout\ : std_logic;
SIGNAL \aluExecute|Add0~12_combout\ : std_logic;
SIGNAL \aluExecute|Mux13~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux13~2_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \finalB[0]~0_combout\ : std_logic;
SIGNAL \aluExecute|Mux15~0_combout\ : std_logic;
SIGNAL \aluExecute|Mux15~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux15~2_combout\ : std_logic;
SIGNAL \aluExecute|LessThan2~1_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~3_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~5_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~7_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~9_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~11_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~13_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~15_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~17_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~19_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~21_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~23_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~25_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~27_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~29_cout\ : std_logic;
SIGNAL \aluExecute|LessThan2~30_combout\ : std_logic;
SIGNAL \aluExecute|Mux15~3_combout\ : std_logic;
SIGNAL \aluExecute|Mux15~5_combout\ : std_logic;
SIGNAL \aluExecute|Add0~4_combout\ : std_logic;
SIGNAL \aluExecute|Mux15~4_combout\ : std_logic;
SIGNAL \aluExecute|Mux15~6_combout\ : std_logic;
SIGNAL \aluExecute|Mux15~7_combout\ : std_logic;
SIGNAL \regFile|registers_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \finalB[1]~15_combout\ : std_logic;
SIGNAL \aluExecute|Mux14~0_combout\ : std_logic;
SIGNAL \aluExecute|out~2_combout\ : std_logic;
SIGNAL \aluExecute|Add0~8_combout\ : std_logic;
SIGNAL \aluExecute|Mux14~1_combout\ : std_logic;
SIGNAL \aluExecute|Mux14~2_combout\ : std_logic;
SIGNAL \display|display0|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display0|WideOr0~0_combout\ : std_logic;
SIGNAL \display|display1|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display1|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display1|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display1|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display1|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display1|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display1|WideOr0~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display4|WideOr0~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display5|WideOr0~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display6|WideOr0~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr6~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr5~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr4~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr3~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr2~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr1~0_combout\ : std_logic;
SIGNAL \display|display7|WideOr0~0_combout\ : std_logic;
SIGNAL \clockGenerator|f1~0_combout\ : std_logic;
SIGNAL \clockGenerator|f1~q\ : std_logic;
SIGNAL \PRINT_clk~0_combout\ : std_logic;
SIGNAL \dbk3|PB_cnt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clockGenerator|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dbk0|PB_cnt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \switches|codop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switches|addC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switches|addB_LMM\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aluExecute|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dbk3|ALT_INV_PB_state~clkctrl_outclk\ : std_logic;
SIGNAL \dbk0|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \dbk3|ALT_INV_PB_state~q\ : std_logic;
SIGNAL \display|display7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_WideOr0~0_combout\ : std_logic;

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

\regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \aluExecute|neg~q\ & \aluExecute|out\(14) & 
\aluExecute|out\(13) & \aluExecute|out\(12) & \aluExecute|out\(11) & \aluExecute|out\(10) & \aluExecute|out\(9) & \aluExecute|out\(8) & \aluExecute|out\(7) & \aluExecute|out\(6) & \aluExecute|out\(5) & \aluExecute|out\(4) & 
\aluExecute|out\(3) & \aluExecute|out\(2) & \aluExecute|out\(1) & \aluExecute|out\(0));

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
\regFile|registers_rtl_1|auto_generated|ram_block1a8\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\regFile|registers_rtl_1|auto_generated|ram_block1a9\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\regFile|registers_rtl_1|auto_generated|ram_block1a10\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\regFile|registers_rtl_1|auto_generated|ram_block1a11\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\regFile|registers_rtl_1|auto_generated|ram_block1a12\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\regFile|registers_rtl_1|auto_generated|ram_block1a13\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\regFile|registers_rtl_1|auto_generated|ram_block1a14\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\regFile|registers_rtl_1|auto_generated|ram_block1a15\ <= \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \aluExecute|neg~q\ & \aluExecute|out\(14) & 
\aluExecute|out\(13) & \aluExecute|out\(12) & \aluExecute|out\(11) & \aluExecute|out\(10) & \aluExecute|out\(9) & \aluExecute|out\(8) & \aluExecute|out\(7) & \aluExecute|out\(6) & \aluExecute|out\(5) & \aluExecute|out\(4) & 
\aluExecute|out\(3) & \aluExecute|out\(2) & \aluExecute|out\(1) & \aluExecute|out\(0));

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
\regFile|registers_rtl_0|auto_generated|ram_block1a8\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\regFile|registers_rtl_0|auto_generated|ram_block1a9\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\regFile|registers_rtl_0|auto_generated|ram_block1a10\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\regFile|registers_rtl_0|auto_generated|ram_block1a11\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\regFile|registers_rtl_0|auto_generated|ram_block1a12\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\regFile|registers_rtl_0|auto_generated|ram_block1a13\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\regFile|registers_rtl_0|auto_generated|ram_block1a14\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\regFile|registers_rtl_0|auto_generated|ram_block1a15\ <= \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\FETCH_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FETCH_clk~combout\);

\dbk3|PB_state~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dbk3|PB_state~q\);

\WRITEBACK_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WRITEBACK_clk~combout\);
\dbk3|ALT_INV_PB_state~clkctrl_outclk\ <= NOT \dbk3|PB_state~clkctrl_outclk\;
\dbk0|ALT_INV_comb~0_combout\ <= NOT \dbk0|comb~0_combout\;
\dbk3|ALT_INV_PB_state~q\ <= NOT \dbk3|PB_state~q\;
\display|display7|ALT_INV_WideOr0~0_combout\ <= NOT \display|display7|WideOr0~0_combout\;
\display|display6|ALT_INV_WideOr0~0_combout\ <= NOT \display|display6|WideOr0~0_combout\;
\display|display5|ALT_INV_WideOr0~0_combout\ <= NOT \display|display5|WideOr0~0_combout\;
\display|display4|ALT_INV_WideOr0~0_combout\ <= NOT \display|display4|WideOr0~0_combout\;
\display|display1|ALT_INV_WideOr0~0_combout\ <= NOT \display|display1|WideOr0~0_combout\;
\display|display0|ALT_INV_WideOr0~0_combout\ <= NOT \display|display0|WideOr0~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|WideOr6~0_combout\,
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
	i => \display|display1|WideOr6~0_combout\,
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
	i => \display|display1|WideOr5~0_combout\,
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
	i => \display|display1|WideOr4~0_combout\,
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
	i => \display|display1|WideOr3~0_combout\,
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
	i => \display|display1|WideOr2~0_combout\,
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
	i => \display|display1|WideOr1~0_combout\,
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
	i => \display|display1|ALT_INV_WideOr0~0_combout\,
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
	i => \FETCH_clk~combout\,
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
	i => \PRINT_clk~0_combout\,
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
	i => \dbk3|ALT_INV_PB_state~q\,
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
	i => \WRITEBACK_clk~combout\,
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

-- Location: LCCOMB_X106_Y4_N14
\dbk3|PB_cnt[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[0]~18_combout\ = \dbk3|PB_cnt\(0) $ (VCC)
-- \dbk3|PB_cnt[0]~19\ = CARRY(\dbk3|PB_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(0),
	datad => VCC,
	combout => \dbk3|PB_cnt[0]~18_combout\,
	cout => \dbk3|PB_cnt[0]~19\);

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

-- Location: LCCOMB_X106_Y4_N10
\dbk3|PB_sync_0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_sync_0~feeder_combout\ = \KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \dbk3|PB_sync_0~feeder_combout\);

-- Location: FF_X106_Y4_N11
\dbk3|PB_sync_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_sync_0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_sync_0~q\);

-- Location: FF_X105_Y4_N23
\dbk3|PB_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dbk3|PB_sync_0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_sync_1~q\);

-- Location: LCCOMB_X105_Y4_N22
\dbk3|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|comb~0_combout\ = \dbk3|PB_sync_1~q\ $ (!\dbk3|PB_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dbk3|PB_sync_1~q\,
	datad => \dbk3|PB_state~q\,
	combout => \dbk3|comb~0_combout\);

-- Location: FF_X106_Y4_N15
\dbk3|PB_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[0]~18_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(0));

-- Location: LCCOMB_X106_Y4_N16
\dbk3|PB_cnt[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[1]~20_combout\ = (\dbk3|PB_cnt\(1) & (!\dbk3|PB_cnt[0]~19\)) # (!\dbk3|PB_cnt\(1) & ((\dbk3|PB_cnt[0]~19\) # (GND)))
-- \dbk3|PB_cnt[1]~21\ = CARRY((!\dbk3|PB_cnt[0]~19\) # (!\dbk3|PB_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(1),
	datad => VCC,
	cin => \dbk3|PB_cnt[0]~19\,
	combout => \dbk3|PB_cnt[1]~20_combout\,
	cout => \dbk3|PB_cnt[1]~21\);

-- Location: FF_X106_Y4_N17
\dbk3|PB_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[1]~20_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(1));

-- Location: LCCOMB_X106_Y4_N18
\dbk3|PB_cnt[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[2]~22_combout\ = (\dbk3|PB_cnt\(2) & (\dbk3|PB_cnt[1]~21\ $ (GND))) # (!\dbk3|PB_cnt\(2) & (!\dbk3|PB_cnt[1]~21\ & VCC))
-- \dbk3|PB_cnt[2]~23\ = CARRY((\dbk3|PB_cnt\(2) & !\dbk3|PB_cnt[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(2),
	datad => VCC,
	cin => \dbk3|PB_cnt[1]~21\,
	combout => \dbk3|PB_cnt[2]~22_combout\,
	cout => \dbk3|PB_cnt[2]~23\);

-- Location: FF_X106_Y4_N19
\dbk3|PB_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[2]~22_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(2));

-- Location: LCCOMB_X106_Y4_N20
\dbk3|PB_cnt[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[3]~24_combout\ = (\dbk3|PB_cnt\(3) & (!\dbk3|PB_cnt[2]~23\)) # (!\dbk3|PB_cnt\(3) & ((\dbk3|PB_cnt[2]~23\) # (GND)))
-- \dbk3|PB_cnt[3]~25\ = CARRY((!\dbk3|PB_cnt[2]~23\) # (!\dbk3|PB_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(3),
	datad => VCC,
	cin => \dbk3|PB_cnt[2]~23\,
	combout => \dbk3|PB_cnt[3]~24_combout\,
	cout => \dbk3|PB_cnt[3]~25\);

-- Location: FF_X106_Y4_N21
\dbk3|PB_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[3]~24_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(3));

-- Location: LCCOMB_X106_Y4_N22
\dbk3|PB_cnt[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[4]~26_combout\ = (\dbk3|PB_cnt\(4) & (\dbk3|PB_cnt[3]~25\ $ (GND))) # (!\dbk3|PB_cnt\(4) & (!\dbk3|PB_cnt[3]~25\ & VCC))
-- \dbk3|PB_cnt[4]~27\ = CARRY((\dbk3|PB_cnt\(4) & !\dbk3|PB_cnt[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_cnt\(4),
	datad => VCC,
	cin => \dbk3|PB_cnt[3]~25\,
	combout => \dbk3|PB_cnt[4]~26_combout\,
	cout => \dbk3|PB_cnt[4]~27\);

-- Location: FF_X106_Y4_N23
\dbk3|PB_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[4]~26_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(4));

-- Location: LCCOMB_X106_Y4_N24
\dbk3|PB_cnt[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[5]~28_combout\ = (\dbk3|PB_cnt\(5) & (!\dbk3|PB_cnt[4]~27\)) # (!\dbk3|PB_cnt\(5) & ((\dbk3|PB_cnt[4]~27\) # (GND)))
-- \dbk3|PB_cnt[5]~29\ = CARRY((!\dbk3|PB_cnt[4]~27\) # (!\dbk3|PB_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(5),
	datad => VCC,
	cin => \dbk3|PB_cnt[4]~27\,
	combout => \dbk3|PB_cnt[5]~28_combout\,
	cout => \dbk3|PB_cnt[5]~29\);

-- Location: FF_X106_Y4_N25
\dbk3|PB_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[5]~28_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(5));

-- Location: LCCOMB_X106_Y4_N26
\dbk3|PB_cnt[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[6]~30_combout\ = (\dbk3|PB_cnt\(6) & (\dbk3|PB_cnt[5]~29\ $ (GND))) # (!\dbk3|PB_cnt\(6) & (!\dbk3|PB_cnt[5]~29\ & VCC))
-- \dbk3|PB_cnt[6]~31\ = CARRY((\dbk3|PB_cnt\(6) & !\dbk3|PB_cnt[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_cnt\(6),
	datad => VCC,
	cin => \dbk3|PB_cnt[5]~29\,
	combout => \dbk3|PB_cnt[6]~30_combout\,
	cout => \dbk3|PB_cnt[6]~31\);

-- Location: FF_X106_Y4_N27
\dbk3|PB_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[6]~30_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(6));

-- Location: LCCOMB_X106_Y4_N28
\dbk3|PB_cnt[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[7]~32_combout\ = (\dbk3|PB_cnt\(7) & (!\dbk3|PB_cnt[6]~31\)) # (!\dbk3|PB_cnt\(7) & ((\dbk3|PB_cnt[6]~31\) # (GND)))
-- \dbk3|PB_cnt[7]~33\ = CARRY((!\dbk3|PB_cnt[6]~31\) # (!\dbk3|PB_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(7),
	datad => VCC,
	cin => \dbk3|PB_cnt[6]~31\,
	combout => \dbk3|PB_cnt[7]~32_combout\,
	cout => \dbk3|PB_cnt[7]~33\);

-- Location: FF_X106_Y4_N29
\dbk3|PB_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[7]~32_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(7));

-- Location: LCCOMB_X106_Y4_N30
\dbk3|PB_cnt[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[8]~34_combout\ = (\dbk3|PB_cnt\(8) & (\dbk3|PB_cnt[7]~33\ $ (GND))) # (!\dbk3|PB_cnt\(8) & (!\dbk3|PB_cnt[7]~33\ & VCC))
-- \dbk3|PB_cnt[8]~35\ = CARRY((\dbk3|PB_cnt\(8) & !\dbk3|PB_cnt[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_cnt\(8),
	datad => VCC,
	cin => \dbk3|PB_cnt[7]~33\,
	combout => \dbk3|PB_cnt[8]~34_combout\,
	cout => \dbk3|PB_cnt[8]~35\);

-- Location: FF_X106_Y4_N31
\dbk3|PB_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[8]~34_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(8));

-- Location: LCCOMB_X106_Y3_N0
\dbk3|PB_cnt[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[9]~36_combout\ = (\dbk3|PB_cnt\(9) & (!\dbk3|PB_cnt[8]~35\)) # (!\dbk3|PB_cnt\(9) & ((\dbk3|PB_cnt[8]~35\) # (GND)))
-- \dbk3|PB_cnt[9]~37\ = CARRY((!\dbk3|PB_cnt[8]~35\) # (!\dbk3|PB_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(9),
	datad => VCC,
	cin => \dbk3|PB_cnt[8]~35\,
	combout => \dbk3|PB_cnt[9]~36_combout\,
	cout => \dbk3|PB_cnt[9]~37\);

-- Location: FF_X106_Y3_N1
\dbk3|PB_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[9]~36_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(9));

-- Location: LCCOMB_X106_Y3_N2
\dbk3|PB_cnt[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[10]~38_combout\ = (\dbk3|PB_cnt\(10) & (\dbk3|PB_cnt[9]~37\ $ (GND))) # (!\dbk3|PB_cnt\(10) & (!\dbk3|PB_cnt[9]~37\ & VCC))
-- \dbk3|PB_cnt[10]~39\ = CARRY((\dbk3|PB_cnt\(10) & !\dbk3|PB_cnt[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(10),
	datad => VCC,
	cin => \dbk3|PB_cnt[9]~37\,
	combout => \dbk3|PB_cnt[10]~38_combout\,
	cout => \dbk3|PB_cnt[10]~39\);

-- Location: FF_X106_Y3_N3
\dbk3|PB_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[10]~38_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(10));

-- Location: LCCOMB_X106_Y3_N4
\dbk3|PB_cnt[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[11]~40_combout\ = (\dbk3|PB_cnt\(11) & (!\dbk3|PB_cnt[10]~39\)) # (!\dbk3|PB_cnt\(11) & ((\dbk3|PB_cnt[10]~39\) # (GND)))
-- \dbk3|PB_cnt[11]~41\ = CARRY((!\dbk3|PB_cnt[10]~39\) # (!\dbk3|PB_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(11),
	datad => VCC,
	cin => \dbk3|PB_cnt[10]~39\,
	combout => \dbk3|PB_cnt[11]~40_combout\,
	cout => \dbk3|PB_cnt[11]~41\);

-- Location: FF_X106_Y3_N5
\dbk3|PB_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[11]~40_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(11));

-- Location: LCCOMB_X106_Y3_N6
\dbk3|PB_cnt[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[12]~42_combout\ = (\dbk3|PB_cnt\(12) & (\dbk3|PB_cnt[11]~41\ $ (GND))) # (!\dbk3|PB_cnt\(12) & (!\dbk3|PB_cnt[11]~41\ & VCC))
-- \dbk3|PB_cnt[12]~43\ = CARRY((\dbk3|PB_cnt\(12) & !\dbk3|PB_cnt[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(12),
	datad => VCC,
	cin => \dbk3|PB_cnt[11]~41\,
	combout => \dbk3|PB_cnt[12]~42_combout\,
	cout => \dbk3|PB_cnt[12]~43\);

-- Location: FF_X106_Y3_N7
\dbk3|PB_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[12]~42_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(12));

-- Location: LCCOMB_X106_Y3_N8
\dbk3|PB_cnt[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[13]~44_combout\ = (\dbk3|PB_cnt\(13) & (!\dbk3|PB_cnt[12]~43\)) # (!\dbk3|PB_cnt\(13) & ((\dbk3|PB_cnt[12]~43\) # (GND)))
-- \dbk3|PB_cnt[13]~45\ = CARRY((!\dbk3|PB_cnt[12]~43\) # (!\dbk3|PB_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(13),
	datad => VCC,
	cin => \dbk3|PB_cnt[12]~43\,
	combout => \dbk3|PB_cnt[13]~44_combout\,
	cout => \dbk3|PB_cnt[13]~45\);

-- Location: FF_X106_Y3_N9
\dbk3|PB_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[13]~44_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(13));

-- Location: LCCOMB_X106_Y3_N10
\dbk3|PB_cnt[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[14]~46_combout\ = (\dbk3|PB_cnt\(14) & (\dbk3|PB_cnt[13]~45\ $ (GND))) # (!\dbk3|PB_cnt\(14) & (!\dbk3|PB_cnt[13]~45\ & VCC))
-- \dbk3|PB_cnt[14]~47\ = CARRY((\dbk3|PB_cnt\(14) & !\dbk3|PB_cnt[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_cnt\(14),
	datad => VCC,
	cin => \dbk3|PB_cnt[13]~45\,
	combout => \dbk3|PB_cnt[14]~46_combout\,
	cout => \dbk3|PB_cnt[14]~47\);

-- Location: FF_X106_Y3_N11
\dbk3|PB_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[14]~46_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(14));

-- Location: LCCOMB_X106_Y3_N12
\dbk3|PB_cnt[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[15]~48_combout\ = (\dbk3|PB_cnt\(15) & (!\dbk3|PB_cnt[14]~47\)) # (!\dbk3|PB_cnt\(15) & ((\dbk3|PB_cnt[14]~47\) # (GND)))
-- \dbk3|PB_cnt[15]~49\ = CARRY((!\dbk3|PB_cnt[14]~47\) # (!\dbk3|PB_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_cnt\(15),
	datad => VCC,
	cin => \dbk3|PB_cnt[14]~47\,
	combout => \dbk3|PB_cnt[15]~48_combout\,
	cout => \dbk3|PB_cnt[15]~49\);

-- Location: FF_X106_Y3_N13
\dbk3|PB_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[15]~48_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(15));

-- Location: LCCOMB_X106_Y3_N14
\dbk3|PB_cnt[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[16]~50_combout\ = (\dbk3|PB_cnt\(16) & (\dbk3|PB_cnt[15]~49\ $ (GND))) # (!\dbk3|PB_cnt\(16) & (!\dbk3|PB_cnt[15]~49\ & VCC))
-- \dbk3|PB_cnt[16]~51\ = CARRY((\dbk3|PB_cnt\(16) & !\dbk3|PB_cnt[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_cnt\(16),
	datad => VCC,
	cin => \dbk3|PB_cnt[15]~49\,
	combout => \dbk3|PB_cnt[16]~50_combout\,
	cout => \dbk3|PB_cnt[16]~51\);

-- Location: FF_X106_Y3_N15
\dbk3|PB_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[16]~50_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(16));

-- Location: LCCOMB_X106_Y3_N16
\dbk3|PB_cnt[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_cnt[17]~52_combout\ = \dbk3|PB_cnt[16]~51\ $ (\dbk3|PB_cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dbk3|PB_cnt\(17),
	cin => \dbk3|PB_cnt[16]~51\,
	combout => \dbk3|PB_cnt[17]~52_combout\);

-- Location: FF_X106_Y3_N17
\dbk3|PB_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_cnt[17]~52_combout\,
	sclr => \dbk3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_cnt\(17));

-- Location: LCCOMB_X106_Y3_N22
\dbk3|PB_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_state~0_combout\ = (\dbk3|PB_cnt\(15) & (\dbk3|PB_cnt\(16) & (\dbk3|PB_cnt\(14) & \dbk3|PB_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_cnt\(15),
	datab => \dbk3|PB_cnt\(16),
	datac => \dbk3|PB_cnt\(14),
	datad => \dbk3|PB_cnt\(17),
	combout => \dbk3|PB_state~0_combout\);

-- Location: LCCOMB_X105_Y4_N28
\dbk3|PB_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_state~1_combout\ = (\dbk3|PB_cnt\(1) & (\dbk3|PB_cnt\(0) & (\dbk3|PB_sync_1~q\ $ (\dbk3|PB_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_sync_1~q\,
	datab => \dbk3|PB_state~q\,
	datac => \dbk3|PB_cnt\(1),
	datad => \dbk3|PB_cnt\(0),
	combout => \dbk3|PB_state~1_combout\);

-- Location: LCCOMB_X106_Y4_N12
\dbk3|PB_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_state~2_combout\ = (\dbk3|PB_cnt\(5) & (\dbk3|PB_cnt\(3) & (\dbk3|PB_cnt\(4) & \dbk3|PB_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_cnt\(5),
	datab => \dbk3|PB_cnt\(3),
	datac => \dbk3|PB_cnt\(4),
	datad => \dbk3|PB_cnt\(2),
	combout => \dbk3|PB_state~2_combout\);

-- Location: LCCOMB_X106_Y3_N20
\dbk3|PB_state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_state~4_combout\ = (\dbk3|PB_cnt\(10) & (\dbk3|PB_cnt\(13) & (\dbk3|PB_cnt\(11) & \dbk3|PB_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_cnt\(10),
	datab => \dbk3|PB_cnt\(13),
	datac => \dbk3|PB_cnt\(11),
	datad => \dbk3|PB_cnt\(12),
	combout => \dbk3|PB_state~4_combout\);

-- Location: LCCOMB_X105_Y4_N20
\dbk3|PB_state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_state~3_combout\ = (\dbk3|PB_cnt\(8) & (\dbk3|PB_cnt\(7) & (\dbk3|PB_cnt\(9) & \dbk3|PB_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_cnt\(8),
	datab => \dbk3|PB_cnt\(7),
	datac => \dbk3|PB_cnt\(9),
	datad => \dbk3|PB_cnt\(6),
	combout => \dbk3|PB_state~3_combout\);

-- Location: LCCOMB_X105_Y4_N10
\dbk3|PB_state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_state~5_combout\ = (\dbk3|PB_state~1_combout\ & (\dbk3|PB_state~2_combout\ & (\dbk3|PB_state~4_combout\ & \dbk3|PB_state~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk3|PB_state~1_combout\,
	datab => \dbk3|PB_state~2_combout\,
	datac => \dbk3|PB_state~4_combout\,
	datad => \dbk3|PB_state~3_combout\,
	combout => \dbk3|PB_state~5_combout\);

-- Location: LCCOMB_X105_Y4_N16
\dbk3|PB_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_state~6_combout\ = \dbk3|PB_state~q\ $ (((\dbk3|PB_state~0_combout\ & \dbk3|PB_state~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_state~q\,
	datac => \dbk3|PB_state~0_combout\,
	datad => \dbk3|PB_state~5_combout\,
	combout => \dbk3|PB_state~6_combout\);

-- Location: LCCOMB_X105_Y4_N12
\dbk3|PB_state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk3|PB_state~feeder_combout\ = \dbk3|PB_state~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dbk3|PB_state~6_combout\,
	combout => \dbk3|PB_state~feeder_combout\);

-- Location: FF_X105_Y4_N13
\dbk3|PB_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk3|PB_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk3|PB_state~q\);

-- Location: CLKCTRL_G17
\dbk3|PB_state~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dbk3|PB_state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dbk3|PB_state~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y47_N14
\dbk0|PB_cnt[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[0]~18_combout\ = \dbk0|PB_cnt\(0) $ (VCC)
-- \dbk0|PB_cnt[0]~19\ = CARRY(\dbk0|PB_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(0),
	datad => VCC,
	combout => \dbk0|PB_cnt[0]~18_combout\,
	cout => \dbk0|PB_cnt[0]~19\);

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

-- Location: LCCOMB_X62_Y47_N10
\dbk0|PB_sync_0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_sync_0~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \dbk0|PB_sync_0~feeder_combout\);

-- Location: FF_X62_Y47_N11
\dbk0|PB_sync_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_sync_0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_sync_0~q\);

-- Location: FF_X61_Y47_N19
\dbk0|PB_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dbk0|PB_sync_0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_sync_1~q\);

-- Location: LCCOMB_X61_Y47_N18
\dbk0|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|comb~0_combout\ = \dbk0|PB_sync_1~q\ $ (\dbk0|PB_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dbk0|PB_sync_1~q\,
	datad => \dbk0|PB_state~q\,
	combout => \dbk0|comb~0_combout\);

-- Location: FF_X62_Y47_N15
\dbk0|PB_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[0]~18_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(0));

-- Location: LCCOMB_X62_Y47_N16
\dbk0|PB_cnt[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[1]~20_combout\ = (\dbk0|PB_cnt\(1) & (!\dbk0|PB_cnt[0]~19\)) # (!\dbk0|PB_cnt\(1) & ((\dbk0|PB_cnt[0]~19\) # (GND)))
-- \dbk0|PB_cnt[1]~21\ = CARRY((!\dbk0|PB_cnt[0]~19\) # (!\dbk0|PB_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(1),
	datad => VCC,
	cin => \dbk0|PB_cnt[0]~19\,
	combout => \dbk0|PB_cnt[1]~20_combout\,
	cout => \dbk0|PB_cnt[1]~21\);

-- Location: FF_X62_Y47_N17
\dbk0|PB_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[1]~20_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(1));

-- Location: LCCOMB_X62_Y47_N18
\dbk0|PB_cnt[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[2]~22_combout\ = (\dbk0|PB_cnt\(2) & (\dbk0|PB_cnt[1]~21\ $ (GND))) # (!\dbk0|PB_cnt\(2) & (!\dbk0|PB_cnt[1]~21\ & VCC))
-- \dbk0|PB_cnt[2]~23\ = CARRY((\dbk0|PB_cnt\(2) & !\dbk0|PB_cnt[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(2),
	datad => VCC,
	cin => \dbk0|PB_cnt[1]~21\,
	combout => \dbk0|PB_cnt[2]~22_combout\,
	cout => \dbk0|PB_cnt[2]~23\);

-- Location: FF_X62_Y47_N19
\dbk0|PB_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[2]~22_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(2));

-- Location: LCCOMB_X62_Y47_N20
\dbk0|PB_cnt[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[3]~24_combout\ = (\dbk0|PB_cnt\(3) & (!\dbk0|PB_cnt[2]~23\)) # (!\dbk0|PB_cnt\(3) & ((\dbk0|PB_cnt[2]~23\) # (GND)))
-- \dbk0|PB_cnt[3]~25\ = CARRY((!\dbk0|PB_cnt[2]~23\) # (!\dbk0|PB_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(3),
	datad => VCC,
	cin => \dbk0|PB_cnt[2]~23\,
	combout => \dbk0|PB_cnt[3]~24_combout\,
	cout => \dbk0|PB_cnt[3]~25\);

-- Location: FF_X62_Y47_N21
\dbk0|PB_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[3]~24_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(3));

-- Location: LCCOMB_X62_Y47_N22
\dbk0|PB_cnt[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[4]~26_combout\ = (\dbk0|PB_cnt\(4) & (\dbk0|PB_cnt[3]~25\ $ (GND))) # (!\dbk0|PB_cnt\(4) & (!\dbk0|PB_cnt[3]~25\ & VCC))
-- \dbk0|PB_cnt[4]~27\ = CARRY((\dbk0|PB_cnt\(4) & !\dbk0|PB_cnt[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(4),
	datad => VCC,
	cin => \dbk0|PB_cnt[3]~25\,
	combout => \dbk0|PB_cnt[4]~26_combout\,
	cout => \dbk0|PB_cnt[4]~27\);

-- Location: FF_X62_Y47_N23
\dbk0|PB_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[4]~26_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(4));

-- Location: LCCOMB_X62_Y47_N24
\dbk0|PB_cnt[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[5]~28_combout\ = (\dbk0|PB_cnt\(5) & (!\dbk0|PB_cnt[4]~27\)) # (!\dbk0|PB_cnt\(5) & ((\dbk0|PB_cnt[4]~27\) # (GND)))
-- \dbk0|PB_cnt[5]~29\ = CARRY((!\dbk0|PB_cnt[4]~27\) # (!\dbk0|PB_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(5),
	datad => VCC,
	cin => \dbk0|PB_cnt[4]~27\,
	combout => \dbk0|PB_cnt[5]~28_combout\,
	cout => \dbk0|PB_cnt[5]~29\);

-- Location: FF_X62_Y47_N25
\dbk0|PB_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[5]~28_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(5));

-- Location: LCCOMB_X62_Y47_N26
\dbk0|PB_cnt[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[6]~30_combout\ = (\dbk0|PB_cnt\(6) & (\dbk0|PB_cnt[5]~29\ $ (GND))) # (!\dbk0|PB_cnt\(6) & (!\dbk0|PB_cnt[5]~29\ & VCC))
-- \dbk0|PB_cnt[6]~31\ = CARRY((\dbk0|PB_cnt\(6) & !\dbk0|PB_cnt[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(6),
	datad => VCC,
	cin => \dbk0|PB_cnt[5]~29\,
	combout => \dbk0|PB_cnt[6]~30_combout\,
	cout => \dbk0|PB_cnt[6]~31\);

-- Location: FF_X62_Y47_N27
\dbk0|PB_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[6]~30_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(6));

-- Location: LCCOMB_X62_Y47_N28
\dbk0|PB_cnt[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[7]~32_combout\ = (\dbk0|PB_cnt\(7) & (!\dbk0|PB_cnt[6]~31\)) # (!\dbk0|PB_cnt\(7) & ((\dbk0|PB_cnt[6]~31\) # (GND)))
-- \dbk0|PB_cnt[7]~33\ = CARRY((!\dbk0|PB_cnt[6]~31\) # (!\dbk0|PB_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(7),
	datad => VCC,
	cin => \dbk0|PB_cnt[6]~31\,
	combout => \dbk0|PB_cnt[7]~32_combout\,
	cout => \dbk0|PB_cnt[7]~33\);

-- Location: FF_X62_Y47_N29
\dbk0|PB_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[7]~32_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(7));

-- Location: LCCOMB_X62_Y47_N30
\dbk0|PB_cnt[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[8]~34_combout\ = (\dbk0|PB_cnt\(8) & (\dbk0|PB_cnt[7]~33\ $ (GND))) # (!\dbk0|PB_cnt\(8) & (!\dbk0|PB_cnt[7]~33\ & VCC))
-- \dbk0|PB_cnt[8]~35\ = CARRY((\dbk0|PB_cnt\(8) & !\dbk0|PB_cnt[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(8),
	datad => VCC,
	cin => \dbk0|PB_cnt[7]~33\,
	combout => \dbk0|PB_cnt[8]~34_combout\,
	cout => \dbk0|PB_cnt[8]~35\);

-- Location: FF_X62_Y47_N31
\dbk0|PB_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[8]~34_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(8));

-- Location: LCCOMB_X62_Y46_N0
\dbk0|PB_cnt[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[9]~36_combout\ = (\dbk0|PB_cnt\(9) & (!\dbk0|PB_cnt[8]~35\)) # (!\dbk0|PB_cnt\(9) & ((\dbk0|PB_cnt[8]~35\) # (GND)))
-- \dbk0|PB_cnt[9]~37\ = CARRY((!\dbk0|PB_cnt[8]~35\) # (!\dbk0|PB_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(9),
	datad => VCC,
	cin => \dbk0|PB_cnt[8]~35\,
	combout => \dbk0|PB_cnt[9]~36_combout\,
	cout => \dbk0|PB_cnt[9]~37\);

-- Location: FF_X62_Y46_N1
\dbk0|PB_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[9]~36_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(9));

-- Location: LCCOMB_X62_Y46_N2
\dbk0|PB_cnt[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[10]~38_combout\ = (\dbk0|PB_cnt\(10) & (\dbk0|PB_cnt[9]~37\ $ (GND))) # (!\dbk0|PB_cnt\(10) & (!\dbk0|PB_cnt[9]~37\ & VCC))
-- \dbk0|PB_cnt[10]~39\ = CARRY((\dbk0|PB_cnt\(10) & !\dbk0|PB_cnt[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(10),
	datad => VCC,
	cin => \dbk0|PB_cnt[9]~37\,
	combout => \dbk0|PB_cnt[10]~38_combout\,
	cout => \dbk0|PB_cnt[10]~39\);

-- Location: FF_X62_Y46_N3
\dbk0|PB_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[10]~38_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(10));

-- Location: LCCOMB_X62_Y46_N4
\dbk0|PB_cnt[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[11]~40_combout\ = (\dbk0|PB_cnt\(11) & (!\dbk0|PB_cnt[10]~39\)) # (!\dbk0|PB_cnt\(11) & ((\dbk0|PB_cnt[10]~39\) # (GND)))
-- \dbk0|PB_cnt[11]~41\ = CARRY((!\dbk0|PB_cnt[10]~39\) # (!\dbk0|PB_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(11),
	datad => VCC,
	cin => \dbk0|PB_cnt[10]~39\,
	combout => \dbk0|PB_cnt[11]~40_combout\,
	cout => \dbk0|PB_cnt[11]~41\);

-- Location: FF_X62_Y46_N5
\dbk0|PB_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[11]~40_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(11));

-- Location: LCCOMB_X62_Y46_N6
\dbk0|PB_cnt[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[12]~42_combout\ = (\dbk0|PB_cnt\(12) & (\dbk0|PB_cnt[11]~41\ $ (GND))) # (!\dbk0|PB_cnt\(12) & (!\dbk0|PB_cnt[11]~41\ & VCC))
-- \dbk0|PB_cnt[12]~43\ = CARRY((\dbk0|PB_cnt\(12) & !\dbk0|PB_cnt[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(12),
	datad => VCC,
	cin => \dbk0|PB_cnt[11]~41\,
	combout => \dbk0|PB_cnt[12]~42_combout\,
	cout => \dbk0|PB_cnt[12]~43\);

-- Location: FF_X62_Y46_N7
\dbk0|PB_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[12]~42_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(12));

-- Location: LCCOMB_X62_Y46_N8
\dbk0|PB_cnt[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[13]~44_combout\ = (\dbk0|PB_cnt\(13) & (!\dbk0|PB_cnt[12]~43\)) # (!\dbk0|PB_cnt\(13) & ((\dbk0|PB_cnt[12]~43\) # (GND)))
-- \dbk0|PB_cnt[13]~45\ = CARRY((!\dbk0|PB_cnt[12]~43\) # (!\dbk0|PB_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(13),
	datad => VCC,
	cin => \dbk0|PB_cnt[12]~43\,
	combout => \dbk0|PB_cnt[13]~44_combout\,
	cout => \dbk0|PB_cnt[13]~45\);

-- Location: FF_X62_Y46_N9
\dbk0|PB_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[13]~44_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(13));

-- Location: LCCOMB_X62_Y46_N10
\dbk0|PB_cnt[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[14]~46_combout\ = (\dbk0|PB_cnt\(14) & (\dbk0|PB_cnt[13]~45\ $ (GND))) # (!\dbk0|PB_cnt\(14) & (!\dbk0|PB_cnt[13]~45\ & VCC))
-- \dbk0|PB_cnt[14]~47\ = CARRY((\dbk0|PB_cnt\(14) & !\dbk0|PB_cnt[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(14),
	datad => VCC,
	cin => \dbk0|PB_cnt[13]~45\,
	combout => \dbk0|PB_cnt[14]~46_combout\,
	cout => \dbk0|PB_cnt[14]~47\);

-- Location: FF_X62_Y46_N11
\dbk0|PB_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[14]~46_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(14));

-- Location: LCCOMB_X62_Y46_N12
\dbk0|PB_cnt[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[15]~48_combout\ = (\dbk0|PB_cnt\(15) & (!\dbk0|PB_cnt[14]~47\)) # (!\dbk0|PB_cnt\(15) & ((\dbk0|PB_cnt[14]~47\) # (GND)))
-- \dbk0|PB_cnt[15]~49\ = CARRY((!\dbk0|PB_cnt[14]~47\) # (!\dbk0|PB_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(15),
	datad => VCC,
	cin => \dbk0|PB_cnt[14]~47\,
	combout => \dbk0|PB_cnt[15]~48_combout\,
	cout => \dbk0|PB_cnt[15]~49\);

-- Location: FF_X62_Y46_N13
\dbk0|PB_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[15]~48_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(15));

-- Location: LCCOMB_X62_Y46_N14
\dbk0|PB_cnt[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[16]~50_combout\ = (\dbk0|PB_cnt\(16) & (\dbk0|PB_cnt[15]~49\ $ (GND))) # (!\dbk0|PB_cnt\(16) & (!\dbk0|PB_cnt[15]~49\ & VCC))
-- \dbk0|PB_cnt[16]~51\ = CARRY((\dbk0|PB_cnt\(16) & !\dbk0|PB_cnt[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbk0|PB_cnt\(16),
	datad => VCC,
	cin => \dbk0|PB_cnt[15]~49\,
	combout => \dbk0|PB_cnt[16]~50_combout\,
	cout => \dbk0|PB_cnt[16]~51\);

-- Location: FF_X62_Y46_N15
\dbk0|PB_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[16]~50_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(16));

-- Location: LCCOMB_X62_Y46_N16
\dbk0|PB_cnt[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_cnt[17]~52_combout\ = \dbk0|PB_cnt[16]~51\ $ (\dbk0|PB_cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dbk0|PB_cnt\(17),
	cin => \dbk0|PB_cnt[16]~51\,
	combout => \dbk0|PB_cnt[17]~52_combout\);

-- Location: FF_X62_Y46_N17
\dbk0|PB_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbk0|PB_cnt[17]~52_combout\,
	sclr => \dbk0|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_cnt\(17));

-- Location: LCCOMB_X62_Y46_N18
\dbk0|PB_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_state~0_combout\ = (\dbk0|PB_cnt\(14) & (\dbk0|PB_cnt\(17) & (\dbk0|PB_cnt\(16) & \dbk0|PB_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(14),
	datab => \dbk0|PB_cnt\(17),
	datac => \dbk0|PB_cnt\(16),
	datad => \dbk0|PB_cnt\(15),
	combout => \dbk0|PB_state~0_combout\);

-- Location: LCCOMB_X62_Y47_N12
\dbk0|PB_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_state~1_combout\ = (\dbk0|PB_cnt\(5) & (\dbk0|PB_cnt\(3) & (\dbk0|PB_cnt\(4) & \dbk0|PB_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(5),
	datab => \dbk0|PB_cnt\(3),
	datac => \dbk0|PB_cnt\(4),
	datad => \dbk0|PB_cnt\(2),
	combout => \dbk0|PB_state~1_combout\);

-- Location: LCCOMB_X61_Y47_N0
\dbk0|PB_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_state~2_combout\ = (\dbk0|PB_cnt\(0) & (\dbk0|comb~0_combout\ & (\dbk0|PB_state~1_combout\ & \dbk0|PB_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(0),
	datab => \dbk0|comb~0_combout\,
	datac => \dbk0|PB_state~1_combout\,
	datad => \dbk0|PB_cnt\(1),
	combout => \dbk0|PB_state~2_combout\);

-- Location: LCCOMB_X62_Y47_N2
\dbk0|PB_state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_state~3_combout\ = (\dbk0|PB_cnt\(6) & (\dbk0|PB_cnt\(7) & (\dbk0|PB_cnt\(8) & \dbk0|PB_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(6),
	datab => \dbk0|PB_cnt\(7),
	datac => \dbk0|PB_cnt\(8),
	datad => \dbk0|PB_cnt\(9),
	combout => \dbk0|PB_state~3_combout\);

-- Location: LCCOMB_X62_Y46_N28
\dbk0|PB_state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_state~4_combout\ = (\dbk0|PB_cnt\(11) & \dbk0|PB_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dbk0|PB_cnt\(11),
	datad => \dbk0|PB_cnt\(10),
	combout => \dbk0|PB_state~4_combout\);

-- Location: LCCOMB_X62_Y47_N4
\dbk0|PB_state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_state~5_combout\ = (\dbk0|PB_cnt\(12) & (\dbk0|PB_state~3_combout\ & (\dbk0|PB_cnt\(13) & \dbk0|PB_state~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_cnt\(12),
	datab => \dbk0|PB_state~3_combout\,
	datac => \dbk0|PB_cnt\(13),
	datad => \dbk0|PB_state~4_combout\,
	combout => \dbk0|PB_state~5_combout\);

-- Location: LCCOMB_X61_Y47_N24
\dbk0|PB_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dbk0|PB_state~6_combout\ = \dbk0|PB_state~q\ $ (((\dbk0|PB_state~0_combout\ & (\dbk0|PB_state~2_combout\ & \dbk0|PB_state~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_state~0_combout\,
	datab => \dbk0|PB_state~2_combout\,
	datac => \dbk0|PB_state~q\,
	datad => \dbk0|PB_state~5_combout\,
	combout => \dbk0|PB_state~6_combout\);

-- Location: FF_X61_Y47_N25
\dbk0|PB_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \dbk0|PB_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbk0|PB_state~q\);

-- Location: LCCOMB_X105_Y4_N26
\clockGenerator|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|count[0]~3_combout\ = !\clockGenerator|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockGenerator|count\(0),
	combout => \clockGenerator|count[0]~3_combout\);

-- Location: FF_X105_Y4_N27
\clockGenerator|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|count\(0));

-- Location: LCCOMB_X105_Y4_N14
\clockGenerator|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|count[1]~0_combout\ = \clockGenerator|count\(0) $ (\clockGenerator|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(0),
	datac => \clockGenerator|count\(1),
	combout => \clockGenerator|count[1]~0_combout\);

-- Location: FF_X105_Y4_N15
\clockGenerator|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|count\(1));

-- Location: LCCOMB_X105_Y4_N8
\clockGenerator|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|f0~0_combout\ = (!\clockGenerator|count\(0) & !\clockGenerator|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(0),
	datac => \clockGenerator|count\(1),
	combout => \clockGenerator|f0~0_combout\);

-- Location: LCCOMB_X105_Y4_N24
\clockGenerator|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|count~2_combout\ = (\clockGenerator|count\(1) & ((\clockGenerator|count\(2) & ((!\clockGenerator|count\(0)))) # (!\clockGenerator|count\(2) & (\clockGenerator|count\(3) & \clockGenerator|count\(0))))) # (!\clockGenerator|count\(1) & 
-- (((\clockGenerator|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(3),
	datab => \clockGenerator|count\(1),
	datac => \clockGenerator|count\(2),
	datad => \clockGenerator|count\(0),
	combout => \clockGenerator|count~2_combout\);

-- Location: FF_X105_Y4_N25
\clockGenerator|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|count\(2));

-- Location: LCCOMB_X105_Y4_N4
\clockGenerator|count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|count[3]~1_combout\ = \clockGenerator|count\(3) $ (((\clockGenerator|count\(2) & (\clockGenerator|count\(1) & \clockGenerator|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(2),
	datab => \clockGenerator|count\(1),
	datac => \clockGenerator|count\(3),
	datad => \clockGenerator|count\(0),
	combout => \clockGenerator|count[3]~1_combout\);

-- Location: FF_X105_Y4_N5
\clockGenerator|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|count\(3));

-- Location: LCCOMB_X105_Y4_N30
\clockGenerator|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|Equal3~0_combout\ = (!\clockGenerator|count\(3) & !\clockGenerator|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockGenerator|count\(3),
	datad => \clockGenerator|count\(2),
	combout => \clockGenerator|Equal3~0_combout\);

-- Location: FF_X105_Y4_N9
\clockGenerator|f0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|f0~0_combout\,
	ena => \clockGenerator|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|f0~q\);

-- Location: LCCOMB_X105_Y4_N6
FETCH_clk : cycloneive_lcell_comb
-- Equation(s):
-- \FETCH_clk~combout\ = LCELL((\clockGenerator|f0~q\ & ((!\dbk3|PB_state~q\) # (!\dbk0|PB_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbk0|PB_state~q\,
	datac => \clockGenerator|f0~q\,
	datad => \dbk3|PB_state~q\,
	combout => \FETCH_clk~combout\);

-- Location: CLKCTRL_G9
\FETCH_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FETCH_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FETCH_clk~clkctrl_outclk\);

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

-- Location: FF_X102_Y6_N23
\switches|codop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|codop\(2));

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

-- Location: FF_X103_Y5_N3
\switches|codop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|codop\(3));

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

-- Location: LCCOMB_X101_Y6_N22
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

-- Location: FF_X101_Y6_N23
\switches|codop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	d => \switches|codop[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|codop\(1));

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

-- Location: FF_X103_Y5_N9
\switches|codop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|codop\(0));

-- Location: LCCOMB_X101_Y5_N30
\aluExecute|out[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out[7]~3_combout\ = (\switches|codop\(2) & (\switches|codop\(3))) # (!\switches|codop\(2) & (\switches|codop\(1) & (\switches|codop\(3) $ (!\switches|codop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(2),
	datab => \switches|codop\(3),
	datac => \switches|codop\(1),
	datad => \switches|codop\(0),
	combout => \aluExecute|out[7]~3_combout\);

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

-- Location: FF_X105_Y6_N31
\switches|addB_LMM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addB_LMM\(1));

-- Location: LCCOMB_X105_Y4_N2
\clockGenerator|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|Equal3~1_combout\ = (!\clockGenerator|count\(3) & (\clockGenerator|count\(0) & (\clockGenerator|count\(1) & !\clockGenerator|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(3),
	datab => \clockGenerator|count\(0),
	datac => \clockGenerator|count\(1),
	datad => \clockGenerator|count\(2),
	combout => \clockGenerator|Equal3~1_combout\);

-- Location: FF_X105_Y4_N3
\clockGenerator|f3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|Equal3~1_combout\,
	ena => \clockGenerator|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|f3~q\);

-- Location: LCCOMB_X105_Y4_N18
WRITEBACK_clk : cycloneive_lcell_comb
-- Equation(s):
-- \WRITEBACK_clk~combout\ = (\clockGenerator|f3~q\ & !\dbk3|PB_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockGenerator|f3~q\,
	datad => \dbk3|PB_state~q\,
	combout => \WRITEBACK_clk~combout\);

-- Location: CLKCTRL_G15
\WRITEBACK_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WRITEBACK_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WRITEBACK_clk~clkctrl_outclk\);

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

-- Location: LCCOMB_X108_Y6_N28
\switches|addC[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \switches|addC[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \switches|addC[0]~feeder_combout\);

-- Location: FF_X108_Y6_N29
\switches|addC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	d => \switches|addC[0]~feeder_combout\,
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

-- Location: LCCOMB_X108_Y6_N6
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

-- Location: FF_X108_Y6_N7
\switches|addC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
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

-- Location: LCCOMB_X108_Y6_N0
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

-- Location: FF_X108_Y6_N1
\switches|addC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
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

-- Location: LCCOMB_X108_Y6_N22
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

-- Location: FF_X108_Y6_N23
\switches|addC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	d => \switches|addC[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addC\(3));

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

-- Location: LCCOMB_X101_Y5_N14
\aluExecute|out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out[7]~0_combout\ = (\switches|codop\(0) & (!\switches|codop\(2))) # (!\switches|codop\(0) & (\switches|codop\(1) $ (((!\switches|codop\(2) & !\switches|codop\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(2),
	datab => \switches|codop\(3),
	datac => \switches|codop\(1),
	datad => \switches|codop\(0),
	combout => \aluExecute|out[7]~0_combout\);

-- Location: LCCOMB_X102_Y6_N22
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\switches|codop\(3)) # ((\switches|codop\(1) & ((\switches|codop\(2)) # (!\switches|codop\(0)))))

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
	combout => \comb~0_combout\);

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

-- Location: LCCOMB_X101_Y5_N24
\aluExecute|out[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out[7]~1_combout\ = (\switches|codop\(2) & ((\switches|codop\(3)) # ((\switches|codop\(1)) # (!\switches|codop\(0))))) # (!\switches|codop\(2) & (\switches|codop\(1) & ((\switches|codop\(0)) # (!\switches|codop\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(2),
	datab => \switches|codop\(3),
	datac => \switches|codop\(1),
	datad => \switches|codop\(0),
	combout => \aluExecute|out[7]~1_combout\);

-- Location: M9K_X104_Y4_N0
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
	clk0 => \WRITEBACK_clk~clkctrl_outclk\,
	clk1 => \FETCH_clk~clkctrl_outclk\,
	ena0 => \clockGenerator|f3~q\,
	portadatain => \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regFile|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X104_Y6_N0
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
	clk0 => \WRITEBACK_clk~clkctrl_outclk\,
	clk1 => \FETCH_clk~clkctrl_outclk\,
	ena0 => \clockGenerator|f3~q\,
	portadatain => \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regFile|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X100_Y4_N20
\aluExecute|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux0~0_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a15\ $ (((!\comb~0_combout\ & (!\aluExecute|out[7]~1_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a15\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a15\,
	combout => \aluExecute|Mux0~0_combout\);

-- Location: LCCOMB_X102_Y6_N24
\finalB[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[15]~1_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a15\ & !\comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a15\,
	datad => \comb~0_combout\,
	combout => \finalB[15]~1_combout\);

-- Location: LCCOMB_X101_Y4_N26
\aluExecute|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux0~1_combout\ = (\aluExecute|out[7]~0_combout\ & (((\aluExecute|Mux0~0_combout\ & \finalB[15]~1_combout\)) # (!\aluExecute|out[7]~1_combout\))) # (!\aluExecute|out[7]~0_combout\ & ((\aluExecute|Mux0~0_combout\) # 
-- ((\aluExecute|out[7]~1_combout\ & \finalB[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~1_combout\,
	datab => \aluExecute|Mux0~0_combout\,
	datac => \aluExecute|out[7]~0_combout\,
	datad => \finalB[15]~1_combout\,
	combout => \aluExecute|Mux0~1_combout\);

-- Location: LCCOMB_X101_Y4_N4
\aluExecute|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux0~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~3_combout\,
	datac => \aluExecute|Mux0~1_combout\,
	combout => \aluExecute|Mux0~2_combout\);

-- Location: LCCOMB_X101_Y5_N6
\aluExecute|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~34_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a15\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches|codop\(0),
	datac => \switches|codop\(3),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a15\,
	combout => \aluExecute|Add0~34_combout\);

-- Location: LCCOMB_X103_Y5_N2
\aluExecute|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~35_combout\ = \switches|codop\(1) $ (((\regFile|registers_rtl_1|auto_generated|ram_block1a15\ & !\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a15\,
	datab => \comb~0_combout\,
	datad => \switches|codop\(1),
	combout => \aluExecute|Add0~35_combout\);

-- Location: LCCOMB_X103_Y5_N24
\aluExecute|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~37_combout\ = \switches|codop\(1) $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(1),
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a14\,
	combout => \aluExecute|Add0~37_combout\);

-- Location: LCCOMB_X101_Y4_N22
\aluExecute|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~36_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a14\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches|codop\(0),
	datac => \switches|codop\(3),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a14\,
	combout => \aluExecute|Add0~36_combout\);

-- Location: LCCOMB_X101_Y6_N8
\aluExecute|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~39_combout\ = \switches|codop\(1) $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(1),
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a13\,
	combout => \aluExecute|Add0~39_combout\);

-- Location: LCCOMB_X101_Y4_N28
\aluExecute|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~38_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a13\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a13\,
	datad => \switches|codop\(0),
	combout => \aluExecute|Add0~38_combout\);

-- Location: LCCOMB_X101_Y4_N14
\aluExecute|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~40_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a12\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches|codop\(0),
	datac => \switches|codop\(3),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a12\,
	combout => \aluExecute|Add0~40_combout\);

-- Location: LCCOMB_X103_Y4_N26
\aluExecute|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~41_combout\ = \switches|codop\(1) $ (((\regFile|registers_rtl_1|auto_generated|ram_block1a12\ & !\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(1),
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a12\,
	datad => \comb~0_combout\,
	combout => \aluExecute|Add0~41_combout\);

-- Location: LCCOMB_X101_Y4_N16
\aluExecute|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~42_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a11\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches|codop\(0),
	datac => \switches|codop\(3),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a11\,
	combout => \aluExecute|Add0~42_combout\);

-- Location: LCCOMB_X102_Y4_N20
\aluExecute|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~43_combout\ = \switches|codop\(1) $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \switches|codop\(1),
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a11\,
	combout => \aluExecute|Add0~43_combout\);

-- Location: LCCOMB_X102_Y4_N22
\aluExecute|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~44_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a10\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datac => \switches|codop\(0),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a10\,
	combout => \aluExecute|Add0~44_combout\);

-- Location: LCCOMB_X102_Y4_N28
\aluExecute|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~45_combout\ = \switches|codop\(1) $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches|codop\(1),
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a10\,
	combout => \aluExecute|Add0~45_combout\);

-- Location: LCCOMB_X102_Y4_N30
\aluExecute|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~46_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a9\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \switches|codop\(0),
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a9\,
	combout => \aluExecute|Add0~46_combout\);

-- Location: LCCOMB_X101_Y6_N10
\aluExecute|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~47_combout\ = \switches|codop\(1) $ (((\regFile|registers_rtl_1|auto_generated|ram_block1a9\ & !\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(1),
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a9\,
	datad => \comb~0_combout\,
	combout => \aluExecute|Add0~47_combout\);

-- Location: LCCOMB_X103_Y4_N8
\aluExecute|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~48_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a8\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datac => \switches|codop\(0),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a8\,
	combout => \aluExecute|Add0~48_combout\);

-- Location: LCCOMB_X103_Y4_N22
\aluExecute|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~49_combout\ = \switches|codop\(1) $ (((\regFile|registers_rtl_1|auto_generated|ram_block1a8\ & !\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(1),
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a8\,
	datad => \comb~0_combout\,
	combout => \aluExecute|Add0~49_combout\);

-- Location: LCCOMB_X102_Y4_N26
\aluExecute|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~30_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a7\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datac => \switches|codop\(0),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	combout => \aluExecute|Add0~30_combout\);

-- Location: LCCOMB_X102_Y4_N24
\aluExecute|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~31_combout\ = \switches|codop\(1) $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches|codop\(1),
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	combout => \aluExecute|Add0~31_combout\);

-- Location: LCCOMB_X103_Y5_N4
\aluExecute|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~26_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a6\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(0),
	datac => \switches|codop\(3),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \aluExecute|Add0~26_combout\);

-- Location: LCCOMB_X103_Y5_N14
\aluExecute|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~27_combout\ = \switches|codop\(1) $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	datad => \switches|codop\(1),
	combout => \aluExecute|Add0~27_combout\);

-- Location: LCCOMB_X102_Y5_N10
\aluExecute|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~22_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a5\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \switches|codop\(0),
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	combout => \aluExecute|Add0~22_combout\);

-- Location: LCCOMB_X103_Y5_N26
\aluExecute|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~23_combout\ = \switches|codop\(1) $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(1),
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	combout => \aluExecute|Add0~23_combout\);

-- Location: LCCOMB_X102_Y5_N12
\aluExecute|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~19_combout\ = \switches|codop\(1) $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => \switches|codop\(1),
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	combout => \aluExecute|Add0~19_combout\);

-- Location: LCCOMB_X102_Y5_N2
\aluExecute|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~18_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a4\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \switches|codop\(0),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	combout => \aluExecute|Add0~18_combout\);

-- Location: FF_X105_Y6_N27
\switches|addB_LMM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addB_LMM\(3));

-- Location: LCCOMB_X103_Y5_N20
\aluExecute|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~15_combout\ = \switches|codop\(1) $ (((\comb~0_combout\ & (\switches|addB_LMM\(3))) # (!\comb~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(1),
	datab => \switches|addB_LMM\(3),
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \aluExecute|Add0~15_combout\);

-- Location: LCCOMB_X102_Y5_N8
\aluExecute|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~14_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a3\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches|codop\(0),
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datad => \switches|codop\(3),
	combout => \aluExecute|Add0~14_combout\);

-- Location: LCCOMB_X102_Y5_N14
\aluExecute|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~10_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a2\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \switches|codop\(0),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \aluExecute|Add0~10_combout\);

-- Location: FF_X102_Y6_N7
\switches|addB_LMM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addB_LMM\(2));

-- Location: LCCOMB_X103_Y5_N12
\aluExecute|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~11_combout\ = \switches|codop\(1) $ (((\comb~0_combout\ & (\switches|addB_LMM\(2))) # (!\comb~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(1),
	datab => \switches|addB_LMM\(2),
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	combout => \aluExecute|Add0~11_combout\);

-- Location: LCCOMB_X102_Y5_N6
\aluExecute|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~6_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a1\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \switches|codop\(0),
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	combout => \aluExecute|Add0~6_combout\);

-- Location: LCCOMB_X102_Y5_N4
\aluExecute|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~7_combout\ = \switches|codop\(1) $ (((\comb~0_combout\ & (\switches|addB_LMM\(1))) # (!\comb~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \switches|addB_LMM\(1),
	datac => \switches|codop\(1),
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	combout => \aluExecute|Add0~7_combout\);

-- Location: FF_X102_Y6_N17
\switches|addB_LMM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FETCH_clk~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switches|addB_LMM\(0));

-- Location: LCCOMB_X101_Y6_N28
\aluExecute|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~1_combout\ = \switches|codop\(1) $ (((\comb~0_combout\ & (\switches|addB_LMM\(0))) # (!\comb~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(1),
	datab => \switches|addB_LMM\(0),
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \aluExecute|Add0~1_combout\);

-- Location: LCCOMB_X102_Y5_N0
\aluExecute|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~0_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ (((\switches|codop\(3)) # (!\switches|codop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \switches|codop\(0),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \aluExecute|Add0~0_combout\);

-- Location: LCCOMB_X102_Y5_N16
\aluExecute|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~3_cout\ = CARRY(\switches|codop\(3) $ (\switches|codop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \switches|codop\(0),
	datad => VCC,
	cout => \aluExecute|Add0~3_cout\);

-- Location: LCCOMB_X102_Y5_N18
\aluExecute|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~4_combout\ = (\aluExecute|Add0~1_combout\ & ((\aluExecute|Add0~0_combout\ & (!\aluExecute|Add0~3_cout\)) # (!\aluExecute|Add0~0_combout\ & (\aluExecute|Add0~3_cout\ & VCC)))) # (!\aluExecute|Add0~1_combout\ & ((\aluExecute|Add0~0_combout\ 
-- & ((\aluExecute|Add0~3_cout\) # (GND))) # (!\aluExecute|Add0~0_combout\ & (!\aluExecute|Add0~3_cout\))))
-- \aluExecute|Add0~5\ = CARRY((\aluExecute|Add0~1_combout\ & (\aluExecute|Add0~0_combout\ & !\aluExecute|Add0~3_cout\)) # (!\aluExecute|Add0~1_combout\ & ((\aluExecute|Add0~0_combout\) # (!\aluExecute|Add0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~1_combout\,
	datab => \aluExecute|Add0~0_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~3_cout\,
	combout => \aluExecute|Add0~4_combout\,
	cout => \aluExecute|Add0~5\);

-- Location: LCCOMB_X102_Y5_N20
\aluExecute|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~8_combout\ = ((\aluExecute|Add0~6_combout\ $ (\aluExecute|Add0~7_combout\ $ (\aluExecute|Add0~5\)))) # (GND)
-- \aluExecute|Add0~9\ = CARRY((\aluExecute|Add0~6_combout\ & (\aluExecute|Add0~7_combout\ & !\aluExecute|Add0~5\)) # (!\aluExecute|Add0~6_combout\ & ((\aluExecute|Add0~7_combout\) # (!\aluExecute|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~6_combout\,
	datab => \aluExecute|Add0~7_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~5\,
	combout => \aluExecute|Add0~8_combout\,
	cout => \aluExecute|Add0~9\);

-- Location: LCCOMB_X102_Y5_N22
\aluExecute|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~12_combout\ = (\aluExecute|Add0~10_combout\ & ((\aluExecute|Add0~11_combout\ & (!\aluExecute|Add0~9\)) # (!\aluExecute|Add0~11_combout\ & ((\aluExecute|Add0~9\) # (GND))))) # (!\aluExecute|Add0~10_combout\ & ((\aluExecute|Add0~11_combout\ 
-- & (\aluExecute|Add0~9\ & VCC)) # (!\aluExecute|Add0~11_combout\ & (!\aluExecute|Add0~9\))))
-- \aluExecute|Add0~13\ = CARRY((\aluExecute|Add0~10_combout\ & ((!\aluExecute|Add0~9\) # (!\aluExecute|Add0~11_combout\))) # (!\aluExecute|Add0~10_combout\ & (!\aluExecute|Add0~11_combout\ & !\aluExecute|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~10_combout\,
	datab => \aluExecute|Add0~11_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~9\,
	combout => \aluExecute|Add0~12_combout\,
	cout => \aluExecute|Add0~13\);

-- Location: LCCOMB_X102_Y5_N24
\aluExecute|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~16_combout\ = ((\aluExecute|Add0~15_combout\ $ (\aluExecute|Add0~14_combout\ $ (\aluExecute|Add0~13\)))) # (GND)
-- \aluExecute|Add0~17\ = CARRY((\aluExecute|Add0~15_combout\ & ((!\aluExecute|Add0~13\) # (!\aluExecute|Add0~14_combout\))) # (!\aluExecute|Add0~15_combout\ & (!\aluExecute|Add0~14_combout\ & !\aluExecute|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~15_combout\,
	datab => \aluExecute|Add0~14_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~13\,
	combout => \aluExecute|Add0~16_combout\,
	cout => \aluExecute|Add0~17\);

-- Location: LCCOMB_X102_Y5_N26
\aluExecute|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~20_combout\ = (\aluExecute|Add0~19_combout\ & ((\aluExecute|Add0~18_combout\ & (!\aluExecute|Add0~17\)) # (!\aluExecute|Add0~18_combout\ & (\aluExecute|Add0~17\ & VCC)))) # (!\aluExecute|Add0~19_combout\ & ((\aluExecute|Add0~18_combout\ & 
-- ((\aluExecute|Add0~17\) # (GND))) # (!\aluExecute|Add0~18_combout\ & (!\aluExecute|Add0~17\))))
-- \aluExecute|Add0~21\ = CARRY((\aluExecute|Add0~19_combout\ & (\aluExecute|Add0~18_combout\ & !\aluExecute|Add0~17\)) # (!\aluExecute|Add0~19_combout\ & ((\aluExecute|Add0~18_combout\) # (!\aluExecute|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~19_combout\,
	datab => \aluExecute|Add0~18_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~17\,
	combout => \aluExecute|Add0~20_combout\,
	cout => \aluExecute|Add0~21\);

-- Location: LCCOMB_X102_Y5_N28
\aluExecute|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~24_combout\ = ((\aluExecute|Add0~22_combout\ $ (\aluExecute|Add0~23_combout\ $ (\aluExecute|Add0~21\)))) # (GND)
-- \aluExecute|Add0~25\ = CARRY((\aluExecute|Add0~22_combout\ & (\aluExecute|Add0~23_combout\ & !\aluExecute|Add0~21\)) # (!\aluExecute|Add0~22_combout\ & ((\aluExecute|Add0~23_combout\) # (!\aluExecute|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~22_combout\,
	datab => \aluExecute|Add0~23_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~21\,
	combout => \aluExecute|Add0~24_combout\,
	cout => \aluExecute|Add0~25\);

-- Location: LCCOMB_X102_Y5_N30
\aluExecute|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~28_combout\ = (\aluExecute|Add0~26_combout\ & ((\aluExecute|Add0~27_combout\ & (!\aluExecute|Add0~25\)) # (!\aluExecute|Add0~27_combout\ & ((\aluExecute|Add0~25\) # (GND))))) # (!\aluExecute|Add0~26_combout\ & 
-- ((\aluExecute|Add0~27_combout\ & (\aluExecute|Add0~25\ & VCC)) # (!\aluExecute|Add0~27_combout\ & (!\aluExecute|Add0~25\))))
-- \aluExecute|Add0~29\ = CARRY((\aluExecute|Add0~26_combout\ & ((!\aluExecute|Add0~25\) # (!\aluExecute|Add0~27_combout\))) # (!\aluExecute|Add0~26_combout\ & (!\aluExecute|Add0~27_combout\ & !\aluExecute|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~26_combout\,
	datab => \aluExecute|Add0~27_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~25\,
	combout => \aluExecute|Add0~28_combout\,
	cout => \aluExecute|Add0~29\);

-- Location: LCCOMB_X102_Y4_N0
\aluExecute|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~32_combout\ = ((\aluExecute|Add0~30_combout\ $ (\aluExecute|Add0~31_combout\ $ (\aluExecute|Add0~29\)))) # (GND)
-- \aluExecute|Add0~33\ = CARRY((\aluExecute|Add0~30_combout\ & (\aluExecute|Add0~31_combout\ & !\aluExecute|Add0~29\)) # (!\aluExecute|Add0~30_combout\ & ((\aluExecute|Add0~31_combout\) # (!\aluExecute|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~30_combout\,
	datab => \aluExecute|Add0~31_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~29\,
	combout => \aluExecute|Add0~32_combout\,
	cout => \aluExecute|Add0~33\);

-- Location: LCCOMB_X102_Y4_N2
\aluExecute|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~50_combout\ = (\aluExecute|Add0~48_combout\ & ((\aluExecute|Add0~49_combout\ & (!\aluExecute|Add0~33\)) # (!\aluExecute|Add0~49_combout\ & ((\aluExecute|Add0~33\) # (GND))))) # (!\aluExecute|Add0~48_combout\ & 
-- ((\aluExecute|Add0~49_combout\ & (\aluExecute|Add0~33\ & VCC)) # (!\aluExecute|Add0~49_combout\ & (!\aluExecute|Add0~33\))))
-- \aluExecute|Add0~51\ = CARRY((\aluExecute|Add0~48_combout\ & ((!\aluExecute|Add0~33\) # (!\aluExecute|Add0~49_combout\))) # (!\aluExecute|Add0~48_combout\ & (!\aluExecute|Add0~49_combout\ & !\aluExecute|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~48_combout\,
	datab => \aluExecute|Add0~49_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~33\,
	combout => \aluExecute|Add0~50_combout\,
	cout => \aluExecute|Add0~51\);

-- Location: LCCOMB_X102_Y4_N4
\aluExecute|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~52_combout\ = ((\aluExecute|Add0~46_combout\ $ (\aluExecute|Add0~47_combout\ $ (\aluExecute|Add0~51\)))) # (GND)
-- \aluExecute|Add0~53\ = CARRY((\aluExecute|Add0~46_combout\ & (\aluExecute|Add0~47_combout\ & !\aluExecute|Add0~51\)) # (!\aluExecute|Add0~46_combout\ & ((\aluExecute|Add0~47_combout\) # (!\aluExecute|Add0~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~46_combout\,
	datab => \aluExecute|Add0~47_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~51\,
	combout => \aluExecute|Add0~52_combout\,
	cout => \aluExecute|Add0~53\);

-- Location: LCCOMB_X102_Y4_N6
\aluExecute|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~54_combout\ = (\aluExecute|Add0~44_combout\ & ((\aluExecute|Add0~45_combout\ & (!\aluExecute|Add0~53\)) # (!\aluExecute|Add0~45_combout\ & ((\aluExecute|Add0~53\) # (GND))))) # (!\aluExecute|Add0~44_combout\ & 
-- ((\aluExecute|Add0~45_combout\ & (\aluExecute|Add0~53\ & VCC)) # (!\aluExecute|Add0~45_combout\ & (!\aluExecute|Add0~53\))))
-- \aluExecute|Add0~55\ = CARRY((\aluExecute|Add0~44_combout\ & ((!\aluExecute|Add0~53\) # (!\aluExecute|Add0~45_combout\))) # (!\aluExecute|Add0~44_combout\ & (!\aluExecute|Add0~45_combout\ & !\aluExecute|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~44_combout\,
	datab => \aluExecute|Add0~45_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~53\,
	combout => \aluExecute|Add0~54_combout\,
	cout => \aluExecute|Add0~55\);

-- Location: LCCOMB_X102_Y4_N8
\aluExecute|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~56_combout\ = ((\aluExecute|Add0~42_combout\ $ (\aluExecute|Add0~43_combout\ $ (\aluExecute|Add0~55\)))) # (GND)
-- \aluExecute|Add0~57\ = CARRY((\aluExecute|Add0~42_combout\ & (\aluExecute|Add0~43_combout\ & !\aluExecute|Add0~55\)) # (!\aluExecute|Add0~42_combout\ & ((\aluExecute|Add0~43_combout\) # (!\aluExecute|Add0~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~42_combout\,
	datab => \aluExecute|Add0~43_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~55\,
	combout => \aluExecute|Add0~56_combout\,
	cout => \aluExecute|Add0~57\);

-- Location: LCCOMB_X102_Y4_N10
\aluExecute|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~58_combout\ = (\aluExecute|Add0~40_combout\ & ((\aluExecute|Add0~41_combout\ & (!\aluExecute|Add0~57\)) # (!\aluExecute|Add0~41_combout\ & ((\aluExecute|Add0~57\) # (GND))))) # (!\aluExecute|Add0~40_combout\ & 
-- ((\aluExecute|Add0~41_combout\ & (\aluExecute|Add0~57\ & VCC)) # (!\aluExecute|Add0~41_combout\ & (!\aluExecute|Add0~57\))))
-- \aluExecute|Add0~59\ = CARRY((\aluExecute|Add0~40_combout\ & ((!\aluExecute|Add0~57\) # (!\aluExecute|Add0~41_combout\))) # (!\aluExecute|Add0~40_combout\ & (!\aluExecute|Add0~41_combout\ & !\aluExecute|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~40_combout\,
	datab => \aluExecute|Add0~41_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~57\,
	combout => \aluExecute|Add0~58_combout\,
	cout => \aluExecute|Add0~59\);

-- Location: LCCOMB_X102_Y4_N12
\aluExecute|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~60_combout\ = ((\aluExecute|Add0~39_combout\ $ (\aluExecute|Add0~38_combout\ $ (\aluExecute|Add0~59\)))) # (GND)
-- \aluExecute|Add0~61\ = CARRY((\aluExecute|Add0~39_combout\ & ((!\aluExecute|Add0~59\) # (!\aluExecute|Add0~38_combout\))) # (!\aluExecute|Add0~39_combout\ & (!\aluExecute|Add0~38_combout\ & !\aluExecute|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~39_combout\,
	datab => \aluExecute|Add0~38_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~59\,
	combout => \aluExecute|Add0~60_combout\,
	cout => \aluExecute|Add0~61\);

-- Location: LCCOMB_X102_Y4_N14
\aluExecute|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~62_combout\ = (\aluExecute|Add0~37_combout\ & ((\aluExecute|Add0~36_combout\ & (!\aluExecute|Add0~61\)) # (!\aluExecute|Add0~36_combout\ & (\aluExecute|Add0~61\ & VCC)))) # (!\aluExecute|Add0~37_combout\ & ((\aluExecute|Add0~36_combout\ & 
-- ((\aluExecute|Add0~61\) # (GND))) # (!\aluExecute|Add0~36_combout\ & (!\aluExecute|Add0~61\))))
-- \aluExecute|Add0~63\ = CARRY((\aluExecute|Add0~37_combout\ & (\aluExecute|Add0~36_combout\ & !\aluExecute|Add0~61\)) # (!\aluExecute|Add0~37_combout\ & ((\aluExecute|Add0~36_combout\) # (!\aluExecute|Add0~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~37_combout\,
	datab => \aluExecute|Add0~36_combout\,
	datad => VCC,
	cin => \aluExecute|Add0~61\,
	combout => \aluExecute|Add0~62_combout\,
	cout => \aluExecute|Add0~63\);

-- Location: LCCOMB_X102_Y4_N16
\aluExecute|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Add0~64_combout\ = \aluExecute|Add0~34_combout\ $ (\aluExecute|Add0~63\ $ (\aluExecute|Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Add0~34_combout\,
	datad => \aluExecute|Add0~35_combout\,
	cin => \aluExecute|Add0~63\,
	combout => \aluExecute|Add0~64_combout\);

-- Location: LCCOMB_X102_Y4_N18
\aluExecute|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux0~3_combout\ = (\aluExecute|Mux0~2_combout\ & ((\aluExecute|out[7]~1_combout\) # ((\aluExecute|Add0~64_combout\) # (!\aluExecute|out[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~1_combout\,
	datab => \aluExecute|Mux0~2_combout\,
	datac => \aluExecute|out[7]~0_combout\,
	datad => \aluExecute|Add0~64_combout\,
	combout => \aluExecute|Mux0~3_combout\);

-- Location: FF_X102_Y4_N19
\aluExecute|neg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|neg~q\);

-- Location: LCCOMB_X103_Y4_N16
\finalB[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[14]~2_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a14\,
	combout => \finalB[14]~2_combout\);

-- Location: LCCOMB_X103_Y4_N20
\aluExecute|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux1~0_combout\ = (\aluExecute|out[7]~0_combout\ & (((\aluExecute|out[7]~1_combout\)))) # (!\aluExecute|out[7]~0_combout\ & ((\finalB[14]~2_combout\ & ((\aluExecute|out[7]~1_combout\) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a14\))) # (!\finalB[14]~2_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~0_combout\,
	datab => \finalB[14]~2_combout\,
	datac => \aluExecute|out[7]~1_combout\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a14\,
	combout => \aluExecute|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y5_N30
\aluExecute|out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~10_combout\ = (!\comb~0_combout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a14\ & \regFile|registers_rtl_1|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a14\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a14\,
	combout => \aluExecute|out~10_combout\);

-- Location: LCCOMB_X103_Y4_N2
\aluExecute|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux1~1_combout\ = (\aluExecute|out[7]~0_combout\ & ((\aluExecute|Mux1~0_combout\ & (\aluExecute|out~10_combout\)) # (!\aluExecute|Mux1~0_combout\ & ((\aluExecute|Add0~62_combout\))))) # (!\aluExecute|out[7]~0_combout\ & 
-- (\aluExecute|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~0_combout\,
	datab => \aluExecute|Mux1~0_combout\,
	datac => \aluExecute|out~10_combout\,
	datad => \aluExecute|Add0~62_combout\,
	combout => \aluExecute|Mux1~1_combout\);

-- Location: LCCOMB_X103_Y4_N0
\aluExecute|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux1~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux1~1_combout\,
	combout => \aluExecute|Mux1~2_combout\);

-- Location: FF_X103_Y4_N1
\aluExecute|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(14));

-- Location: LCCOMB_X105_Y6_N16
\finalB[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[13]~3_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a13\ & !\comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a13\,
	datad => \comb~0_combout\,
	combout => \finalB[13]~3_combout\);

-- Location: LCCOMB_X101_Y6_N20
\aluExecute|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux2~0_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a13\ $ (((!\comb~0_combout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a13\ & !\aluExecute|out[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a13\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a13\,
	datad => \aluExecute|out[7]~1_combout\,
	combout => \aluExecute|Mux2~0_combout\);

-- Location: LCCOMB_X101_Y6_N30
\aluExecute|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux2~1_combout\ = (\finalB[13]~3_combout\ & ((\aluExecute|Mux2~0_combout\) # (\aluExecute|out[7]~1_combout\ $ (\aluExecute|out[7]~0_combout\)))) # (!\finalB[13]~3_combout\ & ((\aluExecute|out[7]~0_combout\ & (!\aluExecute|out[7]~1_combout\)) # 
-- (!\aluExecute|out[7]~0_combout\ & ((\aluExecute|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[13]~3_combout\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \aluExecute|out[7]~0_combout\,
	datad => \aluExecute|Mux2~0_combout\,
	combout => \aluExecute|Mux2~1_combout\);

-- Location: LCCOMB_X101_Y6_N16
\aluExecute|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux2~2_combout\ = (\aluExecute|Mux2~1_combout\ & ((\aluExecute|out[7]~1_combout\) # ((\aluExecute|Add0~60_combout\) # (!\aluExecute|out[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Mux2~1_combout\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \aluExecute|out[7]~0_combout\,
	datad => \aluExecute|Add0~60_combout\,
	combout => \aluExecute|Mux2~2_combout\);

-- Location: LCCOMB_X101_Y6_N0
\aluExecute|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux2~3_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux2~2_combout\,
	combout => \aluExecute|Mux2~3_combout\);

-- Location: FF_X101_Y6_N1
\aluExecute|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(13));

-- Location: LCCOMB_X101_Y6_N12
\aluExecute|out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~11_combout\ = (!\comb~0_combout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a12\ & \regFile|registers_rtl_1|auto_generated|ram_block1a12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a12\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a12\,
	combout => \aluExecute|out~11_combout\);

-- Location: LCCOMB_X105_Y6_N10
\finalB[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[12]~4_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a12\,
	combout => \finalB[12]~4_combout\);

-- Location: LCCOMB_X101_Y6_N26
\aluExecute|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux3~0_combout\ = (\aluExecute|out[7]~0_combout\ & (((\aluExecute|out[7]~1_combout\)))) # (!\aluExecute|out[7]~0_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a12\ & ((\aluExecute|out[7]~1_combout\) # 
-- (!\finalB[12]~4_combout\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a12\ & ((\finalB[12]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a12\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \aluExecute|out[7]~0_combout\,
	datad => \finalB[12]~4_combout\,
	combout => \aluExecute|Mux3~0_combout\);

-- Location: LCCOMB_X101_Y6_N18
\aluExecute|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux3~1_combout\ = (\aluExecute|out[7]~0_combout\ & ((\aluExecute|Mux3~0_combout\ & (\aluExecute|out~11_combout\)) # (!\aluExecute|Mux3~0_combout\ & ((\aluExecute|Add0~58_combout\))))) # (!\aluExecute|out[7]~0_combout\ & 
-- (((\aluExecute|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out~11_combout\,
	datab => \aluExecute|out[7]~0_combout\,
	datac => \aluExecute|Mux3~0_combout\,
	datad => \aluExecute|Add0~58_combout\,
	combout => \aluExecute|Mux3~1_combout\);

-- Location: LCCOMB_X101_Y6_N14
\aluExecute|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux3~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux3~1_combout\,
	combout => \aluExecute|Mux3~2_combout\);

-- Location: FF_X101_Y6_N15
\aluExecute|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(12));

-- Location: LCCOMB_X102_Y6_N10
\finalB[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[11]~5_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a11\,
	combout => \finalB[11]~5_combout\);

-- Location: LCCOMB_X101_Y4_N6
\aluExecute|out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~12_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a11\ $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a11\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a11\,
	combout => \aluExecute|out~12_combout\);

-- Location: LCCOMB_X101_Y4_N24
\aluExecute|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux4~0_combout\ = (\aluExecute|out[7]~1_combout\ & (\aluExecute|out[7]~0_combout\)) # (!\aluExecute|out[7]~1_combout\ & ((\aluExecute|out[7]~0_combout\ & (\aluExecute|Add0~56_combout\)) # (!\aluExecute|out[7]~0_combout\ & 
-- ((\aluExecute|out~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~1_combout\,
	datab => \aluExecute|out[7]~0_combout\,
	datac => \aluExecute|Add0~56_combout\,
	datad => \aluExecute|out~12_combout\,
	combout => \aluExecute|Mux4~0_combout\);

-- Location: LCCOMB_X101_Y4_N2
\aluExecute|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux4~1_combout\ = (\aluExecute|out[7]~1_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a11\ & ((\finalB[11]~5_combout\) # (!\aluExecute|Mux4~0_combout\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a11\ & 
-- (\finalB[11]~5_combout\ & !\aluExecute|Mux4~0_combout\)))) # (!\aluExecute|out[7]~1_combout\ & (((\aluExecute|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a11\,
	datab => \finalB[11]~5_combout\,
	datac => \aluExecute|out[7]~1_combout\,
	datad => \aluExecute|Mux4~0_combout\,
	combout => \aluExecute|Mux4~1_combout\);

-- Location: LCCOMB_X101_Y4_N30
\aluExecute|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux4~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux4~1_combout\,
	combout => \aluExecute|Mux4~2_combout\);

-- Location: FF_X101_Y4_N31
\aluExecute|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(11));

-- Location: LCCOMB_X100_Y4_N6
\aluExecute|out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~13_combout\ = (!\comb~0_combout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a10\ & \regFile|registers_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a10\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a10\,
	combout => \aluExecute|out~13_combout\);

-- Location: LCCOMB_X102_Y6_N8
\finalB[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[10]~6_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a10\,
	combout => \finalB[10]~6_combout\);

-- Location: LCCOMB_X101_Y4_N8
\aluExecute|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux5~0_combout\ = (\aluExecute|out[7]~0_combout\ & (\aluExecute|out[7]~1_combout\)) # (!\aluExecute|out[7]~0_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a10\ & ((\aluExecute|out[7]~1_combout\) # (!\finalB[10]~6_combout\))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a10\ & ((\finalB[10]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~1_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a10\,
	datac => \aluExecute|out[7]~0_combout\,
	datad => \finalB[10]~6_combout\,
	combout => \aluExecute|Mux5~0_combout\);

-- Location: LCCOMB_X101_Y4_N18
\aluExecute|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux5~1_combout\ = (\aluExecute|out[7]~0_combout\ & ((\aluExecute|Mux5~0_combout\ & (\aluExecute|out~13_combout\)) # (!\aluExecute|Mux5~0_combout\ & ((\aluExecute|Add0~54_combout\))))) # (!\aluExecute|out[7]~0_combout\ & 
-- (((\aluExecute|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~0_combout\,
	datab => \aluExecute|out~13_combout\,
	datac => \aluExecute|Mux5~0_combout\,
	datad => \aluExecute|Add0~54_combout\,
	combout => \aluExecute|Mux5~1_combout\);

-- Location: LCCOMB_X101_Y4_N12
\aluExecute|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux5~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux5~1_combout\,
	combout => \aluExecute|Mux5~2_combout\);

-- Location: FF_X101_Y4_N13
\aluExecute|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(10));

-- Location: LCCOMB_X103_Y4_N30
\finalB[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[9]~7_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a9\,
	combout => \finalB[9]~7_combout\);

-- Location: LCCOMB_X103_Y4_N28
\aluExecute|out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~14_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a9\ $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a9\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a9\,
	combout => \aluExecute|out~14_combout\);

-- Location: LCCOMB_X103_Y4_N18
\aluExecute|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux6~0_combout\ = (\aluExecute|out[7]~0_combout\ & ((\aluExecute|out[7]~1_combout\) # ((\aluExecute|Add0~52_combout\)))) # (!\aluExecute|out[7]~0_combout\ & (!\aluExecute|out[7]~1_combout\ & ((\aluExecute|out~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~0_combout\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \aluExecute|Add0~52_combout\,
	datad => \aluExecute|out~14_combout\,
	combout => \aluExecute|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y4_N12
\aluExecute|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux6~1_combout\ = (\aluExecute|out[7]~1_combout\ & ((\finalB[9]~7_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a9\) # (!\aluExecute|Mux6~0_combout\))) # (!\finalB[9]~7_combout\ & 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a9\ & !\aluExecute|Mux6~0_combout\)))) # (!\aluExecute|out[7]~1_combout\ & (((\aluExecute|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[9]~7_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a9\,
	datac => \aluExecute|out[7]~1_combout\,
	datad => \aluExecute|Mux6~0_combout\,
	combout => \aluExecute|Mux6~1_combout\);

-- Location: LCCOMB_X103_Y4_N10
\aluExecute|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux6~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux6~1_combout\,
	combout => \aluExecute|Mux6~2_combout\);

-- Location: FF_X103_Y4_N11
\aluExecute|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(9));

-- Location: LCCOMB_X103_Y4_N4
\aluExecute|out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~15_combout\ = (!\comb~0_combout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a8\ & \regFile|registers_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a8\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a8\,
	combout => \aluExecute|out~15_combout\);

-- Location: LCCOMB_X105_Y6_N28
\finalB[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[8]~8_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a8\,
	combout => \finalB[8]~8_combout\);

-- Location: LCCOMB_X103_Y4_N14
\aluExecute|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux7~0_combout\ = (\aluExecute|out[7]~0_combout\ & (\aluExecute|out[7]~1_combout\)) # (!\aluExecute|out[7]~0_combout\ & ((\finalB[8]~8_combout\ & ((\aluExecute|out[7]~1_combout\) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a8\))) # 
-- (!\finalB[8]~8_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~0_combout\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \finalB[8]~8_combout\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a8\,
	combout => \aluExecute|Mux7~0_combout\);

-- Location: LCCOMB_X103_Y4_N6
\aluExecute|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux7~1_combout\ = (\aluExecute|out[7]~0_combout\ & ((\aluExecute|Mux7~0_combout\ & (\aluExecute|out~15_combout\)) # (!\aluExecute|Mux7~0_combout\ & ((\aluExecute|Add0~50_combout\))))) # (!\aluExecute|out[7]~0_combout\ & 
-- (((\aluExecute|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~0_combout\,
	datab => \aluExecute|out~15_combout\,
	datac => \aluExecute|Mux7~0_combout\,
	datad => \aluExecute|Add0~50_combout\,
	combout => \aluExecute|Mux7~1_combout\);

-- Location: LCCOMB_X103_Y4_N24
\aluExecute|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux7~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux7~1_combout\,
	combout => \aluExecute|Mux7~2_combout\);

-- Location: FF_X103_Y4_N25
\aluExecute|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(8));

-- Location: LCCOMB_X102_Y6_N30
\finalB[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[7]~9_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	combout => \finalB[7]~9_combout\);

-- Location: LCCOMB_X100_Y4_N14
\aluExecute|out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~9_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a7\ $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	combout => \aluExecute|out~9_combout\);

-- Location: LCCOMB_X101_Y4_N10
\aluExecute|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux8~0_combout\ = (\aluExecute|out[7]~1_combout\ & (\aluExecute|out[7]~0_combout\)) # (!\aluExecute|out[7]~1_combout\ & ((\aluExecute|out[7]~0_combout\ & (\aluExecute|Add0~32_combout\)) # (!\aluExecute|out[7]~0_combout\ & 
-- ((\aluExecute|out~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~1_combout\,
	datab => \aluExecute|out[7]~0_combout\,
	datac => \aluExecute|Add0~32_combout\,
	datad => \aluExecute|out~9_combout\,
	combout => \aluExecute|Mux8~0_combout\);

-- Location: LCCOMB_X101_Y4_N20
\aluExecute|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux8~1_combout\ = (\aluExecute|out[7]~1_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & ((\finalB[7]~9_combout\) # (!\aluExecute|Mux8~0_combout\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & 
-- (\finalB[7]~9_combout\ & !\aluExecute|Mux8~0_combout\)))) # (!\aluExecute|out[7]~1_combout\ & (((\aluExecute|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	datab => \finalB[7]~9_combout\,
	datac => \aluExecute|out[7]~1_combout\,
	datad => \aluExecute|Mux8~0_combout\,
	combout => \aluExecute|Mux8~1_combout\);

-- Location: LCCOMB_X101_Y4_N0
\aluExecute|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux8~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux8~1_combout\,
	combout => \aluExecute|Mux8~2_combout\);

-- Location: FF_X101_Y4_N1
\aluExecute|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(7));

-- Location: LCCOMB_X102_Y6_N20
\finalB[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[6]~10_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \finalB[6]~10_combout\);

-- Location: LCCOMB_X103_Y5_N28
\aluExecute|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux9~0_combout\ = (\aluExecute|out[7]~0_combout\ & (\aluExecute|out[7]~1_combout\)) # (!\aluExecute|out[7]~0_combout\ & ((\finalB[6]~10_combout\ & ((\aluExecute|out[7]~1_combout\) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a6\))) # 
-- (!\finalB[6]~10_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~1_combout\,
	datab => \aluExecute|out[7]~0_combout\,
	datac => \finalB[6]~10_combout\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \aluExecute|Mux9~0_combout\);

-- Location: LCCOMB_X103_Y5_N8
\aluExecute|out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~8_combout\ = (!\comb~0_combout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a6\ & \regFile|registers_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \aluExecute|out~8_combout\);

-- Location: LCCOMB_X103_Y5_N10
\aluExecute|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux9~1_combout\ = (\aluExecute|out[7]~0_combout\ & ((\aluExecute|Mux9~0_combout\ & (\aluExecute|out~8_combout\)) # (!\aluExecute|Mux9~0_combout\ & ((\aluExecute|Add0~28_combout\))))) # (!\aluExecute|out[7]~0_combout\ & 
-- (\aluExecute|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~0_combout\,
	datab => \aluExecute|Mux9~0_combout\,
	datac => \aluExecute|out~8_combout\,
	datad => \aluExecute|Add0~28_combout\,
	combout => \aluExecute|Mux9~1_combout\);

-- Location: LCCOMB_X103_Y5_N18
\aluExecute|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux9~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux9~1_combout\,
	combout => \aluExecute|Mux9~2_combout\);

-- Location: FF_X103_Y5_N19
\aluExecute|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(6));

-- Location: LCCOMB_X105_Y6_N22
\finalB[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[5]~11_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	combout => \finalB[5]~11_combout\);

-- Location: LCCOMB_X101_Y5_N8
\aluExecute|out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~7_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a5\ $ (((!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	combout => \aluExecute|out~7_combout\);

-- Location: LCCOMB_X101_Y5_N2
\aluExecute|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux10~0_combout\ = (\aluExecute|out[7]~1_combout\ & (((\aluExecute|out[7]~0_combout\)))) # (!\aluExecute|out[7]~1_combout\ & ((\aluExecute|out[7]~0_combout\ & ((\aluExecute|Add0~24_combout\))) # (!\aluExecute|out[7]~0_combout\ & 
-- (\aluExecute|out~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~1_combout\,
	datab => \aluExecute|out~7_combout\,
	datac => \aluExecute|out[7]~0_combout\,
	datad => \aluExecute|Add0~24_combout\,
	combout => \aluExecute|Mux10~0_combout\);

-- Location: LCCOMB_X101_Y5_N0
\aluExecute|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux10~1_combout\ = (\aluExecute|out[7]~1_combout\ & ((\finalB[5]~11_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a5\) # (!\aluExecute|Mux10~0_combout\))) # (!\finalB[5]~11_combout\ & 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & !\aluExecute|Mux10~0_combout\)))) # (!\aluExecute|out[7]~1_combout\ & (((\aluExecute|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[5]~11_combout\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datad => \aluExecute|Mux10~0_combout\,
	combout => \aluExecute|Mux10~1_combout\);

-- Location: LCCOMB_X101_Y5_N28
\aluExecute|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux10~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux10~1_combout\,
	combout => \aluExecute|Mux10~2_combout\);

-- Location: FF_X101_Y5_N29
\aluExecute|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(5));

-- Location: LCCOMB_X105_Y6_N24
\finalB[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[4]~12_combout\ = (!\comb~0_combout\ & \regFile|registers_rtl_1|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	combout => \finalB[4]~12_combout\);

-- Location: LCCOMB_X101_Y5_N26
\aluExecute|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux11~0_combout\ = (\aluExecute|out[7]~0_combout\ & (((\aluExecute|out[7]~1_combout\)))) # (!\aluExecute|out[7]~0_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & ((\aluExecute|out[7]~1_combout\) # 
-- (!\finalB[4]~12_combout\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & (\finalB[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datab => \aluExecute|out[7]~0_combout\,
	datac => \finalB[4]~12_combout\,
	datad => \aluExecute|out[7]~1_combout\,
	combout => \aluExecute|Mux11~0_combout\);

-- Location: LCCOMB_X101_Y5_N16
\aluExecute|out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~6_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a4\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & !\comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datad => \comb~0_combout\,
	combout => \aluExecute|out~6_combout\);

-- Location: LCCOMB_X101_Y5_N10
\aluExecute|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux11~1_combout\ = (\aluExecute|Mux11~0_combout\ & (((\aluExecute|out~6_combout\)) # (!\aluExecute|out[7]~0_combout\))) # (!\aluExecute|Mux11~0_combout\ & (\aluExecute|out[7]~0_combout\ & (\aluExecute|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Mux11~0_combout\,
	datab => \aluExecute|out[7]~0_combout\,
	datac => \aluExecute|Add0~20_combout\,
	datad => \aluExecute|out~6_combout\,
	combout => \aluExecute|Mux11~1_combout\);

-- Location: LCCOMB_X101_Y5_N22
\aluExecute|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux11~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux11~1_combout\,
	combout => \aluExecute|Mux11~2_combout\);

-- Location: FF_X101_Y5_N23
\aluExecute|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(4));

-- Location: LCCOMB_X105_Y6_N12
\finalB[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[3]~13_combout\ = (\comb~0_combout\ & (\switches|addB_LMM\(3))) # (!\comb~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => \switches|addB_LMM\(3),
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \finalB[3]~13_combout\);

-- Location: LCCOMB_X101_Y5_N12
\aluExecute|out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~5_combout\ = \regFile|registers_rtl_0|auto_generated|ram_block1a3\ $ (((\comb~0_combout\ & ((\switches|addB_LMM\(3)))) # (!\comb~0_combout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	datac => \switches|addB_LMM\(3),
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \aluExecute|out~5_combout\);

-- Location: LCCOMB_X101_Y5_N18
\aluExecute|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux12~0_combout\ = (\aluExecute|out[7]~1_combout\ & (((\aluExecute|out[7]~0_combout\)))) # (!\aluExecute|out[7]~1_combout\ & ((\aluExecute|out[7]~0_combout\ & ((\aluExecute|Add0~16_combout\))) # (!\aluExecute|out[7]~0_combout\ & 
-- (\aluExecute|out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out~5_combout\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \aluExecute|out[7]~0_combout\,
	datad => \aluExecute|Add0~16_combout\,
	combout => \aluExecute|Mux12~0_combout\);

-- Location: LCCOMB_X101_Y5_N20
\aluExecute|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux12~1_combout\ = (\aluExecute|out[7]~1_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & ((\finalB[3]~13_combout\) # (!\aluExecute|Mux12~0_combout\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & 
-- (\finalB[3]~13_combout\ & !\aluExecute|Mux12~0_combout\)))) # (!\aluExecute|out[7]~1_combout\ & (((\aluExecute|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \finalB[3]~13_combout\,
	datad => \aluExecute|Mux12~0_combout\,
	combout => \aluExecute|Mux12~1_combout\);

-- Location: LCCOMB_X101_Y5_N4
\aluExecute|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux12~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux12~1_combout\,
	combout => \aluExecute|Mux12~2_combout\);

-- Location: FF_X101_Y5_N5
\aluExecute|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(3));

-- Location: LCCOMB_X103_Y5_N0
\aluExecute|out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~4_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & ((\comb~0_combout\ & (\switches|addB_LMM\(2))) # (!\comb~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datab => \switches|addB_LMM\(2),
	datac => \comb~0_combout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	combout => \aluExecute|out~4_combout\);

-- Location: LCCOMB_X102_Y6_N6
\finalB[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[2]~14_combout\ = (\comb~0_combout\ & ((\switches|addB_LMM\(2)))) # (!\comb~0_combout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	datac => \switches|addB_LMM\(2),
	datad => \comb~0_combout\,
	combout => \finalB[2]~14_combout\);

-- Location: LCCOMB_X103_Y5_N22
\aluExecute|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux13~0_combout\ = (\aluExecute|out[7]~0_combout\ & (\aluExecute|out[7]~1_combout\)) # (!\aluExecute|out[7]~0_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & ((\aluExecute|out[7]~1_combout\) # (!\finalB[2]~14_combout\))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & ((\finalB[2]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~1_combout\,
	datab => \aluExecute|out[7]~0_combout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \finalB[2]~14_combout\,
	combout => \aluExecute|Mux13~0_combout\);

-- Location: LCCOMB_X103_Y5_N6
\aluExecute|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux13~1_combout\ = (\aluExecute|out[7]~0_combout\ & ((\aluExecute|Mux13~0_combout\ & (\aluExecute|out~4_combout\)) # (!\aluExecute|Mux13~0_combout\ & ((\aluExecute|Add0~12_combout\))))) # (!\aluExecute|out[7]~0_combout\ & 
-- (((\aluExecute|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out[7]~0_combout\,
	datab => \aluExecute|out~4_combout\,
	datac => \aluExecute|Mux13~0_combout\,
	datad => \aluExecute|Add0~12_combout\,
	combout => \aluExecute|Mux13~1_combout\);

-- Location: LCCOMB_X103_Y5_N16
\aluExecute|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux13~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux13~1_combout\,
	combout => \aluExecute|Mux13~2_combout\);

-- Location: FF_X103_Y5_N17
\aluExecute|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(2));

-- Location: LCCOMB_X102_Y6_N16
\finalB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[0]~0_combout\ = (\comb~0_combout\ & (\switches|addB_LMM\(0))) # (!\comb~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \switches|addB_LMM\(0),
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \finalB[0]~0_combout\);

-- Location: LCCOMB_X102_Y6_N26
\aluExecute|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux15~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\switches|codop\(0) $ (!\finalB[0]~0_combout\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (!\switches|codop\(0) & 
-- \finalB[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \switches|codop\(0),
	datad => \finalB[0]~0_combout\,
	combout => \aluExecute|Mux15~0_combout\);

-- Location: LCCOMB_X102_Y6_N4
\aluExecute|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux15~1_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\switches|codop\(0)) # ((\switches|codop\(2) & \finalB[0]~0_combout\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & 
-- (\switches|codop\(0) & ((\finalB[0]~0_combout\) # (!\switches|codop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \switches|codop\(0),
	datac => \switches|codop\(2),
	datad => \finalB[0]~0_combout\,
	combout => \aluExecute|Mux15~1_combout\);

-- Location: LCCOMB_X102_Y6_N18
\aluExecute|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux15~2_combout\ = \switches|codop\(3) $ (((\aluExecute|Mux15~1_combout\ & !\switches|codop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(3),
	datab => \aluExecute|Mux15~1_combout\,
	datac => \switches|codop\(2),
	combout => \aluExecute|Mux15~2_combout\);

-- Location: LCCOMB_X103_Y6_N0
\aluExecute|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~1_cout\ = CARRY((!\finalB[0]~0_combout\ & \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[0]~0_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => VCC,
	cout => \aluExecute|LessThan2~1_cout\);

-- Location: LCCOMB_X103_Y6_N2
\aluExecute|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~3_cout\ = CARRY((\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (\finalB[1]~15_combout\ & !\aluExecute|LessThan2~1_cout\)) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & ((\finalB[1]~15_combout\) # 
-- (!\aluExecute|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datab => \finalB[1]~15_combout\,
	datad => VCC,
	cin => \aluExecute|LessThan2~1_cout\,
	cout => \aluExecute|LessThan2~3_cout\);

-- Location: LCCOMB_X103_Y6_N4
\aluExecute|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~5_cout\ = CARRY((\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & ((!\aluExecute|LessThan2~3_cout\) # (!\finalB[2]~14_combout\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & (!\finalB[2]~14_combout\ & 
-- !\aluExecute|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	datab => \finalB[2]~14_combout\,
	datad => VCC,
	cin => \aluExecute|LessThan2~3_cout\,
	cout => \aluExecute|LessThan2~5_cout\);

-- Location: LCCOMB_X103_Y6_N6
\aluExecute|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~7_cout\ = CARRY((\finalB[3]~13_combout\ & ((!\aluExecute|LessThan2~5_cout\) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\))) # (!\finalB[3]~13_combout\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & 
-- !\aluExecute|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[3]~13_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datad => VCC,
	cin => \aluExecute|LessThan2~5_cout\,
	cout => \aluExecute|LessThan2~7_cout\);

-- Location: LCCOMB_X103_Y6_N8
\aluExecute|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~9_cout\ = CARRY((\finalB[4]~12_combout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & !\aluExecute|LessThan2~7_cout\)) # (!\finalB[4]~12_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a4\) # 
-- (!\aluExecute|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[4]~12_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datad => VCC,
	cin => \aluExecute|LessThan2~7_cout\,
	cout => \aluExecute|LessThan2~9_cout\);

-- Location: LCCOMB_X103_Y6_N10
\aluExecute|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~11_cout\ = CARRY((\finalB[5]~11_combout\ & ((!\aluExecute|LessThan2~9_cout\) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a5\))) # (!\finalB[5]~11_combout\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & 
-- !\aluExecute|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[5]~11_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datad => VCC,
	cin => \aluExecute|LessThan2~9_cout\,
	cout => \aluExecute|LessThan2~11_cout\);

-- Location: LCCOMB_X103_Y6_N12
\aluExecute|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~13_cout\ = CARRY((\regFile|registers_rtl_0|auto_generated|ram_block1a6\ & ((!\aluExecute|LessThan2~11_cout\) # (!\finalB[6]~10_combout\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a6\ & (!\finalB[6]~10_combout\ & 
-- !\aluExecute|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	datab => \finalB[6]~10_combout\,
	datad => VCC,
	cin => \aluExecute|LessThan2~11_cout\,
	cout => \aluExecute|LessThan2~13_cout\);

-- Location: LCCOMB_X103_Y6_N14
\aluExecute|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~15_cout\ = CARRY((\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & (\finalB[7]~9_combout\ & !\aluExecute|LessThan2~13_cout\)) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & ((\finalB[7]~9_combout\) # 
-- (!\aluExecute|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	datab => \finalB[7]~9_combout\,
	datad => VCC,
	cin => \aluExecute|LessThan2~13_cout\,
	cout => \aluExecute|LessThan2~15_cout\);

-- Location: LCCOMB_X103_Y6_N16
\aluExecute|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~17_cout\ = CARRY((\finalB[8]~8_combout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a8\ & !\aluExecute|LessThan2~15_cout\)) # (!\finalB[8]~8_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a8\) # 
-- (!\aluExecute|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[8]~8_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a8\,
	datad => VCC,
	cin => \aluExecute|LessThan2~15_cout\,
	cout => \aluExecute|LessThan2~17_cout\);

-- Location: LCCOMB_X103_Y6_N18
\aluExecute|LessThan2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~19_cout\ = CARRY((\finalB[9]~7_combout\ & ((!\aluExecute|LessThan2~17_cout\) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a9\))) # (!\finalB[9]~7_combout\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a9\ & 
-- !\aluExecute|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[9]~7_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a9\,
	datad => VCC,
	cin => \aluExecute|LessThan2~17_cout\,
	cout => \aluExecute|LessThan2~19_cout\);

-- Location: LCCOMB_X103_Y6_N20
\aluExecute|LessThan2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~21_cout\ = CARRY((\finalB[10]~6_combout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a10\ & !\aluExecute|LessThan2~19_cout\)) # (!\finalB[10]~6_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a10\) # 
-- (!\aluExecute|LessThan2~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[10]~6_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a10\,
	datad => VCC,
	cin => \aluExecute|LessThan2~19_cout\,
	cout => \aluExecute|LessThan2~21_cout\);

-- Location: LCCOMB_X103_Y6_N22
\aluExecute|LessThan2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~23_cout\ = CARRY((\finalB[11]~5_combout\ & ((!\aluExecute|LessThan2~21_cout\) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a11\))) # (!\finalB[11]~5_combout\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a11\ & 
-- !\aluExecute|LessThan2~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[11]~5_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a11\,
	datad => VCC,
	cin => \aluExecute|LessThan2~21_cout\,
	cout => \aluExecute|LessThan2~23_cout\);

-- Location: LCCOMB_X103_Y6_N24
\aluExecute|LessThan2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~25_cout\ = CARRY((\finalB[12]~4_combout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a12\ & !\aluExecute|LessThan2~23_cout\)) # (!\finalB[12]~4_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a12\) # 
-- (!\aluExecute|LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[12]~4_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a12\,
	datad => VCC,
	cin => \aluExecute|LessThan2~23_cout\,
	cout => \aluExecute|LessThan2~25_cout\);

-- Location: LCCOMB_X103_Y6_N26
\aluExecute|LessThan2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~27_cout\ = CARRY((\regFile|registers_rtl_0|auto_generated|ram_block1a13\ & (\finalB[13]~3_combout\ & !\aluExecute|LessThan2~25_cout\)) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a13\ & ((\finalB[13]~3_combout\) # 
-- (!\aluExecute|LessThan2~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a13\,
	datab => \finalB[13]~3_combout\,
	datad => VCC,
	cin => \aluExecute|LessThan2~25_cout\,
	cout => \aluExecute|LessThan2~27_cout\);

-- Location: LCCOMB_X103_Y6_N28
\aluExecute|LessThan2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~29_cout\ = CARRY((\finalB[14]~2_combout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a14\ & !\aluExecute|LessThan2~27_cout\)) # (!\finalB[14]~2_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a14\) # 
-- (!\aluExecute|LessThan2~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[14]~2_combout\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a14\,
	datad => VCC,
	cin => \aluExecute|LessThan2~27_cout\,
	cout => \aluExecute|LessThan2~29_cout\);

-- Location: LCCOMB_X103_Y6_N30
\aluExecute|LessThan2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|LessThan2~30_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a15\ & ((\aluExecute|LessThan2~29_cout\) # (!\finalB[15]~1_combout\))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a15\ & (\aluExecute|LessThan2~29_cout\ & 
-- !\finalB[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a15\,
	datad => \finalB[15]~1_combout\,
	cin => \aluExecute|LessThan2~29_cout\,
	combout => \aluExecute|LessThan2~30_combout\);

-- Location: LCCOMB_X102_Y6_N12
\aluExecute|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux15~3_combout\ = (!\switches|codop\(3) & ((\aluExecute|Mux15~1_combout\) # ((!\switches|codop\(2) & \aluExecute|LessThan2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(2),
	datab => \aluExecute|Mux15~1_combout\,
	datac => \aluExecute|LessThan2~30_combout\,
	datad => \switches|codop\(3),
	combout => \aluExecute|Mux15~3_combout\);

-- Location: LCCOMB_X102_Y6_N28
\aluExecute|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux15~5_combout\ = (\switches|codop\(1) & (\aluExecute|Mux15~3_combout\ & ((\aluExecute|Mux15~0_combout\) # (!\aluExecute|Mux15~2_combout\)))) # (!\switches|codop\(1) & (((\aluExecute|Mux15~2_combout\ & !\aluExecute|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Mux15~0_combout\,
	datab => \aluExecute|Mux15~2_combout\,
	datac => \switches|codop\(1),
	datad => \aluExecute|Mux15~3_combout\,
	combout => \aluExecute|Mux15~5_combout\);

-- Location: LCCOMB_X102_Y6_N14
\aluExecute|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux15~4_combout\ = (\aluExecute|Mux15~2_combout\ & ((\aluExecute|Mux15~0_combout\) # ((\switches|codop\(1) & !\aluExecute|Mux15~3_combout\)))) # (!\aluExecute|Mux15~2_combout\ & (!\switches|codop\(1) & (\aluExecute|Mux15~0_combout\ $ 
-- (\aluExecute|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Mux15~0_combout\,
	datab => \aluExecute|Mux15~2_combout\,
	datac => \switches|codop\(1),
	datad => \aluExecute|Mux15~3_combout\,
	combout => \aluExecute|Mux15~4_combout\);

-- Location: LCCOMB_X102_Y6_N2
\aluExecute|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux15~6_combout\ = (\aluExecute|Mux15~4_combout\ & (((!\switches|codop\(1) & !\aluExecute|Mux15~5_combout\)) # (!\switches|codop\(2)))) # (!\aluExecute|Mux15~4_combout\ & ((\switches|codop\(1) & ((\aluExecute|Mux15~5_combout\))) # 
-- (!\switches|codop\(1) & (!\switches|codop\(2) & !\aluExecute|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(2),
	datab => \switches|codop\(1),
	datac => \aluExecute|Mux15~4_combout\,
	datad => \aluExecute|Mux15~5_combout\,
	combout => \aluExecute|Mux15~6_combout\);

-- Location: LCCOMB_X102_Y6_N0
\aluExecute|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux15~7_combout\ = (\aluExecute|Mux15~6_combout\ & ((\switches|codop\(2)) # ((\aluExecute|Mux15~5_combout\) # (\aluExecute|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|codop\(2),
	datab => \aluExecute|Mux15~5_combout\,
	datac => \aluExecute|Add0~4_combout\,
	datad => \aluExecute|Mux15~6_combout\,
	combout => \aluExecute|Mux15~7_combout\);

-- Location: FF_X102_Y6_N1
\aluExecute|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(0));

-- Location: LCCOMB_X105_Y6_N4
\finalB[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalB[1]~15_combout\ = (\comb~0_combout\ & (\switches|addB_LMM\(1))) # (!\comb~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches|addB_LMM\(1),
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	datad => \comb~0_combout\,
	combout => \finalB[1]~15_combout\);

-- Location: LCCOMB_X101_Y6_N6
\aluExecute|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux14~0_combout\ = (\aluExecute|out[7]~0_combout\ & (((\aluExecute|out[7]~1_combout\)))) # (!\aluExecute|out[7]~0_combout\ & ((\finalB[1]~15_combout\ & ((\aluExecute|out[7]~1_combout\) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\))) # (!\finalB[1]~15_combout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \finalB[1]~15_combout\,
	datab => \aluExecute|out[7]~1_combout\,
	datac => \aluExecute|out[7]~0_combout\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	combout => \aluExecute|Mux14~0_combout\);

-- Location: LCCOMB_X101_Y6_N4
\aluExecute|out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|out~2_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & ((\comb~0_combout\ & (\switches|addB_LMM\(1))) # (!\comb~0_combout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \switches|addB_LMM\(1),
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	combout => \aluExecute|out~2_combout\);

-- Location: LCCOMB_X101_Y6_N2
\aluExecute|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux14~1_combout\ = (\aluExecute|Mux14~0_combout\ & (((\aluExecute|out~2_combout\)) # (!\aluExecute|out[7]~0_combout\))) # (!\aluExecute|Mux14~0_combout\ & (\aluExecute|out[7]~0_combout\ & ((\aluExecute|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|Mux14~0_combout\,
	datab => \aluExecute|out[7]~0_combout\,
	datac => \aluExecute|out~2_combout\,
	datad => \aluExecute|Add0~8_combout\,
	combout => \aluExecute|Mux14~1_combout\);

-- Location: LCCOMB_X101_Y6_N24
\aluExecute|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluExecute|Mux14~2_combout\ = (!\aluExecute|out[7]~3_combout\ & \aluExecute|Mux14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluExecute|out[7]~3_combout\,
	datad => \aluExecute|Mux14~1_combout\,
	combout => \aluExecute|Mux14~2_combout\);

-- Location: FF_X101_Y6_N25
\aluExecute|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dbk3|ALT_INV_PB_state~clkctrl_outclk\,
	d => \aluExecute|Mux14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluExecute|out\(1));

-- Location: LCCOMB_X103_Y54_N4
\display|display0|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr6~0_combout\ = (\aluExecute|out\(3) & (\aluExecute|out\(0) & (\aluExecute|out\(1) $ (\aluExecute|out\(2))))) # (!\aluExecute|out\(3) & (!\aluExecute|out\(1) & (\aluExecute|out\(0) $ (\aluExecute|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(1),
	datab => \aluExecute|out\(0),
	datac => \aluExecute|out\(3),
	datad => \aluExecute|out\(2),
	combout => \display|display0|WideOr6~0_combout\);

-- Location: LCCOMB_X103_Y54_N14
\display|display0|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr5~0_combout\ = (\aluExecute|out\(1) & ((\aluExecute|out\(0) & (\aluExecute|out\(3))) # (!\aluExecute|out\(0) & ((\aluExecute|out\(2)))))) # (!\aluExecute|out\(1) & (\aluExecute|out\(2) & (\aluExecute|out\(0) $ 
-- (\aluExecute|out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(1),
	datab => \aluExecute|out\(0),
	datac => \aluExecute|out\(3),
	datad => \aluExecute|out\(2),
	combout => \display|display0|WideOr5~0_combout\);

-- Location: LCCOMB_X103_Y54_N8
\display|display0|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr4~0_combout\ = (\aluExecute|out\(3) & (\aluExecute|out\(2) & ((\aluExecute|out\(1)) # (!\aluExecute|out\(0))))) # (!\aluExecute|out\(3) & (\aluExecute|out\(1) & (!\aluExecute|out\(0) & !\aluExecute|out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(1),
	datab => \aluExecute|out\(0),
	datac => \aluExecute|out\(3),
	datad => \aluExecute|out\(2),
	combout => \display|display0|WideOr4~0_combout\);

-- Location: LCCOMB_X103_Y54_N18
\display|display0|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr3~0_combout\ = (\aluExecute|out\(1) & ((\aluExecute|out\(0) & ((\aluExecute|out\(2)))) # (!\aluExecute|out\(0) & (\aluExecute|out\(3) & !\aluExecute|out\(2))))) # (!\aluExecute|out\(1) & (!\aluExecute|out\(3) & (\aluExecute|out\(0) 
-- $ (\aluExecute|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(1),
	datab => \aluExecute|out\(0),
	datac => \aluExecute|out\(3),
	datad => \aluExecute|out\(2),
	combout => \display|display0|WideOr3~0_combout\);

-- Location: LCCOMB_X103_Y54_N12
\display|display0|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr2~0_combout\ = (\aluExecute|out\(1) & (\aluExecute|out\(0) & (!\aluExecute|out\(3)))) # (!\aluExecute|out\(1) & ((\aluExecute|out\(2) & ((!\aluExecute|out\(3)))) # (!\aluExecute|out\(2) & (\aluExecute|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(1),
	datab => \aluExecute|out\(0),
	datac => \aluExecute|out\(3),
	datad => \aluExecute|out\(2),
	combout => \display|display0|WideOr2~0_combout\);

-- Location: LCCOMB_X103_Y54_N6
\display|display0|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr1~0_combout\ = (\aluExecute|out\(1) & (((!\aluExecute|out\(3) & !\aluExecute|out\(2))))) # (!\aluExecute|out\(1) & (\aluExecute|out\(0) & (\aluExecute|out\(3) $ (!\aluExecute|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(1),
	datab => \aluExecute|out\(0),
	datac => \aluExecute|out\(3),
	datad => \aluExecute|out\(2),
	combout => \display|display0|WideOr1~0_combout\);

-- Location: LCCOMB_X103_Y54_N24
\display|display0|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display0|WideOr0~0_combout\ = (\aluExecute|out\(0) & ((\aluExecute|out\(3)) # (\aluExecute|out\(1) $ (\aluExecute|out\(2))))) # (!\aluExecute|out\(0) & ((\aluExecute|out\(1)) # (\aluExecute|out\(3) $ (\aluExecute|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(1),
	datab => \aluExecute|out\(0),
	datac => \aluExecute|out\(3),
	datad => \aluExecute|out\(2),
	combout => \display|display0|WideOr0~0_combout\);

-- Location: LCCOMB_X114_Y22_N12
\display|display1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display1|WideOr6~0_combout\ = (\aluExecute|out\(7) & (\aluExecute|out\(4) & (\aluExecute|out\(6) $ (\aluExecute|out\(5))))) # (!\aluExecute|out\(7) & (!\aluExecute|out\(5) & (\aluExecute|out\(4) $ (\aluExecute|out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(7),
	datab => \aluExecute|out\(4),
	datac => \aluExecute|out\(6),
	datad => \aluExecute|out\(5),
	combout => \display|display1|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\display|display1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display1|WideOr5~0_combout\ = (\aluExecute|out\(7) & ((\aluExecute|out\(4) & ((\aluExecute|out\(5)))) # (!\aluExecute|out\(4) & (\aluExecute|out\(6))))) # (!\aluExecute|out\(7) & (\aluExecute|out\(6) & (\aluExecute|out\(4) $ 
-- (\aluExecute|out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(7),
	datab => \aluExecute|out\(4),
	datac => \aluExecute|out\(6),
	datad => \aluExecute|out\(5),
	combout => \display|display1|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y22_N16
\display|display1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display1|WideOr4~0_combout\ = (\aluExecute|out\(7) & (\aluExecute|out\(6) & ((\aluExecute|out\(5)) # (!\aluExecute|out\(4))))) # (!\aluExecute|out\(7) & (!\aluExecute|out\(4) & (!\aluExecute|out\(6) & \aluExecute|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(7),
	datab => \aluExecute|out\(4),
	datac => \aluExecute|out\(6),
	datad => \aluExecute|out\(5),
	combout => \display|display1|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\display|display1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display1|WideOr3~0_combout\ = (\aluExecute|out\(5) & ((\aluExecute|out\(4) & ((\aluExecute|out\(6)))) # (!\aluExecute|out\(4) & (\aluExecute|out\(7) & !\aluExecute|out\(6))))) # (!\aluExecute|out\(5) & (!\aluExecute|out\(7) & (\aluExecute|out\(4) 
-- $ (\aluExecute|out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(7),
	datab => \aluExecute|out\(4),
	datac => \aluExecute|out\(6),
	datad => \aluExecute|out\(5),
	combout => \display|display1|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\display|display1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display1|WideOr2~0_combout\ = (\aluExecute|out\(5) & (!\aluExecute|out\(7) & (\aluExecute|out\(4)))) # (!\aluExecute|out\(5) & ((\aluExecute|out\(6) & (!\aluExecute|out\(7))) # (!\aluExecute|out\(6) & ((\aluExecute|out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(7),
	datab => \aluExecute|out\(4),
	datac => \aluExecute|out\(6),
	datad => \aluExecute|out\(5),
	combout => \display|display1|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y22_N26
\display|display1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display1|WideOr1~0_combout\ = (\aluExecute|out\(5) & (!\aluExecute|out\(7) & ((!\aluExecute|out\(6))))) # (!\aluExecute|out\(5) & (\aluExecute|out\(4) & (\aluExecute|out\(7) $ (!\aluExecute|out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(7),
	datab => \aluExecute|out\(4),
	datac => \aluExecute|out\(6),
	datad => \aluExecute|out\(5),
	combout => \display|display1|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\display|display1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display1|WideOr0~0_combout\ = (\aluExecute|out\(4) & ((\aluExecute|out\(7)) # (\aluExecute|out\(6) $ (\aluExecute|out\(5))))) # (!\aluExecute|out\(4) & ((\aluExecute|out\(5)) # (\aluExecute|out\(7) $ (\aluExecute|out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluExecute|out\(7),
	datab => \aluExecute|out\(4),
	datac => \aluExecute|out\(6),
	datad => \aluExecute|out\(5),
	combout => \display|display1|WideOr0~0_combout\);

-- Location: LCCOMB_X100_Y4_N4
\display|display4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr6~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a2\ & (!\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ $ 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a3\)))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a2\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a1\ $ 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \display|display4|WideOr6~0_combout\);

-- Location: LCCOMB_X105_Y5_N28
\display|display4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr5~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a3\))) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a2\)))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a2\ & 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ $ (\regFile|registers_rtl_1|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \display|display4|WideOr5~0_combout\);

-- Location: LCCOMB_X100_Y4_N10
\display|display4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr4~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a2\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a3\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a1\) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\)))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a2\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & !\regFile|registers_rtl_1|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \display|display4|WideOr4~0_combout\);

-- Location: LCCOMB_X100_Y4_N24
\display|display4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr3~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a2\)) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (!\regFile|registers_rtl_1|auto_generated|ram_block1a2\ & \regFile|registers_rtl_1|auto_generated|ram_block1a3\)))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a3\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ $ (\regFile|registers_rtl_1|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \display|display4|WideOr3~0_combout\);

-- Location: LCCOMB_X100_Y4_N26
\display|display4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr2~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ((!\regFile|registers_rtl_1|auto_generated|ram_block1a3\)))) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a2\ & ((!\regFile|registers_rtl_1|auto_generated|ram_block1a3\))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a2\ & 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \display|display4|WideOr2~0_combout\);

-- Location: LCCOMB_X105_Y5_N14
\display|display4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr1~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & (!\regFile|registers_rtl_1|auto_generated|ram_block1a2\ & ((!\regFile|registers_rtl_1|auto_generated|ram_block1a3\)))) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a2\ $ (!\regFile|registers_rtl_1|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \display|display4|WideOr1~0_combout\);

-- Location: LCCOMB_X100_Y4_N28
\display|display4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display4|WideOr0~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a3\) # (\regFile|registers_rtl_1|auto_generated|ram_block1a1\ $ 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a2\)))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a1\) # (\regFile|registers_rtl_1|auto_generated|ram_block1a2\ $ 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a1\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a2\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \display|display4|WideOr0~0_combout\);

-- Location: LCCOMB_X100_Y4_N22
\display|display5|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr6~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a7\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a4\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a5\ $ 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a6\)))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a7\ & (!\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a4\ $ 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \display|display5|WideOr6~0_combout\);

-- Location: LCCOMB_X100_Y4_N16
\display|display5|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr5~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a4\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a7\)) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a4\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a6\))))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a6\ & 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a4\ $ (\regFile|registers_rtl_1|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \display|display5|WideOr5~0_combout\);

-- Location: LCCOMB_X100_Y4_N30
\display|display5|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr4~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a7\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a6\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a5\) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a4\)))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a7\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & (!\regFile|registers_rtl_1|auto_generated|ram_block1a4\ & 
-- !\regFile|registers_rtl_1|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \display|display5|WideOr4~0_combout\);

-- Location: LCCOMB_X100_Y5_N28
\display|display5|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr3~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a6\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a4\))) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a6\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a7\ & !\regFile|registers_rtl_1|auto_generated|ram_block1a4\)))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a7\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a6\ $ (\regFile|registers_rtl_1|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	combout => \display|display5|WideOr3~0_combout\);

-- Location: LCCOMB_X100_Y4_N8
\display|display5|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr2~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a4\ & (!\regFile|registers_rtl_1|auto_generated|ram_block1a7\))) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a6\ & ((!\regFile|registers_rtl_1|auto_generated|ram_block1a7\))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a6\ & 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \display|display5|WideOr2~0_combout\);

-- Location: LCCOMB_X100_Y4_N18
\display|display5|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr1~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & (((!\regFile|registers_rtl_1|auto_generated|ram_block1a7\ & !\regFile|registers_rtl_1|auto_generated|ram_block1a6\)))) # 
-- (!\regFile|registers_rtl_1|auto_generated|ram_block1a5\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a4\ & (\regFile|registers_rtl_1|auto_generated|ram_block1a7\ $ (!\regFile|registers_rtl_1|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \display|display5|WideOr1~0_combout\);

-- Location: LCCOMB_X100_Y4_N12
\display|display5|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display5|WideOr0~0_combout\ = (\regFile|registers_rtl_1|auto_generated|ram_block1a4\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a7\) # (\regFile|registers_rtl_1|auto_generated|ram_block1a5\ $ 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a6\)))) # (!\regFile|registers_rtl_1|auto_generated|ram_block1a4\ & ((\regFile|registers_rtl_1|auto_generated|ram_block1a5\) # (\regFile|registers_rtl_1|auto_generated|ram_block1a7\ $ 
-- (\regFile|registers_rtl_1|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_1|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_1|auto_generated|ram_block1a4\,
	datac => \regFile|registers_rtl_1|auto_generated|ram_block1a7\,
	datad => \regFile|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \display|display5|WideOr0~0_combout\);

-- Location: LCCOMB_X89_Y4_N28
\display|display6|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr6~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a2\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \display|display6|WideOr6~0_combout\);

-- Location: LCCOMB_X89_Y4_N26
\display|display6|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr5~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a1\)) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a2\))))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ (\regFile|registers_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \display|display6|WideOr5~0_combout\);

-- Location: LCCOMB_X89_Y4_N24
\display|display6|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr4~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a1\) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & !\regFile|registers_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \display|display6|WideOr4~0_combout\);

-- Location: LCCOMB_X89_Y4_N18
\display|display6|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr3~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a2\))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & !\regFile|registers_rtl_0|auto_generated|ram_block1a2\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ (\regFile|registers_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \display|display6|WideOr3~0_combout\);

-- Location: LCCOMB_X89_Y4_N8
\display|display6|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr2~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\)) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a2\ & 
-- ((\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \display|display6|WideOr2~0_combout\);

-- Location: LCCOMB_X89_Y4_N10
\display|display6|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr1~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a3\ & ((!\regFile|registers_rtl_0|auto_generated|ram_block1a2\)))) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a1\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a3\ $ (!\regFile|registers_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \display|display6|WideOr1~0_combout\);

-- Location: LCCOMB_X89_Y4_N16
\display|display6|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display6|WideOr0~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a3\) # (\regFile|registers_rtl_0|auto_generated|ram_block1a1\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a2\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a1\) # (\regFile|registers_rtl_0|auto_generated|ram_block1a3\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a1\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \display|display6|WideOr0~0_combout\);

-- Location: LCCOMB_X100_Y5_N30
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

-- Location: LCCOMB_X100_Y5_N12
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

-- Location: LCCOMB_X100_Y5_N26
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

-- Location: LCCOMB_X100_Y4_N2
\display|display7|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display7|WideOr3~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a6\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a4\)) # 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a6\ & (!\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & \regFile|registers_rtl_0|auto_generated|ram_block1a7\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a5\ & 
-- (!\regFile|registers_rtl_0|auto_generated|ram_block1a7\ & (\regFile|registers_rtl_0|auto_generated|ram_block1a6\ $ (\regFile|registers_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	combout => \display|display7|WideOr3~0_combout\);

-- Location: LCCOMB_X100_Y5_N4
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

-- Location: LCCOMB_X100_Y5_N10
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

-- Location: LCCOMB_X100_Y4_N0
\display|display7|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|display7|WideOr0~0_combout\ = (\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a7\) # (\regFile|registers_rtl_0|auto_generated|ram_block1a5\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a6\)))) # (!\regFile|registers_rtl_0|auto_generated|ram_block1a4\ & ((\regFile|registers_rtl_0|auto_generated|ram_block1a5\) # (\regFile|registers_rtl_0|auto_generated|ram_block1a6\ $ 
-- (\regFile|registers_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|registers_rtl_0|auto_generated|ram_block1a5\,
	datab => \regFile|registers_rtl_0|auto_generated|ram_block1a6\,
	datac => \regFile|registers_rtl_0|auto_generated|ram_block1a4\,
	datad => \regFile|registers_rtl_0|auto_generated|ram_block1a7\,
	combout => \display|display7|WideOr0~0_combout\);

-- Location: LCCOMB_X105_Y4_N0
\clockGenerator|f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockGenerator|f1~0_combout\ = (\clockGenerator|count\(0) & !\clockGenerator|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockGenerator|count\(0),
	datac => \clockGenerator|count\(1),
	combout => \clockGenerator|f1~0_combout\);

-- Location: FF_X105_Y4_N1
\clockGenerator|f1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockGenerator|f1~0_combout\,
	ena => \clockGenerator|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockGenerator|f1~q\);

-- Location: LCCOMB_X105_Y7_N28
\PRINT_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PRINT_clk~0_combout\ = (\clockGenerator|f1~q\ & ((\dbk3|PB_state~q\) # (!\dbk0|PB_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbk3|PB_state~q\,
	datac => \dbk0|PB_state~q\,
	datad => \clockGenerator|f1~q\,
	combout => \PRINT_clk~0_combout\);

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


