library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALUcontrol is port(
        Instruction : in std_logic_vector(10 downto 0);
        en : in std_logic;
        control : out std_logic_vector (3 downto 0));
end ALUcontrol;

architecture Behavior of ALUcontrol is 
begin
process
begin
if(en = '1') then 
if(Instruction = "10010001000") then -- addi
    control <= "1000";
elsif(Instruction = "10011011000") then --mult
    control <= "1100";
elsif(Instruction = "10001011000") then -- add registers
    control <= "0001";
elsif(Instruction = "10001010000") then --and registers
    control <= "0011";
elsif(Instruction = "11001011000") then -- sub registers
    control <= "0010";
elsif(Instruction =  "10110100000") then --cbz
    control <= "0110";
elsif(Instruction = "11111000000") then -- stur
    control <=  "1101";
elsif(Instruction = "11010011011") then -- lsl
    control <= "1010";
elsif(Instruction = "11010011010") then 
    control <= "1011";
 end if;
 end if;
 end process;
 
 end Behavior;






 
 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 
 package ALUunit_package is

component ALUcontrol
            port (  Instruction : in std_logic_vector(10 downto 0);
              en : in std_logic;
              control : out std_logic_vector (3 downto 0));
end component;
end ALUunit_package;