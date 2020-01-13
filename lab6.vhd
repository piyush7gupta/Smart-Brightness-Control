----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/09/2019 03:47:48 PM
-- Design Name: 
-- Module Name: lab6 - Behavioral
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

entity lab7 is
--  Port ( );
port (
      clk: in std_logic;
      cs,slk : out std_logic;
      serial_data  : in std_logic;
      led   : out std_logic_vector (15 downto 0);
      Cathode : out std_logic_vector (6 downto 0);
      Anode   : out std_logic_vector (3 downto 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
      );
end lab7;

architecture alab7 of lab7 is
signal clk1,clk1000,clk1m: std_logic;
signal from_com_mod: std_logic_vector(3 downto 0);
begin
E1:entity work.Hz1(aHz1)
PORT MAP(clk,clk1);

E2:entity work.Hz1000(aHz1000)
PORT MAP(clk,clk1000);

E3:entity work.Hz1m(aHz1m)
PORT MAP(clk,clk1m);

E4:entity work.Com_mod(aCom_mod)
PORT MAP(clk1m,clk1,serial_data,slk,cs,from_com_mod);

E5:entity work.PWM(aPWM)
PORT MAP(clk1000,from_com_mod,led);

E6:entity work.display(adisplay)
PORT MAP(from_com_mod,Anode,Cathode);
end alab7;
