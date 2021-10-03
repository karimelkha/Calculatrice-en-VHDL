LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

entity calculatrice is
  port( 
    clk : in std_logic;
    row : in std_logic_vector(3 downto 0);
    l1, l2, l3, l4 : out std_logic_vector(6 downto 0)
  );
end entity;

architecture archi of calculatrice is 
signal col: std_logic_vector (3 downto 0);

component codeur1
port (
    Row : in std_logic_vector (3 downto 0);
    Clk: in std_logic ;
    Col: out std_logic_vector (3 downto 0);
    Code_out: out std_logic_vector (3 downto 0)
); end component;

component machine_etat
port (
       code_out : in std_logic_vector (3 downto 0);
	start: in std_logic;
	clk: in std_logic;
	etat_out : out std_logic_vector (1 downto 0);
	selecteur: out std_logic_vector (1 downto 0)
); end component;

component registre_nb
port (
	A : in std_logic_vector(3 downto 0);
	etat_out: in std_logic_vector(1 downto 0);
	clk: in std_logic;
	S : out std_logic_vector(7 downto 0)
); end component;

component registre_op
port ( 
	etat_out: in std_logic_vector (1 downto 0);
	clk: in std_logic;
	s: out std_logic_vector (3 downto 0)
); end component;

component convertisseur d_b
port ( 
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
); end component;


component calcule 
port ( 
	s: in std_logic_vector(3 downto 0);
	nombre_1: in std_logic_vector(3 downto 0);
	nombre_2: in std_logic_vector(3 downto 0);
	res: out std_logic_vector(15 downto 0);
	clk: in std_logic)
); end component;

component decodeur 
port ( 
	Code_Out : in std_logic_vector(3 downto 0);
    	Sept_Seg : out std_logic_vector(6 downto 0)
); end component;

begin 


end struct;






