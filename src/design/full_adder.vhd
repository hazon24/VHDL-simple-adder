----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.10.2026 14:12:13
-- Design Name: 
-- Module Name: full_adder - Behavioral
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



entity full_adder is
    port (
        a_in : in std_logic;
        b_in : in std_logic;
        c_in : in std_logic; 
        
        s_out : out std_logic;
        c_out : out std_logic 
    ); 
end full_adder;

architecture Behavioral of full_adder is
    
    component half_adder is
        Port(
            a : in std_logic;
            b : in std_logic;
            
            c : out std_logic;
            s : out std_logic  
        );
    end component;

    signal n1 : std_logic;
    signal n2 : std_logic;
    signal n3 : std_logic;
    
begin
    
    half_adder_inst1 : half_adder
    port map(
        a => a_in,
        b => b_in,
        s => n1,
        c => n2
    );
    
    half_adder_inst2 : half_adder
    port map(
        a => c_in,
        b => n1,
        s => s_out,
        c => n3
    );
    
    c_out <= n2 or n3;
    
end Behavioral;
