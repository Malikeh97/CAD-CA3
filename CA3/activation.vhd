----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:44:35 12/01/2018 
-- Design Name: 
-- Module Name:    activation - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity activation_function is
	port(a: in std_logic_vector(15 downto 0);
        ready: in std_logic;
		  res: out std_logic_vector(15 downto 0);
		  inclk, inrst: in std_logic);
end activation_function;

architecture behavioral of activation_function is
	signal const: signed(15 downto 0) := ("001" & (12 downto 0 => '0'));
begin
	process(inclk, inrst)
	begin
		if inrst = '1' then
			res <= (15 downto 0 => '0');
		elsif rising_edge(inclk) and ready = '1' then
			if signed(a) > const then
				res <= a;
			else
				res <= (15 downto 0 => '0');
			end if;
		end if;
	end process;
end behavioral;