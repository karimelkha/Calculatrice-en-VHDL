library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity e_multiplexeur is port(
	constant e10: in std_logic_vector(7 downto 0):= "00001010";
	constant e20: in std_logic_vector(7 downto 0):= "00010100";
	constant e30: in std_logic_vector(7 downto 0):= "00011110";
	constant e40: in std_logic_vector(7 downto 0):= "00101000";
	constant e50: in std_logic_vector(7 downto 0):= "00110010";
	constant e60: in std_logic_vector(7 downto 0):= "00111100";
	constant e70: in std_logic_vector(7 downto 0):= "01000110";
	constant e80: in std_logic_vector(7 downto 0):= "01010000";
	constant e90: in std_logic_vector(7 downto 0):= "01011010";
	selecteur : in std_logic_vector(3 downto 0); -- chiffre des dizaines
	unite: in std_logic_vector(3 downto 0)
	sortie : out std_logic_vector(7 downto 0)
	);

end e_multiplexeur;

architecture a_multiplexeur of e_multiplexeur is 
Begin
	if(selecteur = "0001") then
		 sortie <= e10 & unite;
	if(selecteur = "0010") then
		sortie <= e20 & unite;
	if(selecteur = "0011") then
		sortie <= e30 & unite;
	if(selecteur = "0100") then
		sortie <= e40 & unite; 
	if(selecteur = "0101") then
		sortie <= e50 & unite;
	if(selecteur = "0110") then
		sortie <= e60 & unite; 
	if(selecteur = "0111") then
		sortie <= e70 & unite;
	if(selecteur = "1000") then
		sortie <= e80 & unite; 
	if(selecteur = "1001") then
		sortie <= e90 & unite;

end if;
end process;
end a_multiplexeur;
	  


