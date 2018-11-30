----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:29:12 11/30/2018 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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

entity adder is
	port(in1, in2: in std_logic_vector;
		  add_result: out std_logic_vector;
		  add_ov: out std_logic);
end adder;

architecture behavioral of adder is
   signal n: integer := in1'length;
	signal tmp: signed(n downto 0);
begin
	tmp <= signed( in1(in1'left) & in1) + signed( in2(in2'left) & in2 );
	add_ov <= tmp(n);
	add_result <= std_logic_vector(tmp(n-1 downto 0));
end behavioral;

