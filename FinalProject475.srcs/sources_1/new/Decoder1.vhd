----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2017 11:08:21 AM
-- Design Name: 
-- Module Name: Decoder1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder1 is
    Port ( I : in STD_LOGIC_VECTOR (4 downto 0);
           dcd : out STD_LOGIC_VECTOR (31 downto 0));
end Decoder1;

architecture Behavioral of Decoder1 is

begin

    process(I)
    begin 
case I is
 when  "00000" =>
  dcd(0) <= '1';
 when  "00001" =>
  dcd(1) <= '1';
 when  "00010" =>
  dcd(2) <= '1';
 when  "00011" =>
  dcd(3) <= '1';
 when  "00100" =>
  dcd(4) <= '1';
 when  "00101" =>
  dcd(5) <= '1';
when  "00110" =>
  dcd(6) <= '1';
when  "00111" =>
  dcd(7) <= '1';
when  "01000" =>
  dcd(8) <= '1';
when  "01001" =>
  dcd(9) <= '1';
when  "01010" =>
  dcd(10) <= '1';
when  "01011" =>
  dcd(11) <= '1';
when  "01100" =>
 dcd(12) <= '1';
when  "01101" =>
 dcd(13) <= '1';
when  "01110" =>
 dcd(14) <= '1';
when  "01111" =>
 dcd(15) <= '1';
when  "10000" =>
 dcd(16) <= '1';
when  "10001" =>
 dcd(17) <= '1';
when  "10010" =>
 dcd(18) <= '1';
when  "10011" =>
 dcd(19) <= '1';
when  "10100" =>
 dcd(20) <= '1';
when  "10101" =>
 dcd(21) <= '1' ;
 when  "10110" =>
 dcd(22) <= '1';
when  "10111" =>
 dcd(23) <= '1';
when  "11000" =>
 dcd(24) <= '1';
when  "11001" =>
 dcd(25) <= '1';
when  "11010" =>
 dcd(26) <= '1';
when  "11011" =>
    dcd(27) <= '1'; 
when  "11100" =>
    dcd(28) <= '1';
when  "11101" =>
    dcd(29) <= '1';
when  "11110" =>
    dcd(30) <= '1';
when  "11111" =>
    dcd(31) <= '1';
when others =>
    dcd <= "00000000000000000000000000000000";    
     
    end case;  
    end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.array_pack.all;

package Decoder1_pack is
 

    
--decoder
    Component Decoder1
        Port(  I : in STD_LOGIC_VECTOR (4 downto 0);
              dcd : out STD_LOGIC_VECTOR (31 downto 0));
     end component;
 

    
 end Decoder1_pack;