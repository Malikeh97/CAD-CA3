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
   generic (
	 in_num : integer := 10;       
    in_len : integer := 8;
	 w_len : integer := 8
    );
	port( inputs: in std_logic_vector(in_len*in_num-1 downto 0);
			weights: in std_logic_vector(w_len*in_num-1 downto 0);
			clk, rst, sel: std_logic;
			sel_in: out std_logic_vector(in_len-1 downto 0);
			sel_w: out std_logic_vector(w_len-1 downto 0);
			x: out std_logic_vector(in_num-1 downto 0));
end select_input;

architecture behavioral of select_input is
signal count : std_logic_vector (in_len-1 downto 0);
begin
 process(clk, rst) 
  begin 
    if (rst = '1') then  
		sel_in <= (in_len-1 downto 0 => '0');
		sel_w <= (w_len-1 downto 0 => '0');
		count <= (in_len-1 downto 0 => '0');
    elsif rising_edge(clk) then	
		if (sel = '1') then
			sel_in <= inputs(((1+to_integer(unsigned(count)))*in_len-1) downto (to_integer(unsigned(count))*in_len));
			sel_w <= weights(((1+to_integer(unsigned(count)))*w_len-1) downto (to_integer(unsigned(count))*w_len));
			count <= std_logic_vector(unsigned(count) + 1);
		end if;
    end if;
  end process;
  x <= count;
end behavioral;


