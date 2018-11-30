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
	port( inputs: std_logic_vector;
			weights: std_logic_vector;
			clk, rst, sel: std_logic;
			sel_in: out std_logic_vector;
			sel_w: out std_logic_vector;
			x: out std_logic_vector);
end select_input;

architecture behavioral of select_input is
 process(clk, rst) 
  begin 
    if (rst = '1') then  
		sel_in <= ((inputs(0))'length-1 downto 0 => '0');
		sel_w <= ((weights(0))'length-1 downto 0 => '0');
		x <= 0;
    elsif rising_edge(clk) then	
		if (sel = '1')
			sel_in <= inputs[to_integer(unsigned(x))];
			sel_w <= weights[to_integer(unsigned(x))];
			x <= std_logic_vector(to_integer(unsigned(x)) + 1);
		end if
    end if;
  end process;
end behavioral;


