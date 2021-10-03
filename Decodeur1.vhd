library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity decodeur is 
  port ( 
    Code_Out : in std_logic_vector(3 downto 0);
    Sept_Seg : out std_logic_vector(6 downto 0));
end decodeur;

architecture ar_d of decodeur is
  begin
    with Code_Out select
    
      Sept_Seg <= "1000000" when "0000",
                  "1111001" when "0001",
                  "0100110" when "0010",
                  "0110000" when "0011",
                  "0011001" when "0100",
                  "0010010" when "0101",
                  "0000010" when "0110",
                  "1111000" when "0111",
                  "0000000" when "1000",
                  "0010000" when "1001",
                  "0001000" when "1010",
                  "0000010" when "1011",
                  "1000110" when "1100",
                  "0100001" when "1101",
                  "0000110" when "1110",
                  "0001110" when "1111",
                  "1111111" when others;
end ar_d;
