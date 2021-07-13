library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity cuenta is port (clk,UP: in std_logic;							  
							  Q: inout std_logic_vector(3 downto 0));
end cuenta;

architecture irving of cuenta is
begin
process (UP,clk)
begin

if(clk'event and clk='1')then
if(UP = '0') then

	Q<=Q+1;
	else
	Q<=Q-1;
	
end if ;
end if ;
end process ;
end irving; 
