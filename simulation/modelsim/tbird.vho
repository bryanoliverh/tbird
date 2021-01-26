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

-- DATE "03/24/2020 21:53:56"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tbird IS
    PORT (
	rightin : IN std_logic;
	leftin : IN std_logic;
	hazard : IN std_logic;
	clock : IN std_logic;
	Left3 : BUFFER std_logic;
	Left2 : BUFFER std_logic;
	Left1 : BUFFER std_logic;
	right1 : BUFFER std_logic;
	right2 : BUFFER std_logic;
	right3 : BUFFER std_logic
	);
END tbird;

-- Design Ports Information
-- Left3	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Left2	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Left1	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right1	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right2	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right3	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hazard	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rightin	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftin	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tbird IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rightin : std_logic;
SIGNAL ww_leftin : std_logic;
SIGNAL ww_hazard : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Left3 : std_logic;
SIGNAL ww_Left2 : std_logic;
SIGNAL ww_Left1 : std_logic;
SIGNAL ww_right1 : std_logic;
SIGNAL ww_right2 : std_logic;
SIGNAL ww_right3 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rightin~input_o\ : std_logic;
SIGNAL \hazard~input_o\ : std_logic;
SIGNAL \leftin~input_o\ : std_logic;
SIGNAL \S1.r1~0_combout\ : std_logic;
SIGNAL \S0.r1~q\ : std_logic;
SIGNAL \S1.r2~0_combout\ : std_logic;
SIGNAL \S0.r2~q\ : std_logic;
SIGNAL \S1.r3~0_combout\ : std_logic;
SIGNAL \S0.r3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \S0.steady~q\ : std_logic;
SIGNAL \S1.l1~0_combout\ : std_logic;
SIGNAL \S0.l1~q\ : std_logic;
SIGNAL \S1.l2~0_combout\ : std_logic;
SIGNAL \S0.l2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \S0.lr3~q\ : std_logic;
SIGNAL \S1.l3~0_combout\ : std_logic;
SIGNAL \S0.l3~q\ : std_logic;
SIGNAL \Left3~0_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \ALT_INV_leftin~input_o\ : std_logic;
SIGNAL \ALT_INV_rightin~input_o\ : std_logic;
SIGNAL \ALT_INV_hazard~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \ALT_INV_S0.l1~q\ : std_logic;
SIGNAL \ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \ALT_INV_S0.r2~q\ : std_logic;
SIGNAL \ALT_INV_S0.r1~q\ : std_logic;
SIGNAL \ALT_INV_S0.r3~q\ : std_logic;
SIGNAL \ALT_INV_S0.steady~q\ : std_logic;
SIGNAL \ALT_INV_S0.l2~q\ : std_logic;
SIGNAL \ALT_INV_Left3~0_combout\ : std_logic;
SIGNAL \ALT_INV_S0.lr3~q\ : std_logic;
SIGNAL \ALT_INV_S0.l3~q\ : std_logic;

BEGIN

ww_rightin <= rightin;
ww_leftin <= leftin;
ww_hazard <= hazard;
ww_clock <= clock;
Left3 <= ww_Left3;
Left2 <= ww_Left2;
Left1 <= ww_Left1;
right1 <= ww_right1;
right2 <= ww_right2;
right3 <= ww_right3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_leftin~input_o\ <= NOT \leftin~input_o\;
\ALT_INV_rightin~input_o\ <= NOT \rightin~input_o\;
\ALT_INV_hazard~input_o\ <= NOT \hazard~input_o\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_WideOr5~0_combout\ <= NOT \WideOr5~0_combout\;
\ALT_INV_WideOr4~combout\ <= NOT \WideOr4~combout\;
\ALT_INV_S0.l1~q\ <= NOT \S0.l1~q\;
\ALT_INV_WideOr3~combout\ <= NOT \WideOr3~combout\;
\ALT_INV_S0.r2~q\ <= NOT \S0.r2~q\;
\ALT_INV_S0.r1~q\ <= NOT \S0.r1~q\;
\ALT_INV_S0.r3~q\ <= NOT \S0.r3~q\;
\ALT_INV_S0.steady~q\ <= NOT \S0.steady~q\;
\ALT_INV_S0.l2~q\ <= NOT \S0.l2~q\;
\ALT_INV_Left3~0_combout\ <= NOT \Left3~0_combout\;
\ALT_INV_S0.lr3~q\ <= NOT \S0.lr3~q\;
\ALT_INV_S0.l3~q\ <= NOT \S0.l3~q\;

