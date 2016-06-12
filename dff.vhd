----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:30 04/01/2015 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is
	port ( clk : in std_logic;
			 reset : in std_logic;
			 d, en : in std_logic;
			 
			 q : out std_logic
			);
end dff;



architecture Behavioral of dff is
	signal data : std_logic;
begin
	process(clk, reset, en)
	begin
		if reset = '1' then
			data <= '0';
		elsif en='1' then
			if clk'event and clk = '1' then
				data <= d;
			else
				data <= data;
			end if;
		end if;
	end process;

	q <= data;
	
end Behavioral;

