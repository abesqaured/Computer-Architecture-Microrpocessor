--PROGRAM COUNTER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity PC is
    Port(   clk : in STD_LOGIC;
            reset : in std_logic;
            enable : in std_logic;
            addr_in : in STD_LOGIC_VECTOR (9 downto 0);
            addr_out : out STD_LOGIC_VECTOR (9 downto 0));
         END PC;

architecture Behavioral of PC is


begin
process(clk, reset)
variable PCtemp : std_logic_vector(9 downto 0);
begin
    if (reset = '0' )then 
    PCtemp := (others => '0');
    
    elsif(rising_edge(clk)) then 
    if (enable = '1') then
    PCtemp := addr_in ; 
    end if;
    end if;
    addr_out <= PCtemp;
    end process;    
end Behavioral;