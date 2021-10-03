LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

entity machine_etat is 
port (
	code_out : in std_logic_vector (3 downto 0);
	start: in std_logic;
	clk: in std_logic;
	etat_out : out std_logic_vector (1 downto 0);
	selecteur: out std_logic_vector (1 downto 0)
	);
end machine_etat;

architecture behav of machine_etat is
signal compteur : std_logic_vector (2 downto 0);
begin
	process (clk)
	begin
if (start= '1') then
	if (code_out = "0001") then -- chiffre

		compteur <= compteur + 1;
		if (compteur = "001") then -- 1 chiffre
		selecteur <= "00";
		etat_out <= "00"; -- on a rentrer 1 chiffre 1e nb

		elsif (compteur = "010") then --si on a rentrer 2 chiffre pour former un nombre
		selecteur <= "00";
		etat_out <= "01"; --on a renter 2 chiffres 1e nb

		elsif (compteur = "100") then -- quand on rentre le 2e nombre
		selecteur <= "01";
		etat_out <= "00"; --on a rentrer 1 chiffre 2e nb

		elsif (compteur = "101") then -- 2e chiffre du 2e nombre
		selecteur <="01";
		etat_out <= "01"; --on a rentrer 2 chiffres 2e nb
 
		end if;

	elsif (code_op = "0010") then -- opérateur

		if (compteur = "001") then --si le 1e nombre est composé que de 1 chiffre
		compteur <= compteur +2;
		end if;

		 selecteur <= "10";
		 etat_out <= "00";
		compteur <= compteur +1;

	end if;
end if;
	end process;
end behav;
		