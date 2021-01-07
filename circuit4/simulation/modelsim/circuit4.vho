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

-- DATE "09/20/2019 12:11:48"

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

ENTITY 	circuit4 IS
    PORT (
	i_P0 : IN std_logic;
	i_P1 : IN std_logic;
	i_P2 : IN std_logic;
	i_P3 : IN std_logic;
	o_S0 : OUT std_logic;
	o_S1 : OUT std_logic;
	o_S2 : OUT std_logic;
	o_S3 : OUT std_logic
	);
END circuit4;

-- Design Ports Information
-- o_S0	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S1	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S2	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S3	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_P0	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_P1	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_P2	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_P3	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuit4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_P0 : std_logic;
SIGNAL ww_i_P1 : std_logic;
SIGNAL ww_i_P2 : std_logic;
SIGNAL ww_i_P3 : std_logic;
SIGNAL ww_o_S0 : std_logic;
SIGNAL ww_o_S1 : std_logic;
SIGNAL ww_o_S2 : std_logic;
SIGNAL ww_o_S3 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_P0~input_o\ : std_logic;
SIGNAL \i_P1~input_o\ : std_logic;
SIGNAL \o_S1~0_combout\ : std_logic;
SIGNAL \i_P2~input_o\ : std_logic;
SIGNAL \o_S2~0_combout\ : std_logic;
SIGNAL \i_P3~input_o\ : std_logic;
SIGNAL \o_S3~0_combout\ : std_logic;
SIGNAL \ALT_INV_i_P3~input_o\ : std_logic;
SIGNAL \ALT_INV_i_P2~input_o\ : std_logic;
SIGNAL \ALT_INV_i_P1~input_o\ : std_logic;
SIGNAL \ALT_INV_i_P0~input_o\ : std_logic;

BEGIN

ww_i_P0 <= i_P0;
ww_i_P1 <= i_P1;
ww_i_P2 <= i_P2;
ww_i_P3 <= i_P3;
o_S0 <= ww_o_S0;
o_S1 <= ww_o_S1;
o_S2 <= ww_o_S2;
o_S3 <= ww_o_S3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_P3~input_o\ <= NOT \i_P3~input_o\;
\ALT_INV_i_P2~input_o\ <= NOT \i_P2~input_o\;
\ALT_INV_i_P1~input_o\ <= NOT \i_P1~input_o\;
\ALT_INV_i_P0~input_o\ <= NOT \i_P0~input_o\;

-- Location: IOOBUF_X89_Y20_N96
\o_S0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_P0~input_o\,
	devoe => ww_devoe,
	o => ww_o_S0);

-- Location: IOOBUF_X89_Y20_N79
\o_S1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S1~0_combout\,
	devoe => ww_devoe,
	o => ww_o_S1);

-- Location: IOOBUF_X89_Y21_N39
\o_S2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S2~0_combout\,
	devoe => ww_devoe,
	o => ww_o_S2);

-- Location: IOOBUF_X89_Y23_N39
\o_S3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S3~0_combout\,
	devoe => ww_devoe,
	o => ww_o_S3);

-- Location: IOIBUF_X89_Y20_N44
\i_P0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_P0,
	o => \i_P0~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\i_P1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_P1,
	o => \i_P1~input_o\);

-- Location: LABCELL_X88_Y21_N0
\o_S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_S1~0_combout\ = ( \i_P1~input_o\ & ( !\i_P0~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_P0~input_o\,
	dataf => \ALT_INV_i_P1~input_o\,
	combout => \o_S1~0_combout\);

-- Location: IOIBUF_X89_Y21_N21
\i_P2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_P2,
	o => \i_P2~input_o\);

-- Location: LABCELL_X88_Y21_N39
\o_S2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_S2~0_combout\ = ( \i_P2~input_o\ & ( (!\i_P0~input_o\ & !\i_P1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_P0~input_o\,
	datad => \ALT_INV_i_P1~input_o\,
	datae => \ALT_INV_i_P2~input_o\,
	combout => \o_S2~0_combout\);

-- Location: IOIBUF_X89_Y21_N55
\i_P3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_P3,
	o => \i_P3~input_o\);

-- Location: LABCELL_X88_Y21_N42
\o_S3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_S3~0_combout\ = ( \i_P3~input_o\ & ( (!\i_P1~input_o\ & (!\i_P2~input_o\ & !\i_P0~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_P1~input_o\,
	datab => \ALT_INV_i_P2~input_o\,
	datac => \ALT_INV_i_P0~input_o\,
	datae => \ALT_INV_i_P3~input_o\,
	combout => \o_S3~0_combout\);

-- Location: MLABCELL_X15_Y64_N3
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


