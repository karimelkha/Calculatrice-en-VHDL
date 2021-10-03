library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity e_deco_test is
end e_deco_test;

architecture a_deco_test of e_deco_test is
	signal Code_Out :std_logic_vector(3 downto 0);
	signal Sept_Seg :std_logic_vector(6 downto 0);

begin
	a_deco_test:entity work.decodeur
	port map(Code_Out,Sept_Seg);

	signal_gen:process is
	begin
	Code_Out<="0000";
	wait for 10 ms;
	Code_Out<="0001";
	wait for 10 ms;
	Code_Out<="0010";
	wait for 10 ms;
	Code_Out<="0011";
	wait for 10 ms;
	Code_Out<="0100";
	wait for 10 ms;
	Code_Out<="0101";
	wait for 10 ms;
	Code_Out<="0110";
	wait for 10 ms;
	Code_Out<="0111";
	wait for 10 ms;
	Code_Out<="1000";
	wait for 10 ms;
	Code_Out<="1001";
	wait for 10 ms;
	Code_Out<="1010";
	wait for 10 ms;
	Code_Out<="1011";
	wait for 10 ms;
	Code_Out<="1100";
	wait for 10 ms;
	Code_Out<="1100";
	wait for 10 ms;
	Code_Out<="1101";
	wait for 10 ms;
	Code_Out<="1110";
	wait for 10 ms;
	Code_Out<="1111";
	wait for 10 ms;
end process;
end a_deco_test;
	
	
		


