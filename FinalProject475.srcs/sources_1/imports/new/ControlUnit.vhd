----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2017 01:58:55 PM
-- Design Name: 
-- Module Name: ControlUnit - Behavioral
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

entity ControlUnit is
    Port ( Instruction : in STD_LOGIC_VECTOR (10 downto 0);
           Reg2Loc : out STD_LOGIC;
           Uncondbranch : out STD_LOGIC;
           Branch : out STD_LOGIC;
           MemRead : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           ALUOp : out STD_LOGIC;
           MemWrite : out STD_LOGIC;
           ALUSrc : out STD_LOGIC;
           RegWrite : out STD_LOGIC;
           clk : out STD_LOGIC);
end ControlUnit;

architecture Behavioral of ControlUnit is

begin
process (Instruction)
begin
    if(Instruction = "10010001000") then   --add immediate
        Reg2Loc <= '1';
        Uncondbranch <= '0';
        Branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp <= '1';
        MemWrite <= '0';
        ALUSrc <= '1';
        RegWrite <= '1';
    elsif(Instruction = "10011011000") then --Mult
       Reg2Loc <= '0';
       Uncondbranch <= '0';
       Branch <= '0';
       MemRead <= '0';
       MemtoReg <= '0';
       ALUOp <= '1';
       MemWrite <= '0';
       ALUSrc <= '0';
       RegWrite <= '1';
       
    elsif(Instruction = "10001011000") then -- add
    Reg2Loc <= '0';
    Uncondbranch <= '0';
    Branch <= '0';
    MemRead <= '0';
    MemtoReg <= '0';
    ALUOp <= '1';
    MemWrite <= '0';
    ALUSrc <= '0';
    RegWrite <= '1';    
          
    elsif(Instruction = "10001010000") then -- and
    Reg2Loc <= '0';
    Uncondbranch <= '0';
    Branch <= '0';
    MemRead <= '0';
    MemtoReg <= '0';
    ALUOp <= '1';
    MemWrite <= '0';
    ALUSrc <= '0';
    RegWrite <= '1';
    
    elsif(Instruction = "11001011000") then -- SUB
    Reg2Loc <= '0';
    Uncondbranch <= '0';
    Branch <= '0';
    MemRead <= '0';
    MemtoReg <= '0';
    ALUOp <= '1';
    MemWrite <= '0';
    ALUSrc <= '0';
    RegWrite <= '1';
    
    elsif(Instruction = "10110100000") then --cbz
    Reg2Loc <= '0';
    Uncondbranch <= '0';
    Branch <= '1';
    MemRead <= '0';
    MemtoReg <= '0';
    ALUOp <= '1';
    MemWrite <= '0';
    ALUSrc <= '1';
    RegWrite <= '1';
    
    elsif(Instruction = "11111000000") then -- stur
    Reg2Loc <= '1';
    Uncondbranch <= '0';
    Branch <= '0';
    MemRead <= '0';
    MemtoReg <= '0';
    ALUOp <= '0';
    MemWrite <= '1';
    ALUSrc <= '1';
    RegWrite <= '0';
    
    elsif(Instruction = "0001011111") then -- branch
    Reg2Loc <= '0';
    Uncondbranch <= '1';
    Branch <= '0';
    MemRead <= '0';
    MemtoReg <= '0';
    ALUOp <= '0';
    MemWrite <= '0';
    ALUSrc <= '0';
    RegWrite <= '0';
    
    elsif(Instruction = "11010011011") then --lsl
    Reg2Loc <= '0';
    Uncondbranch <= '0';
    Branch <= '0';
    MemRead <= '0';
    MemtoReg <= '0';
    ALUOp <= '1';
    MemWrite <= '0';
    ALUSrc <= '0';
    RegWrite <= '1';
    
    elsif(Instruction = "11010011010") then --lsr
        Reg2Loc <= '0';
        Uncondbranch <= '0';
        Branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        ALUOp <= '1';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '1';
    
    
end if;
end process;
end Behavioral;



 
 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 
 package controlunit_package is 
 
    component ControlUnit
        port (Instruction : in STD_LOGIC_VECTOR (10 downto 0);
               Reg2Loc : out STD_LOGIC;
               Uncondbranch : out STD_LOGIC;
               Branch : out STD_LOGIC;
               MemRead : out STD_LOGIC;
               MemtoReg : out STD_LOGIC;
               ALUOp : out STD_LOGIC;
               MemWrite : out STD_LOGIC;
               ALUSrc : out STD_LOGIC;
               RegWrite : out STD_LOGIC;
               clk : out STD_LOGIC);
       end component;
       
end controlunit_package;
       
       