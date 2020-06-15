----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2017 11:43:00 PM
-- Design Name: 
-- Module Name: RegisterBlock - Behavioral
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

entity RegisterBlock is
    Port ( RegWrite : in STD_LOGIC;
           ReadReg1 : in STD_LOGIC_VECTOR (4 downto 0);
           ReadReg2 : in STD_LOGIC_VECTOR (4 downto 0);
           WriteReg : in STD_LOGIC_VECTOR (4 downto 0);
           WriteData : in STD_LOGIC_VECTOR (63 downto 0);
           ReadData1 : out STD_LOGIC_VECTOR (63 downto 0);
           ReadData2 : out STD_LOGIC_VECTOR (63 downto 0));
end RegisterBlock;

architecture Behavioral of RegisterBlock is
    
    SIGNAL X0 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X1 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X2 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X3 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X4 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X5 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X6 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X7 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X8 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X9 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X10 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X0 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X11 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X12 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X13 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X14 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X15 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X16 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X17 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X18 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X19 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X20 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X20 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X21 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X22 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X23 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X24 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X25 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X26 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X27 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X28 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X29 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X30 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    SIGNAL X31 : STD_LOGIC_VECTOR(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
        
    
begin
process(ReqWrite,ReadReg1,ReadReg2,WriteReg,WriteData)
    begin
    if(ReadReg1 = "00000") then
        ReadData1 <= X0;
    elsif(ReadReg1 = "00001") then
        ReadData1 <= X1;
    elsif(ReadReg1 = "00010") then 
        ReadData1 <= X2;
    elsif(ReadReg1 = "00011") then
        ReadData1 <= X3;
    elsif(ReadReg1 = "00100") then
        ReadData1 <= X4;
    elsif(ReadReg1 = "00101") then
        ReadData1 <= X5;
    elsif(ReadReg1 = "00110") then
        ReadData1 <= X6;
    elsif(ReadReg1 = "00111") then
        ReadData1 <= X7;
    elsif(ReadReg1 = "01000") then
        ReadData1 <= X8;
    elsif(ReadReg1 = "01001") then
        ReadData1 <= X9;
    elsif(ReadReg1 = "01010") then
        ReadData1 <= X10;
    elsif(ReadReg1 = "01011") then
        ReadData1 <= X11;
    elsif(ReadReg1 = "01100") then
        ReadData1 <= X12;
    elsif(ReadReg1 = "01101") then
        ReadData1 <= X13;
    elsif(ReadReg1 = "01110") then
        ReadData1 <= X14;
    elsif(ReadReg1 = "01111") then
        ReadData1 <= X15;
    elsif(ReadReg1 = "10000") then
        ReadData1 <= X16;
    elsif(ReadReg1 = "10001") then
        ReadData1 <= X17;
    elsif(ReadReg1 = "10010") then 
        ReadData1 <= X18; 
    elsif(ReadReg1 = "10011") then
        ReadData1 <= X19;
    elsif(ReadReg1 = "10100") then
        ReadData1 <= X20;
    elsif(ReadReg1 = "10101") then
        ReadData1 <= X21;
    elsif(ReadReg1 = "10110") then
        ReadData1 <= X22;
    elsif(ReadReg1 = "10111") then
        ReadData1 <= X23;
    elsif(ReadReg1 = "11000") then
        ReadData1 <= X24;
    elsif(ReadReg1 = "11001") then
        ReadData1 <= X25;
    elsif(ReadReg1 = "11010") then
        ReadData1 <= X26;
    elsif(ReadReg1 = "11011") then
        ReadData1 <= X27;
    elsif(ReadReg1 = "11100") then
        ReadData1 <= X28;
    elsif(ReadReg1 = "11101") then
        ReadData1 <= X29;
    elsif(ReadReg1 = "11110") then
        ReadData1 <= X30;
    elsif(ReadReg1 = "11111") then    
        ReadData1 <= X31;
    end if;
    
    if(ReadReg2 = "00000") then
        ReadData2 <= X0;
    elsif(ReadReg2 = "00001") then
        ReadData2 <= X1;
    elsif(ReadReg2 = "00010") then 
        ReadData2 <= X2;
    elsif(ReadReg2 = "00011") then
        ReadData2 <= X3;
    elsif(ReadReg2 = "00100") then
        ReadData2 <= X4;
    elsif(ReadReg2 = "00101") then
        ReadData2 <= X5;
    elsif(ReadReg2 = "00110") then
        ReadData2 <= X6;
    elsif(ReadReg2 = "00111") then
        ReadData2 <= X7;
    elsif(ReadReg2 = "01000") then
        ReadData2 <= X8;
    elsif(ReadReg2 = "01001") then
        ReadData2 <= X9;
    elsif(ReadReg2 = "01010") then
        ReadData2 <= X10;
    elsif(ReadReg2 = "01011") then
        ReadData2 <= X11;
    elsif(ReadReg2 = "01100") then
        ReadData2 <= X12;
    elsif(ReadReg2 = "01101") then
        ReadData2 <= X13;
    elsif(ReadReg2 = "01110") then
        ReadData2 <= X14;
    elsif(ReadReg2 = "01111") then
        ReadData2 <= X15;
    elsif(ReadReg2 = "10000") then
        ReadData2 <= X16;
    elsif(ReadReg2 = "10001") then
        ReadData2 <= X17;
    elsif(ReadReg2 = "10010") then 
        ReadData2 <= X18; 
    elsif(ReadReg2 = "10011") then
        ReadData2 <= X19;
    elsif(ReadReg2 = "10100") then
        ReadData2 <= X20;
    elsif(ReadReg2 = "10101") then
        ReadData2 <= X21;
    elsif(ReadReg2 = "10110") then
        ReadData2 <= X22;
    elsif(ReadReg2 = "10111") then
        ReadData2 <= X23;
    elsif(ReadReg2 = "11000") then
        ReadData2 <= X24;
    elsif(ReadReg2 = "11001") then
        ReadData2 <= X25;
    elsif(ReadReg2 = "11010") then
            ReadData2 <= X26;
    elsif(ReadReg2 = "11011") then
            ReadData2 <= X27;
    elsif(ReadReg2 = "11100") then
            ReadData2 <= X28;
    elsif(ReadReg2 = "11101") then
            ReadData2 <= X29;
    elsif(ReadReg2 = "11110") then
            ReadData2 <= X30;
    elsif(ReadReg2 = "11111") then    
            ReadData2 <= X31;
    end if;
end process;


end Behavioral;