-- Location: IOOBUF_X89_Y35_N79
\Left3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Left3~0_combout\,
	devoe => ww_devoe,
	o => ww_Left3);

-- Location: IOOBUF_X89_Y35_N96
\Left2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~combout\,
	devoe => ww_devoe,
	o => ww_Left2);

-- Location: IOOBUF_X89_Y36_N5
\Left1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => ww_Left1);

-- Location: IOOBUF_X89_Y36_N56
\right1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_right1);

-- Location: IOOBUF_X89_Y35_N45
\right2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_right2);

-- Location: IOOBUF_X89_Y36_N22
\right3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_right3);

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y38_N4
\rightin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rightin,
	o => \rightin~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\hazard~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hazard,
	o => \hazard~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\leftin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_leftin,
	o => \leftin~input_o\);

-- Location: LABCELL_X88_Y36_N9
\S1.r1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1.r1~0_combout\ = ( !\S0.steady~q\ & ( (!\leftin~input_o\ & (!\hazard~input_o\ & \rightin~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leftin~input_o\,
	datab => \ALT_INV_hazard~input_o\,
	datac => \ALT_INV_rightin~input_o\,
	dataf => \ALT_INV_S0.steady~q\,
	combout => \S1.r1~0_combout\);

-- Location: FF_X88_Y36_N11
\S0.r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \S1.r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0.r1~q\);

-- Location: LABCELL_X88_Y36_N6
\S1.r2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1.r2~0_combout\ = ( \S0.r1~q\ & ( !\hazard~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hazard~input_o\,
	dataf => \ALT_INV_S0.r1~q\,
	combout => \S1.r2~0_combout\);

-- Location: FF_X88_Y36_N8
\S0.r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \S1.r2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0.r2~q\);

-- Location: LABCELL_X88_Y36_N36
\S1.r3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1.r3~0_combout\ = (!\hazard~input_o\ & \S0.r2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hazard~input_o\,
	datad => \ALT_INV_S0.r2~q\,
	combout => \S1.r3~0_combout\);

-- Location: FF_X88_Y36_N38
\S0.r3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \S1.r3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0.r3~q\);

-- Location: LABCELL_X88_Y36_N48
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \S0.steady~q\ & ( \Left3~0_combout\ & ( !\S0.r3~q\ ) ) ) # ( !\S0.steady~q\ & ( \Left3~0_combout\ & ( (!\S0.r3~q\ & (((\rightin~input_o\) # (\hazard~input_o\)) # (\leftin~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leftin~input_o\,
	datab => \ALT_INV_hazard~input_o\,
	datac => \ALT_INV_S0.r3~q\,
	datad => \ALT_INV_rightin~input_o\,
	datae => \ALT_INV_S0.steady~q\,
	dataf => \ALT_INV_Left3~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X88_Y36_N50
\S0.steady\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0.steady~q\);

