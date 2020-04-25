--------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--------------------------------------------------------

entity SUB is

generic(n: natural :=10);
port(	A:	in std_logic_vector(n-1 downto 0);
	B:	in std_logic_vector(n-1 downto 0);
	F:	out std_logic_vector(n-1 downto 0)
);

end SUB;

--------------------------------------------------------

architecture behv of SUB is
signal result: std_logic_vector(n downto 0);
 
begin   
    result <= ('0' & A)+('0' & (not B))+1;
    F <= result(n-1 downto 0);
end behv;
--------------------------------------------------------