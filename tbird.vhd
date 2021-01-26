--Thunderbird program
library ieee;
use ieee.std_logic_1164.all;

entity tbird is
	port(
		rightin	: in bit;
		leftin	: in bit;
		hazard	: in bit;
		clock		: in bit;
		Left3,Left2,Left1,right1,right2,right3 : OUT bit);
end entity tbird;

architecture behaviour of tbird is
	TYPE COndition IS (steady,l1,l2,l3,r1,r2,r3,lr3);
	SIGNAL S0,S1 : COndition;
begin

case1 : process(clock) begin
		if(clock = '1' and clock'event) then
			S0 <= S1;
		end if;
end process case1;

PROCESS (S0,rightin,leftin,hazard) BEGIN 
CASE S0 IS 
	WHEN steady => IF (hazard='1' OR (leftin='1' AND rightin='1')) THEN S1 <= lr3; 
						ELSIF (hazard='0' AND leftin='0' AND rightin='1') THEN S1 <= r1; 
						ELSIF (hazard='0' AND leftin='1' AND rightin='0') THEN S1 <= l1; 
						ELSE S1 <= steady; 
					END IF; 
					WHEN l1 => IF (hazard='1') THEN S1 <= lr3; 
									ELSE S1 <= l2; 
								END IF; 
					WHEN l2 => IF (hazard='1') THEN S1 <= lr3; ELSE S1 <= l3; 
									END IF; 
					WHEN l3 => S1 <= steady; 
					WHEN r1 => IF (hazard='1') THEN S1 <= lr3; 
									ELSE S1 <= r2; 
									END IF; 
					WHEN r2 => IF (hazard='1') THEN S1 <= lr3; 
									ELSE S1 <= r3; 
									END IF; 
					WHEN r3 => S1 <= steady; WHEN lr3 => S1 <= steady; 
	END CASE; 
END PROCESS;
	
case3:	PROCESS (S0) BEGIN 
	CASE S0 IS 
	WHEN steady => Left3<='0'; Left2<='0'; Left1<='0'; right1<='0'; right2<='0'; right3<='0'; 
	WHEN l1 => Left3<='0'; Left2<='0'; Left1<='1'; right1<='0'; right2<='0'; right3<='0';
	WHEN l2 => Left3<='0'; Left2<='1'; Left1<='1'; right1<='0'; right2<='0'; right3<='0';
	WHEN l3 => Left3<='1'; Left2<='1'; Left1<='1'; right1<='0'; right2<='0'; right3<='0'; 
	WHEN r1 => Left3<='0'; Left2<='0'; Left1<='0'; right1<='1'; right2<='0'; right3<='0'; 
	WHEN r2 => Left3<='0'; Left2<='0'; Left1<='0'; right1<='1'; right2<='1'; right3<='0'; 
	WHEN r3 => Left3<='0'; Left2<='0'; Left1<='0'; right1<='1'; right2<='1'; right3<='1'; 
	WHEN lr3 => Left3<='1'; Left2<='1'; Left1<='1'; right1<='1'; right2<='1'; right3<='1'; 
	END CASE; 
END PROCESS;
end behaviour;