

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

entity Com_mod  is
port (
     clkin,enable: in std_logic;
     serial_data: in std_logic;
      serial_clk,cs: out std_logic ;
     four_bits: out std_logic_vector(3 downto 0)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
      );
end Com_mod;

Architecture aCom_mod of Com_mod is
signal four_bits_in: std_logic_vector(3 downto 0);
signal sclk,csin,serial_in : std_logic:='1';

signal count,c1,c2: integer:=0;
begin
process(serial_data)
begin
serial_in<=serial_data;
end process;

process(csin,clkin)
begin
sclk<=clkin or csin;
cs<=csin;
end process;

process (enable,clkin)
begin 
     if enable= '1' and enable'event then
     count<=0;
     csin<='0';
       end if;
    
    
     if clkin='1' and clkin'event then
     if(csin='0') then
        c2<=1;
         if(count=3) then
              four_bits_in(3)<=serial_in;
              elsif (count=4) then
              four_bits_in(2)<=serial_in;
              elsif (count=5) then
              four_bits_in(1)<=serial_in;
              elsif (count=6) then
              
              four_bits_in(0)<=serial_in;
              if c1=1 then
              c1<=0;
              else
              c1<=1;
              end if;
              else
              c2<=1;
              end if;
         
  
         count<=count+1;
            
    end if;
    end if;
    
   
    
    
    if(count=15)then 
        csin<='1';
     end if;
     
          
    end process;
    
    process(c1)
         begin
         four_bits<=four_bits_in;
    end process;
    
    
    
    process(sclk)
    begin
    serial_clk<=sclk;
    end process;
    
    
    
    end Architecture aCom_mod;
