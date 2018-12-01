----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:14:35 11/30/2018 
-- Design Name: 
-- Module Name:    neuron_dp - Behavioral 
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

entity neuron_dp is
	port(inputs: in std_logic_vector;
		  weights: in std_logic_vector;
		  clk, rst, sel, ld_en, ready: std_logic;
		  x: out std_logic_vector;
		  res: out std_logic_vector(15 downto 0));
end neuron_dp;

architecture behavioral of neuron_dp is
	
	component select_input
		port(inputs: in std_logic_vector;
			  weights: in std_logic_vector;
			  clk, rst, sel: std_logic;
			  sel_in: out std_logic_vector(15 downto 0);
			  sel_w: out std_logic_vector(15 downto 0);
			  x: out std_logic_vector);
	end component;
	component multiplier
		port(a_in, b_in: in std_logic_vector(15 downto 0);
			  mult_result: out std_logic_vector(15 downto 0));
	end component;
	component adder
		port(in1, in2: in std_logic_vector(15 downto 0);
			  add_result: out std_logic_vector(15 downto 0);
		     add_ov: out std_logic);
	end component;
	component accumulator 
		port(add_out: in std_logic_vector(15 downto 0);
				ld_en: std_logic;
			  acc_result: out std_logic_vector(15 downto 0);
		     inclk, inrst: in std_logic);
	end component;
	component activation_function
		port(a: in std_logic_vector(15 downto 0);
			  ready: in std_logic;
		     res: out std_logic_vector(15 downto 0);
		     inclk, inrst: in std_logic);
	end component;
	
	for all : select_input use entity work.select_input(behavioral);
	for all : multiplier use entity work.multiplier(behavioral) ;
	for all : adder use entity work.adder(behavioral);
	for all : accumulator use entity work.accumulator(behavioral); 
	for all : activation_function use entity work.activation_function(behavioral);
	
	signal sel_in: std_logic_vector(15 downto 0);
	signal sel_w:  std_logic_vector(15 downto 0);
	signal mult_result:  std_logic_vector(15 downto 0);
	signal add_result, acc_result:  std_logic_vector(15 downto 0);
   signal add_ov: std_logic;
begin
	input_selection: select_input port map(inputs, weights, clk, rst, sel, sel_in, sel_w, x);
	multiplication: multiplier port map(sel_in, sel_w, mult_result);
	add: adder port map(acc_result ,mult_result, add_result, add_ov);
	accumulation: accumulator port map(add_result, ld_en, acc_result, clk, rst);
	activation: activation_function port map(acc_result, ready, res, clk, rst);
end behavioral;

