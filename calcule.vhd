LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

entity calcule is port(
	s: in std_logic_vector(3 downto 0);
	nombre_1: in std_logic_vector(3 downto 0);
	nombre_2: in std_logic_vector(3 downto 0);
	res: out std_logic_vector(15 downto 0);
	clk: in std_logic);
	
end calcule;

architecture archi_calcule of calcule is 
begin
process
begin
	wait until(clk = '1' and clk'event);
	if(s = "1011") then 
		res <= nombre_1 + nombre 2;
	if(s = "1100") then 
		res <= nombre_1 - nombre_2;
	if(s = "1101") then 
		res <= nombre_1 * nombre_2;
	if(s = "1110") then 
		res <= nombre_1/nombre_2;
end if;
end process;
end archi_calcule;
