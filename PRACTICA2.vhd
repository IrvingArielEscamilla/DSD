Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Entity PRACTICA2 is
port(A,B: in std_logic;
	F0,F1,F2: out std_logic);
	
end PRACTICA2;

Architecture Irving of PraCTICA2 is
begin

f0<=(not A and not B)or(not A and B);
f1<=(not A and not B)or(A and B);
F2<=(A and not B);

end Irving;