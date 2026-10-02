----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.10.2026 13:58:20
-- Design Name: 
-- Module Name: adder_4bit - Behavioral
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



entity adder_4bit is
    Port(
        a : in std_logic_vector (3 DOWNTO 0);
        b : in std_logic_vector (3 DOWNTO 0); 
        sum : out std_logic_vector (3 DOWNTO 0)  
    );
end adder_4bit;

architecture Behavioral of adder_4bit is
    
    component full_adder is
        port (
            a_in : in std_logic;
            b_in : in std_logic;
            c_in : in std_logic; 
            
            s_out : out std_logic;
            c_out : out std_logic 
        ); 
    end component;
    
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
    
    half_adder_inst : half_adder
    port map(
        a => a(0),
        b => b(0),
        s => sum(0),
        c => n1
    );
    
    full_adder_inst1 : full_adder
    port map (
        a_in => a(1),
        b_in => b(1),
        c_in => n1,
        s_out => sum(1),
        c_out => n2
    );
    
    full_adder_inst2 : full_adder
    port map (
        a_in => a(2),
        b_in => b(2),
        c_in => n2,
        s_out => sum(2),
        c_out => n3
    );
    
    full_adder_inst3 : full_adder
    port map (
        a_in => a(3),
        b_in => b(3),
        c_in => n3,
        s_out => sum(3)
    );
    
end Behavioral;
