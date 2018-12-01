----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:27:34 12/01/2018 
-- Design Name: 
-- Module Name:    neuron - Behavioral 
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

entity neuron is
	generic (
		in_num: integer := 3;
		in_len:  integer := 4;
		w_len: integer := 4);
	
	port (
		clk: in std_logic;
		rst: in std_logic;
		start: in std_logic;
		inputs: in std_logic_vector;
		weights: in std_logic_vector;
		done: out std_logic;
		res: out std_logic_vector);
end neuron;

architecture Behavioral of neuron is
	component ctrl
		port (start, clk, rst: in std_logic;
			x, n: in std_logic_vector;
			sel_in, ready, done: out std_logic);
	end component;
	
	component dp
		generic (in_num: integer;
			in_len: integer; 
			w_len: integer);
		port (inputs: in std_logic_vector(in_len * in_num - 1 downto 0);
			weights: in std_logic_vector(w_len * in_num - 1 downto 0);
			clk, rst, sel, ready: std_logic;
			x: out std_logic_vector(in_num - 1 downto 0);
			res: out std_logic_vector);
	end component;
	
	for all : ctrl use entity work.neuron_controller(behavioral);
	for all : dp use entity work.neuron_dp(behavioral);
	
	signal counter: std_logic_vector(in_num - 1 downto 0);
	signal sel_in: std_logic; 
	signal ready: std_logic;
begin
	m1: ctrl port map(start => start, clk => clk, rst => rst, x => counter, n => std_logic_vector(to_unsigned(in_num, counter'length)), sel_in => sel_in, ready => ready, done => done);
	
	m2: dp generic map(in_num => in_num, in_len => in_len, w_len => w_len)
				port map(inputs => inputs, weights => weights, clk => clk, rst => rst, sel => sel_in, ready => ready, x => counter, res => res);
end Behavioral;

