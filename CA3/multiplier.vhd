----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:15 11/30/2018 
-- Design Name: 
-- Module Name:    multiplier - Behavioral 
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
----------------------------------------------------------------------------------library IEEE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplier is
	port(a_in, b_in: in std_logic_vector(15 downto 0);
		mult_result: out std_logic_vector(15 downto 0));
end multiplier;

architecture behavioral of multiplier is
	signal tmp: signed(31 downto 0);
begin
	tmp <= signed(a_in) * signed(b_in);
	mult_result <= std_logic_vector(tmp(29 downto 14));
end behavioral;
