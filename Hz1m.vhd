----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/09/2019 04:14:00 PM
-- Design Name: 
-- Module Name: Hz1000 - Behavioral
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

entity Hz1m  is
port (
        clkin: in std_logic;
      clkout: out std_logic                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
      );
end Hz1m;

Architecture aHz1m of Hz1m is
signal count: integer;
signal q: std_logic;
begin
process (clkin)
begin 
    if clkin= '1' and clkin'event then
    if (count)=50 then 
    count<=0;
    if q= '1' then q<='0';
    else q<='1';
     end if;
    else
    count <= count+1;
    end if;
    end if;
   
    end process;
     clkout<=q;
    end Architecture aHz1m;