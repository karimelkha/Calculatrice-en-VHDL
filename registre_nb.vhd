LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity registre_nb is
port (
	A : in std_logic_vector(3 downto 0);
	etat_out: in std_logic_vector(1 downto 0);
	clk: in std_logic;
	S : out std_logic_vector(7 downto 0)
    );
end registre_nb;

architecture behav of registre_nb is
signal unite: std_logic_vector (3 downto 0);
signal dizaine: std_logic_vector (3 downto 0);
	begin
	process(clk)
	begin
	--unite <= A;
	if (etat_out = "00") then
	unite <= A;
	dizaine<="0000";
	--S<= dizaine & unite;

	elsif (etat_out = "01") then
	dizaine <= unite;
	unite <= A;
	
	end if;

	S<= unite*"0001"+dizaine*"1010";
	end process;
end behav;
	