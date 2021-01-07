-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/20/2019 12:05:26"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	circuit3 IS
    PORT (
	i_MUX0 : IN std_logic;
	i_MUX1 : IN std_logic;
	i_MUXSEL : IN std_logic;
	i_DMUXSEL : IN std_logic;
	o_DMUX0 : OUT std_logic;
	o_DMUX1 : OUT std_logic
	);
END circuit3;

-- Design Ports Information
-- o_DMUX0	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DMUX1	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DMUXSEL	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MUX1	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MUXSEL	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MUX0	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuit3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_MUX0 : std_logic;
SIGNAL ww_i_MUX1 : std_logic;
SIGNAL ww_i_MUXSEL : std_logic;
SIGNAL ww_i_DMUXSEL : std_logic;
SIGNAL ww_o_DMUX0 : std_logic;
SIGNAL ww_o_DMUX1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_DMUXSEL~input_o\ : std_logic;
SIGNAL \i_MUX0~input_o\ : std_logic;
SIGNAL \i_MUXSEL~input_o\ : std_logic;
SIGNAL \i_MUX1~input_o\ : std_logic;
SIGNAL \o_DMUX0~0_combout\ : std_logic;
SIGNAL \o_DMUX1~0_combout\ : std_logic;
SIGNAL \ALT_INV_i_MUX0~input_o\ : std_logic;
SIGNAL \ALT_INV_i_MUXSEL~input_o\ : std_logic;
SIGNAL \ALT_INV_i_MUX1~input_o\ : std_logic;
SIGNAL \ALT_INV_i_DMUXSEL~input_o\ : std_logic;

BEGIN

ww_i_MUX0 <= i_MUX0;
ww_i_MUX1 <= i_MUX1;
ww_i_MUXSEL <= i_MUXSEL;
ww_i_DMUXSEL <= i_DMUXSEL;
o_DMUX0 <= ww_o_DMUX0;
o_DMUX1 <= ww_o_DMUX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_MUX0~input_o\ <= NOT \i_MUX0~input_o\;
\ALT_INV_i_MUXSEL~input_o\ <= NOT \i_MUXSEL~input_o\;
\ALT_INV_i_MUX1~input_o\ <= NOT \i_MUX1~input_o\;
\ALT_INV_i_DMUXSEL~input_o\ <= NOT \i_DMUXSEL~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\o_DMUX0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DMUX0~0_combout\,
	devoe => ww_devoe,
	o => ww_o_DMUX0);

-- Location: IOOBUF_X52_Y0_N19
\o_DMUX1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DMUX1~0_combout\,
	devoe => ww_devoe,
	o => ww_o_DMUX1);

-- Location: IOIBUF_X4_Y0_N52
\i_DMUXSEL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DMUXSEL,
	o => \i_DMUXSEL~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\i_MUX0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MUX0,
	o => \i_MUX0~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\i_MUXSEL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MUXSEL,
	o => \i_MUXSEL~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\i_MUX1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MUX1,
	o => \i_MUX1~input_o\);

-- Location: MLABCELL_X15_Y2_N30
\o_DMUX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_DMUX0~0_combout\ = ( \i_MUXSEL~input_o\ & ( \i_MUX1~input_o\ & ( !\i_DMUXSEL~input_o\ ) ) ) # ( !\i_MUXSEL~input_o\ & ( \i_MUX1~input_o\ & ( (!\i_DMUXSEL~input_o\ & \i_MUX0~input_o\) ) ) ) # ( !\i_MUXSEL~input_o\ & ( !\i_MUX1~input_o\ & ( 
-- (!\i_DMUXSEL~input_o\ & \i_MUX0~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_DMUXSEL~input_o\,
	datac => \ALT_INV_i_MUX0~input_o\,
	datae => \ALT_INV_i_MUXSEL~input_o\,
	dataf => \ALT_INV_i_MUX1~input_o\,
	combout => \o_DMUX0~0_combout\);

-- Location: MLABCELL_X15_Y2_N9
\o_DMUX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_DMUX1~0_combout\ = ( \i_MUXSEL~input_o\ & ( \i_MUX1~input_o\ & ( \i_DMUXSEL~input_o\ ) ) ) # ( !\i_MUXSEL~input_o\ & ( \i_MUX1~input_o\ & ( (\i_MUX0~input_o\ & \i_DMUXSEL~input_o\) ) ) ) # ( !\i_MUXSEL~input_o\ & ( !\i_MUX1~input_o\ & ( 
-- (\i_MUX0~input_o\ & \i_DMUXSEL~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_MUX0~input_o\,
	datac => \ALT_INV_i_DMUXSEL~input_o\,
	datae => \ALT_INV_i_MUXSEL~input_o\,
	dataf => \ALT_INV_i_MUX1~input_o\,
	combout => \o_DMUX1~0_combout\);

-- Location: LABCELL_X10_Y26_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


