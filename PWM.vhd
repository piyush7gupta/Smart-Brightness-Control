----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/09/2019 04:03:41 PM
-- Design Name: 
-- Module Name: PWM - Behavioral
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

entity PWM  is
port (
      clkin: in std_logic;
      count_in: in std_logic_vector(3 downto 0);
      to_LED: out std_logic_vector(15 downto 0)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
      );
end PWM;

Architecture aPWM of PWM is
signal outp: std_logic_vector(3 downto 0);
signal b : std_logic:='0';
signal count,convert: integer:=0;
begin
process (clkin,count_in)
begin 
     if clkin= '1' and clkin'event then
     
     count<=count+1;
     if(count=15) then
     count<=0;
     end if;
    
     
     if(count=0) then
     b<='1';
     end if;
     convert<=to_integer(unsigned(count_in));
     if count=convert then
          b<='0';
          end if;
    if(b='1') then
    to_LED<= "1111111111111111";
    else
    to_LED<= "0000000000000000";
    end if;end if;
          
    end process;
    
    
    end Architecture aPWM;