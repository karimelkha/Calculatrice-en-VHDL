LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

entity registre_operateur is port(
	etat_out: in std_logic_vector (1 downto 0);
	clk: in std_logic;
	s: out std_logic_vector (3 downto 0)
	);
end registre_operateur;

architecture archi_operateur of registre_operateur is
begin
process (clk)
begin

	if (etat_out = "1010") then
		s <= "1010";
	if (etat_out = "1011") then 
		s <= "1011";
	if(etat_out = "1100") then
		s <= "1100";
	if(etat_out = "1101") then
		s <= "1101";
end if;
end process;
end archi_operateur;