-- Location: LABCELL_X88_Y36_N57
\S1.l1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1.l1~0_combout\ = ( !\S0.steady~q\ & ( (!\rightin~input_o\ & (!\hazard~input_o\ & \leftin~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rightin~input_o\,
	datac => \ALT_INV_hazard~input_o\,
	datad => \ALT_INV_leftin~input_o\,
	dataf => \ALT_INV_S0.steady~q\,
	combout => \S1.l1~0_combout\);

-- Location: FF_X88_Y36_N59
\S0.l1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \S1.l1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0.l1~q\);

-- Location: LABCELL_X88_Y36_N15
\S1.l2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1.l2~0_combout\ = ( \S0.l1~q\ & ( !\hazard~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hazard~input_o\,
	dataf => \ALT_INV_S0.l1~q\,
	combout => \S1.l2~0_combout\);

-- Location: FF_X88_Y36_N17
\S0.l2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \S1.l2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0.l2~q\);

-- Location: LABCELL_X88_Y36_N42
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\S0.r1~q\ & ( (!\S0.r2~q\ & (!\S0.l2~q\ & !\S0.l1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0.r2~q\,
	datac => \ALT_INV_S0.l2~q\,
	datad => \ALT_INV_S0.l1~q\,
	dataf => \ALT_INV_S0.r1~q\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X88_Y36_N12
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \Selector1~0_combout\ & ( (!\S0.steady~q\ & (((\rightin~input_o\ & \leftin~input_o\)) # (\hazard~input_o\))) ) ) # ( !\Selector1~0_combout\ & ( ((\rightin~input_o\ & (!\S0.steady~q\ & \leftin~input_o\))) # (\hazard~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011001100110111001100110000011100000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rightin~input_o\,
	datab => \ALT_INV_hazard~input_o\,
	datac => \ALT_INV_S0.steady~q\,
	datad => \ALT_INV_leftin~input_o\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X88_Y36_N14
\S0.lr3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0.lr3~q\);

-- Location: LABCELL_X88_Y36_N33
\S1.l3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1.l3~0_combout\ = ( \S0.l2~q\ & ( !\hazard~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hazard~input_o\,
	dataf => \ALT_INV_S0.l2~q\,
	combout => \S1.l3~0_combout\);

-- Location: FF_X88_Y36_N35
\S0.l3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \S1.l3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0.l3~q\);

-- Location: LABCELL_X88_Y36_N18
\Left3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Left3~0_combout\ = ( !\S0.l3~q\ & ( !\S0.lr3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0.lr3~q\,
	dataf => \ALT_INV_S0.l3~q\,
	combout => \Left3~0_combout\);

-- Location: LABCELL_X88_Y36_N0
WideOr2 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ( \S0.l3~q\ ) # ( !\S0.l3~q\ & ( (\S0.l2~q\) # (\S0.lr3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0.lr3~q\,
	datad => \ALT_INV_S0.l2~q\,
	dataf => \ALT_INV_S0.l3~q\,
	combout => \WideOr2~combout\);

-- Location: LABCELL_X88_Y36_N27
WideOr3 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = ( \S0.r1~q\ ) # ( !\S0.r1~q\ & ( (!\S0.steady~q\) # ((\S0.r2~q\) # (\S0.r3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0.steady~q\,
	datac => \ALT_INV_S0.r3~q\,
	datad => \ALT_INV_S0.r2~q\,
	dataf => \ALT_INV_S0.r1~q\,
	combout => \WideOr3~combout\);

-- Location: LABCELL_X88_Y36_N24
WideOr4 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ( \S0.l3~q\ ) # ( !\S0.l3~q\ & ( (!\S0.steady~q\) # ((\S0.l1~q\) # (\S0.l2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0.steady~q\,
	datab => \ALT_INV_S0.l2~q\,
	datac => \ALT_INV_S0.l1~q\,
	dataf => \ALT_INV_S0.l3~q\,
	combout => \WideOr4~combout\);

-- Location: LABCELL_X88_Y36_N45
WideOr5 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ((\S0.r3~q\) # (\S0.lr3~q\)) # (\S0.r2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0.r2~q\,
	datac => \ALT_INV_S0.lr3~q\,
	datad => \ALT_INV_S0.r3~q\,
	combout => \WideOr5~combout\);

-- Location: LABCELL_X88_Y36_N21
\WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (!\S0.lr3~q\ & !\S0.r3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0.lr3~q\,
	datad => \ALT_INV_S0.r3~q\,
	combout => \WideOr5~0_combout\);

-- Location: MLABCELL_X82_Y77_N0
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


