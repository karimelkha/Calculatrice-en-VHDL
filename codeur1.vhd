library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;




entity Codeur is 
  port(

    Row : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    
    Col: out std_logic_vector(3 downto 0);
    Code_out : out std_logic_vector(3 downto 0)
  );
    
    
  end entity Codeur;
    
  architecture Behavioral of Codeur is
    
  signal sclk : STD_LOGIC_VECTOR(19 downto 0):= (others=>'0');
  begin
    
    process(clk)
      
    begin
    if clk'event and clk = '1' then
      
      -- xx ms
      if sclk = "00011000011010100000" then
      --C1
      Col <= "0111" ;
      sclk <= sclk+1;
    -- check row pins
    elsif sclk = "00011000011010101000" then
      --R1
        if Row = "0111" then
        Code_Out <= "0001";
        --1
      --R2
        elsif Row = "1011" then
        Code_Out <= "0100";
        --4
      --R3
      elsif Row = "1101" then
      Code_Out <= "0111";
      --7
      --R4
      elsif Row = "1110" then
      Code_Out <= "0000";
      --0
      end if;
      sclk <= sclk+1;
  -- xx ms
  elsif sclk = "00110000110101000000" then
    --C2
    Col<= "1011";
    sclk <= sclk+1;
    -- check row pins
  elsif sclk = "00110000110101001000" then
    --R1
    if Row = "0111" then
    Code_Out <= "0010";
    --2
    --R2
    elsif Row = "1011" then
    Code_Out <= "0101";
    --5
    --R3
    elsif Row = "1101" then
    Code_Out <= "1000";
    --8
    --R4
    elsif Row = "1110" then
    Code_Out <= "1111";
    --F
  end if;
  sclk <= sclk+1;
  -- xx ms
  elsif sclk = "01001001001111100000" then
    --C3
    Col<= "1101";
    sclk <= sclk+1;
  -- check row pins
  elsif sclk = "01001001001111101000" then
    --R1
    if Row = "0111" then
    Code_Out <= "0011";
    --3
    --R2
    elsif Row = "1011" then
    Code_Out <= "0110";
    --6   
    --R3
    elsif Row = "1101" then
    Code_Out <= "1001";
    --9
    --R4
    elsif Row = "1110" then
    Code_Out <= "1110";
    --E
    end if;
    sclk <= sclk+1;
  
  
    --xxms
elsif sclk = "01100001101010000000" then
    --C4
    Col<= "1110";
    sclk <= sclk+1;
    -- check row pins 
    
    elsif sclk = "01100001101010001000" then
  --R1
  if Row = "0111" then
  Code_Out <= "1010";
  --A
  --R2
  elsif Row = "1011" then
Code_Out <= "1011";
--B
--R3
elsif Row = "1101" then
Code_Out <= "1100";
--C
--R4
elsif Row = "1110" then
Code_Out <= "1101";
--D
end if;
sclk <= "00000000000000000000";
else
sclk <= sclk+1;
end if;
end if;
end process;
end Behavioral;
    

