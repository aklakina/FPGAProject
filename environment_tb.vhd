----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2021 01:52:37 PM
-- Design Name: 
-- Module Name: environment_tb - Behavioral
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--package environment_package is
--    type FIELD is array (integer range <> , integer range <>) of BIT;
--end package;

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;
use WORK.ENVIRONMENT_PACKAGE.ALL;

entity environment_tb is
end;

architecture bench of environment_tb is
constant FIELD_SIZE : integer:=32;
  component environment
    Generic (FIELD_SIZE : INTEGER := 32);
    Port    (clock_controlled  : in STD_LOGIC;
             button_clock      : in STD_LOGIC;
             clock_enable      : in STD_LOGIC;
             button            : in STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
             printed           : inout STD_LOGIC;
             
             --temp              : inout std_logic:='0';
             cursor_x          : out INTEGER;
             cursor_y          : out INTEGER;
             field_out         : out FIELD(0 to (FIELD_SIZE - 1), 0 to (FIELD_SIZE - 1)));
  end component;
  signal clock_controlled: STD_LOGIC;
  signal button_clock: STD_LOGIC;
  signal clock_enable: STD_LOGIC;
  signal button: STD_LOGIC_VECTOR(4 downto 0);
  signal printed: STD_LOGIC;
  signal cursor_x: INTEGER;
  signal cursor_y: INTEGER;
  signal tester:std_logic:='0';
  signal field_out: FIELD(0 to (FIELD_SIZE - 1), 0 to (FIELD_SIZE - 1));

  constant clock_period: time := 2 ns;
  signal stop_the_clock: boolean;
  
  signal myField : FIELD(0 to (FIELD_SIZE - 1), 0 to (FIELD_SIZE - 1));

begin

  -- Insert values for generic parameters !!
  uut: environment
  Generic map (FIELD_SIZE => 32)
                      port map ( clock_controlled => clock_controlled,
                                 button_clock     => button_clock,
                                 clock_enable     => clock_enable,
                                 button           => button,
                                 printed          => printed,
                                 cursor_x         => cursor_x,
                                 cursor_y         => cursor_y,
                               --  temp => tester,
                                 field_out        => field_out );

  stimulus: process
  begin
  
    -- Put initialisation code here
    clock_enable<='0';
    wait for 10 ns;
    button<="01000";
    wait for 10 ns;
    button<="00010";
    wait for 10 ns;
    button<="00001";
    wait for 10 ns;
    button<="00010";
    wait for 10 ns;
    button<="00001";
    wait for 10 ns;
    button<="00010";
    wait for 10 ns;
    button<="00001";
    wait for 10 ns;
    button<="00000";
    wait for 10 ns;
    --field_out<=myField;
    clock_enable<='1';
    wait for 10 ns;

    -- Put test bench stimulus code here

    --stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clock_controlled <= '0', '1' after clock_period / 2;
      
      wait for clock_period;
    end loop;
    wait;
  end process;
  clocking2: process
  begin
    while not stop_the_clock loop
      printed <= '0', '1' after clock_period*2;
      wait for clock_period*4;
    end loop;
    wait;
  end process;

end;