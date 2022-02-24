library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity BCDxtocounter_tb is
end BCDxtocounter_tb;
architecture arch of BCDxtocounter_tb is

  component my_BCDxtocounter
  port(clk : in std_logic;
  reset:in std_logic:='0';
  start:in std_logic:='1';
  pause: in std_logic:='0';
  d1,d2 : out std_logic_vector(3 downto 0)
  );

end component;
--
-- component my_Hsync
-- port ( H : in std_logic_vector (9 downto 0);
-- H_sync : out std_logic );
-- end component;


for dut1: my_BCDxtocounter use entity work.BCDxtocounter;
-- for dut2: my_Hsync use entity work.H_sync;
-- for dut3: my_Vsync use entity work.V_sync;
-- for dut4: my_RGBgenerator use entity work.RGBgenerator;
signal sclk,sRst,sStp,sPaus: std_logic;
signal sd1,sd2 : std_logic_vector(3 downto 0);

begin
dut1: my_BCDxtocounter port map(
clk=> sclk,
d1=>sd1,
d2=>sd2
);
-- dut2: my_Hsync port map(
-- H=>sH
-- );
-- dut3: my_Vsync port map(
-- V=> sV
-- );
-- dut4: my_RGBgenerator port map(
-- H=>sH,
-- V=>sV,
-- R=>sR,
-- G=>sG,
-- B=>sB);
clock_process: process
  begin           --the clock process
    sclk <= '0';
    wait for 5 ns;
    for i in 1 to 4000000 loop
     sclk <= not sclk;
       wait for 5 ns;
    end loop;
    wait;

  end process clock_process;
end arch;
