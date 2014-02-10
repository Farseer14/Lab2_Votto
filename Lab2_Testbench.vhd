--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:46:01 02/10/2014
-- Design Name:   
-- Module Name:   C:/Users/C14Joseph.Votto/Documents/Documents/SeniorYear/ECE281/Lab2_Votto/Lab2_Testbench.vhd
-- Project Name:  Lab2_Votto
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab2_Votto
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
 
ENTITY Lab2_Testbench IS
END Lab2_Testbench;
 
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:46:01 02/10/2014
-- Design Name:   
-- Module Name:   C:/Users/C14Joseph.Votto/Documents/Documents/SeniorYear/ECE281/Lab2_Votto/Lab2_Testbench.vhd
-- Project Name:  Lab2_Votto
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab2_Votto
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
 
ENTITY Lab2_Testbench IS
END Lab2_Testbench;

ARCHITECTURE behavior OF Lab2_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab2_Votto
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab2_Votto PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

	
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A <= '0';
		B <= '0';
		Cin <= '0';
      wait for 100 ns;	
		-- hold reset state for 100 ns.
		A <= '0';
		B <= '0';
		Cin <= '1';
      wait for 100 ns;			
		-- hold reset state for 100 ns.
		A <= '0';
		B <= '1';
		Cin <='0';
		wait for 100 ns;
		-- hold reset state for 100 ns.
		A <= '0';
		B <= '1';
		Cin <= '1';
      wait for 100 ns;	
		-- hold reset state for 100 ns.
		A <= '1';
		B <= '0';
		Cin <='0';
      wait for 100 ns;	
      -- hold reset state for 100 ns.	
		A <= '1';
		B <= '0';
		Cin <='1';
      wait for 100 ns;	
		-- hold reset state for 100 ns.
		A <= '1';
		B <= '1';
		Cin <='0';
      wait for 100 ns;	
		-- hold reset state for 100 ns.
		A <= '1';
		B <= '1';
		Cin <='1';
      wait for 100 ns;	
		
		

      wait;
   end process;

END;
