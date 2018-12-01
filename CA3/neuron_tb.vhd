--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:59:06 12/01/2018
-- Design Name:   
-- Module Name:   Y:/Documents/UNI/CAD/CA3/CA3/neuron_tb.vhd
-- Project Name:  CA3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: neuron
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY neuron_tb IS
END neuron_tb;
 
ARCHITECTURE behavior OF neuron_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT neuron
		generic(input_num : integer);
		PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         start : IN  std_logic;
         inputs : IN  std_logic_vector;
         weights : IN  std_logic_vector;
         done : OUT  std_logic;
         res : OUT  std_logic_vector(15 downto 0));
    END COMPONENT;

	signal input_num : integer := 3;

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal start : std_logic := '0';
   signal inputs  : std_logic_vector(input_num * 16 - 1 downto 0) := (others => '0');
   signal weights : std_logic_vector(input_num * 16 - 1 downto 0) := (others => '0');

 	--Outputs
   signal done : std_logic;
   signal res : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: neuron generic map (input_num => input_num)
			PORT MAP (clk => clk,
							 rst => rst,
							 start => start,
							 inputs => inputs,
							 weights => weights,
							 done => done,
							 res => res);

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		
      -- hold reset state for 100 ns.
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';

      wait for clk_period*10;

		
      -- insert stimulus here 
		
		start <= '1';
		wait for clk_period;
		start <= '0';
		
		inputs  <= "001000000000000011100000000000000100000000000000";
		weights <= "010000000000000000001000000000001111000000000000";
		
		wait for clk_period * 10;
		
		rst <= '1';
		wait for clk_period;
		rst <= '0';
		
		start <= '1';
		wait for clk_period;
		start <= '0';
		
		inputs  <= "001000000000000000100000000000000010000000000000";
		weights <= "010000000000000001000000000000000100000000000000";
		
		wait for clk_period * 10;
		
      wait;
   end process;

END;
