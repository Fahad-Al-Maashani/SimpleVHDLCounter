-- This simple vhdl code for writing a simple led counter
library IEEE;
use IEEE.std_logic_1164.all;
entity WorldView is 
port (
clock : in std_logic;
output: out std_logic;
);

end WorldView;

architecture behavioral of WorldView is 
signal count : integer := 0;
begin 
process (clock) 
begin 
if  rising_edge(clock) then count <= count +1;
if count = 50000000 then -- Adjust for your clock speed
output <= not output; 
count <= 0;
end if;
end if;
end process; 
end behavioral; 
