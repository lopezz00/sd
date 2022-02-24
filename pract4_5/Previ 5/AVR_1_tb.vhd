library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity AVR_1_tb is
end AVR_1_tb;
architecture arch of AVR_1_tb is

  component my_AVR_1

  port (
  clk : in std_logic ;
  reset : in std_logic ;
  -- Let ' s have some registers as outputs :
  r16 : out std_logic_vector ( 7 downto 0);
  r17 : out std_logic_vector ( 7 downto 0);
  r18 : out std_logic_vector ( 7 downto 0);
  r19 : out std_logic_vector ( 7 downto 0)
  );
end component;

for dut1: my_AVR_1 use entity work.AVR_1;
signal S16,S17,S18,S19: std_logic_vector(7 downto 0);
signal sreset: std_logic;
signal sclk: std_logic;

begin
dut1: my_AVR_1 port map(
clk=> sclk,
reset=>sreset,
r16=>S16,
r17=>S17,
r18=>S18,
r19=>S19);






clock_process: process
  begin           --the clock process
    sclk <= '0';
    wait for 500 ns;
    for i in 1 to 4000000 loop
     sclk <= not sclk;
       wait for 500 ns;
    end loop;
    wait;

  end process clock_process;

sreset<='1','0' after 10 ms ;
end arch;
