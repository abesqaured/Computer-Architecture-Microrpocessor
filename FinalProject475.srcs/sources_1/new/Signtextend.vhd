-- Sign Extension
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity Sign_Extend is
    port(instruction_in : in STD_LOGIC_VECTOR(31 downto 0);
         ext_instruction : out STD_LOGIC_VECTOR(63 downto 0));
    end Sign_Extend;
    
architecture Behavior of Sign_Extend is 
begin
Process(instruction_in)
begin  
        if(instruction_in(31) = '1') then 
        ext_instruction <= x"FFFFFFFF" & instruction_in;
        elsif(instruction_in(31) = '0') then 
        ext_instruction <= x"00000000" & instruction_in;
        end if;
    end process;
end Behavior;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.array_pack.all;
package Signextend_pack is
    
    component Signextend 
        port(instruction_in : in STD_LOGIC_VECTOR(31 downto 0);
             ext_instruction : out STD_LOGIC_VECTOR(63 downto 0));
    end component;
    
    
 end Signextend_pack; 
