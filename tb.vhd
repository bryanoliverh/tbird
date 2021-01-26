--Bryan Oliver
--Testbench for Tbird
library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

entity tb is
end entity tb;

architecture behave of tb is 
component tbird is
	port(
		rightin		: in bit;
		leftin		: in bit;
		hazard		: in bit;
		clock		: in bit;
		Left3,Left2,Left1,right1,right2,right3 : OUT bit);
		
		
end component;

signal signalright 	: bit_vector(1 to 24) :=	('0','1','1','1','0','1','0','0','1','1','1','1','0','1','1','0','1','0','0','1','0','1','0','0');
 
signal signalleft		: bit_vector(1 to 24) := 	('1','1','1','0','1','0','0','1','1','0','0','1','0','1','0','0','1','1','0','0','1','0','1','0');



signal signhaz 		: bit_vector(1 to 24) := 	('1','1','1','0','0','0','1','1','1','0','1','1','1','1','1','0','0','0','1','1','1','0','1','1');


signal rightin,  hazard,leftin,Left3,Left2,Left1,right1,right2,right3 : bit;
signal clock : bit := '1';

constant clk_testb : time := 30 ns;
for all	:tbird use entity work.tbird(behaviour);

begin
port_tbird : tbird port map(rightin,leftin,hazard,clock,Left3,Left2,Left1,right1,right2,right3);
clock <= not clock after clk_testb;
	
proc 	:process
				begin
					wait for 1 ns;
						for i in 1 to 24 loop
							rightin <= signalright(i);
							leftin <= signalleft(i);
							hazard <= signhaz(i);
					WAIT FOR 30 ns;
			END LOOP;
			WAIT FOR 30 ns;
			WAIT;
	end process proc;
end behave;