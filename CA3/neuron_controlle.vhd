----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:15 11/30/2018 
-- Design Name: 
-- Module Name:    neuron_controlle - Behavioral 
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

entity neuron_controller is
	port(start, clk, rst: in std_logic;
		  x, n: in std_logic_vector;
		  sel_in, ld_en, ready, done: out std_logic);
end neuron_controller;

architecture behavioral of  neuron_controller is
	type state_type is (initial_state, select_input, accumulation, activation, completed);
	signal state : state_Type;
begin 
  process(clk, rst) 
  begin 
    if (rst = '1') then           
		state <= initial_state;
    elsif rising_edge(clk) then  
		 sel_in <= '0';
		 ready <= '0';
		 done <= '0';
		 ld_en <= '0';
		case state is
			when initial_state => 
				if start = '1' then 
					state <= select_input; 	
				else
					state <= initial_state;
				end if;
			when select_input => 
				sel_in <= '1';
				state <= accumulation;
			when accumulation =>
				ld_en <= '1';
				if unsigned(x) < (unsigned(n) - 1) then 
					state <= select_input; 
				else
					state <= activation;
				end if; 
			when activation => 
				ready <= '1';
				state <= completed;
			when completed =>
				done <= '1';
				state <= initial_state;
			when others =>
				state <= initial_state;
		end case; 
    end if; 
  end process;
end behavioral;


