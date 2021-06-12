library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity vectores is
port (a: in std_logic_vector (3 DOWNTO 0);
	   f: out std_logic_vector (0 TO 7));
	
end vectores;

architecture irving of vectores is
begin

f<= "11111111"  when (a= "0000") else
    "01111111"  when (a= "0001") else
	 "00111111"  when (a= "0010") else
    "00011111"  when (a= "0011") else
    "00001111"  when (a= "0100") else
    "00000111"  when (a= "0101") else
	 "00000011"  when (a= "0110") else
    "00000001"  when (a= "0111") else
	 
    "00000000"  when (a= "1000") else
	 
    "00000001"  when (a= "1001") else
    "00000011"  when (a= "1010") else
    "00000111"  when (a= "1011") else
    "00001111"  when (a= "1100") else
    "00011111"  when (a= "1101") else
    "00111111"  when (a= "1110") else
    "01111111"  when (a= "1111") ;
	

end irving;