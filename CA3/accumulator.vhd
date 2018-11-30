----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:17:04 11/30/2018 
-- Design Name: 
-- Module Name:    accumulator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity accumulator is
	port(add_out: in std_logic_vector;
		  acc_result: out std_logic_vector;
		  inclk, inrst: in std_logic);
end accumulator;

architecture behavioral of accumulator is
begin
	process(inclk, inrst)
	begin
		if inrst = '1' then
			acc_result <= (acc_result'length-1 downto 0 => '0');
		elsif rising_edge(inclk) then
			acc_result <= add_out;
		end if;
	end process;
end behavioral;
