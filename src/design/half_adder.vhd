----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.10.2026 14:02:05
-- Design Name: 
-- Module Name: half_adder - Behavioral
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

entity half_adder is
    Port(
        a : in std_logic;
        b : in std_logic;
        
        c : out std_logic;
        s : out std_logic  
     );
end half_adder;

architecture Behavioral of half_adder is

begin

    s <= a xor b;
    c <= a and b;

end Behavioral;
