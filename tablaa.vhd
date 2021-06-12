library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tablaa is
port (a,b: in std_logic;
	f0, f1: out std_logic);
	
end tablaa;

architecture irving of tablaa is
begin

f0<='1' when (a='0' and b='0') else
	 '1' when (a='0' and b='1') else
	 '0';
	
f1<='0' when (a='1' and b='1') else
	 '1';
end irving;