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
	port (
		clk: in std_logic;
		rst: in std_logic;
		start: in std_logic;
		inputs: in std_logic_vector;
		weights: in std_logic_vector;
		done: out std_logic;
		res: out std_logic_vector(15 downto 0));
end neuron;

architecture Behavioral of neuron is
	component ctrl
		port (start, clk, rst: in std_logic;
			x, n: in std_logic_vector;
			sel_in, ld_en, ready, done: out std_logic);
	end component;
	 
	component dp
		port (inputs: in std_logic_vector;
			weights: in std_logic_vector;
			clk, rst, sel, ld_en, ready: std_logic;
			x: out std_logic_vector;
			res: out std_logic_vector(15 downto 0));
	end component;
	
	for all : ctrl use entity work.neuron_controller(behavioral);
	for all : dp use entity work.neuron_dp(behavioral);
	
	signal counter: std_logic_vector(15 downto 0); 
	signal sel_in: std_logic; 
	signal ld_en: std_logic;
	signal ready: std_logic;
	signal n : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(inputs'length / 16, 16));
begin
	m1: ctrl port map(start => start, clk => clk, rst => rst, x => counter, n => n, sel_in => sel_in, ld_en => ld_en, ready => ready, done => done);
	
	m2: dp port map(inputs => inputs, weights => weights, clk => clk, rst => rst, sel => sel_in, ld_en => ld_en, ready => ready, x => counter, res => res);
end Behavioral;

