----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:47:52 11/30/2018 
-- Design Name: 
-- Module Name:    select_input - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity select_input is
	port( inputs: in std_logic_vector;
			weights: in std_logic_vector;
			clk, rst, sel: std_logic;
			sel_in: out std_logic_vector(15 downto 0);
			sel_w: out std_logic_vector(15 downto 0);
			x: out std_logic_vector);
end select_input;

architecture behavioral of select_input is
	signal count : std_logic_vector (x'length - 1 downto 0);
begin
 process(clk, rst) 
  begin 
    if (rst = '1') then  
		sel_in <= (15 downto 0 => '0');
		sel_w <= (15 downto 0 => '0');
		count <= (x'length - 1 downto 0 => '0');
    elsif rising_edge(clk) and (sel = '1') then	
		sel_in <= inputs(((1 + to_integer(unsigned(count))) * 16 - 1) downto (to_integer(unsigned(count)) * 16));
		sel_w <= weights(((1 + to_integer(unsigned(count))) * 16 - 1) downto (to_integer(unsigned(count)) * 16));
		count <= std_logic_vector(unsigned(count) + 1);
    end if;
  end process;
  x <= count;
end behavioral;


