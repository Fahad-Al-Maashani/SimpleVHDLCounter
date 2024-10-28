-- Simple Vhdl Code shows how counter work.
-- as loong clk positive edge counter will be incremented otherwise adjusting clock speed by rst.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WorldView is
    port (
        clock : in std_logic;
        output : out std_logic
    );
end WorldView;

architecture Behavioral of WorldView is
    signal count : integer := 0;
begin
    process(clock)
    begin
        if rising_edge(clock) then
            count <= count + 1;
            if count = 50000000 then -- Adjust for your clock speed
                output <= not output;
                count <= 0;
            end if;
        end if;
    end process;
end Behavioral;

