----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/09/2019 04:15:20 PM
-- Design Name: 
-- Module Name: display - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_signed.all;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display  is
port (
        number: in std_logic_vector(3 downto 0);
      anode: out std_logic_vector(3 downto 0);
      cathodes: out std_logic_vector(6 downto 0)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
      );
end display;

architecture adisplay of display is
begin
anode<="1110";
process(number)
begin
case number is
    when "0000" => cathodes <= "0000001"; -- "0"     
    when "0001" => cathodes <= "1001111"; -- "1" 
    when "0010" => cathodes <= "0010010"; -- "2" 
    when "0011" => cathodes <= "0000110"; -- "3" 
    when "0100" => cathodes <= "1001100"; -- "4" 
    when "0101" => cathodes <= "0100100"; -- "5" 
    when "0110" => cathodes <= "0100000"; -- "6" 
    when "0111" => cathodes <= "0001111"; -- "7" 
    when "1000" => cathodes <= "0000000"; -- "8"     
    when "1001" => cathodes <= "0000100"; -- "9" 
    when "1010" => cathodes <= "0001000"; -- a
    when "1011" => cathodes <= "1100000"; -- b
    when "1100" => cathodes <= "0110001"; -- C

    when "1101" => cathodes <= "1000010"; -- d
    when "1110" => cathodes <= "0110000"; -- E
    when "1111" => cathodes <= "0111000"; -- F
    when others => cathodes<=  "0000000";
    end case;
end process;
end adisplay;
