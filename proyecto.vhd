library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity proyecto is port( clk: in std_logic;
							  q: inout std_logic_vector (3 downto 0 );
							  F: inout std_logic_vector (6 downto 0);							  
							  ol: inout std_logic_vector (7 downto 0));
							  
end proyecto;

architecture irving of proyecto is
begin
--contador
contador: process(clk)
begin
if (clk' event and clk='1')then
q<=q+1;
end if;
end process contador;


--decodificador --display
decodificador: process(q)
begin
case q is

when "0000"=>f<="1111110";
when "0001"=>f<="0110000";
when "0010"=>f<="1101101";
when "0011"=>f<="1111001";
when "0100"=>f<="0110011";
when "0101"=>f<="1011011";
when "0110"=>f<="1011111";
when "0111"=>f<="1110000";
when "1000"=>f<="1111111";
when "1001"=>f<="1110011";
when others=>f<="0000000";
end case;
end process decodificador;


-- luces
luces: process(q)
begin
case q is

when "0000"=>ol<="00000000";
when "0001"=>ol<="00000001";
when "0010"=>ol<="00000011";
when "0011"=>ol<="00000111";
when "0100"=>ol<="00001111";
when "0101"=>ol<="00011111";
when "0110"=>ol<="00111111";
when "0111"=>ol<="01111111";
when "1000"=>ol<="11111111";
when others=>ol<="00000000";

end case;
end process luces;



end irving;


