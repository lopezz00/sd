library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity synt_tb is
end synt_tb;
architecture behav of synt_tb is

  component my_synt
  port(
  clk: in std_logic;
  key: in std_logic_vector(7 downto 0);
  s : out std_logic
  );

end component;

for dut1: my_synt use entity work.synt;
signal skey: std_logic_vector(7 downto 0);
signal sout: std_logic;
signal sclk: std_logic;

begin
dut1: my_synt port map(
clk=> sclk,
key=>skey,
s=>sout);






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

skey<= "10010110","00000000" after 15 ms ,"11001110" after 30 ms,"--------" after 40 ms;
end behav;
