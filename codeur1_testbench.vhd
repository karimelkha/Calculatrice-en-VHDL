library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity en_test is
end en_test;

architecture ar_test of en_test is 
  signal Row :std_logic_vector(3 downto 0);
  signal Clk :std_logic;
  signal Col :std_logic_vector (3 downto 0);
  signal Code_out : std_logic_vector (3 downto 0);
  constant Clk_Period :time:=20 ms;
  
begin
  ar_test:entity work.Codeur
  port map(Row,clk,Code_out);
    
  clock:process is
  begin
    Clk<='0';
    wait for Clk_Period/2;
    Clk<='1';
    wait for Clk_Period/2;
    
end process;

  signal_gen:process is
  begin
    Row<="0111";
    wait for 20 ms;
    Row<="1011";
    wait for 20 ms;
    Row<="1101";
    wait for 20 ms;
    Row<="1110";
    wait for 20 ms;
  end process;
end ar_test;


