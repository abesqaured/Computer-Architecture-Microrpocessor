----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2017 12:03:50 PM
-- Design Name: 
-- Module Name: Register_File - Behavioral
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
use work.FINAL_PROJECT_pack.all;
use work.array_pack.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register_File is
    Port ( Rd_Reg_1 : in STD_LOGIC_VECTOR (4 downto 0);
           Rd_Reg_2 : in STD_LOGIC_VECTOR (4 downto 0);
           Wr_Reg : in STD_LOGIC_VECTOR (4 downto 0);
           Wr_Data : in STD_LOGIC_VECTOR (63 downto 0);
           Reg_Write : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Rd_Data_1 : out STD_LOGIC_VECTOR (63 downto 0);
           Rd_Data_2 : out STD_LOGIC_VECTOR (63 downto 0));
end Register_File;

architecture Behavioral of Register_File is
--component dff is
-- port ( clock: in std_logic;
-- D: in std_logic;
-- Q: out std_logic
-- );
-- end component;
-- component decoder is
-- port ( 
-- I: in std_logic_vector(4 downto 0);
-- O: out std_logic_vector(31 downto 0)
-- );
-- end component;
-- component AND1 is
-- port (
--  wrt: in std_logic;
-- dcd: in std_logic;
-- F: out std_logic
-- );
-- end component;
-- component mux_reg1 is
-- port ( 
-- I0: in std_logic_vector(63 downto 0);
-- rdr: in STD_LOGIC;
-- O: out std_logic_vector(63 downto 0));
-- end component;
 
 

signal de_o_and_en : std_logic_vector(31 downto 0);
signal decoder_out : std_logic_vector(31 downto 0);
signal regout0 : std_logic_vector(63 downto 0); 
signal registerArray : RegArray (31 downto 0);
signal muxout1 : STD_LOGIC_VECTOR(63 downto 0);
signal muxout2 : STD_LOGIC_VECTOR(63 downto 0);
signal Write1_bus : std_logic_vector(31 downto 0) := x"FFFFFFFF";
signal Write0_bus : std_logic_vector(31 downto 0) := x"00000000";
begin

decoder_map : decoder1 port map ( 
        I => Wr_Reg,
        dcd => decoder_out);
        
--process(Reg_Write) 
--begin
--    if(Reg_Write = '1') then         
--        decoder_out AND Write1_bus  => de_o_and_en;
--    elsif 
--        decoder_out AND Write0_bus => de_o_and_en;
--end if;
--end process;

register_gen : for I in 0 to 31 generate
stages : register64 PORT MAP(
            clk => clk,
            D => Wr_Data,
            reset => reset,
            load => de_o_and_en(I),
             Q => registerArray(I));

end generate register_gen;

mux1 : registermux port map (
        
            input => registerArray,
             s => Rd_Reg_1,
             m => muxout1 );
        
      
mux2 : registermux port map ( 
            input => registerArray,
            s => Rd_Reg_2,
            m => muxout2);
       
       
 Rd_Data_1 <= muxout1;
 Rd_Data_2 <= muxout2;



    
           
       

    
 

           
  

end Behavioral;
