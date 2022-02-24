library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity BCD2toseg_tb is
end BCD2toseg_tb;
architecture arc of BCD2toseg_tb is

  component my_BCD2toseg
  port(
  S1, S2: in std_logic_vector (3 downto 0);
  a1, b1, c1, d1, e1, f1, g1: out std_logic;
  a2, b2, c2, d2, e2, f2, g2: out std_logic
  );

end component;

for dut1: my_BCD2toseg use entity work.BCD2toseg;
-- for dut2: my_Hsync use entity work.H_sync;
-- for dut3: my_Vsync use entity work.V_sync;
-- for dut4: my_RGBgenerator use entity work.RGBgenerator;
signal sig1,sig2: std_logic_vector(3 downto 0);
signal sa1, sb1, sc1, sd1, se1, sf1, sg1,sa2, sb2, sc2, sd2, se2, sf2, sg2: std_logic;

begin
dut1: my_BCD2toseg port map(
S1=> sig1,
S2=> sig2 ,
a1=>sa1,
b1=>sb1,
 c1=>sc1,
  d1=>sd1,
   e1=>se1,
    f1=>sf1,
     g1=>sg1,


      a2=>sa2,
      b2=>sb2,
       c2=>sc2,
        d2=>sd2,
         e2=>se2,
          f2=>sf2,
           g2=>sg2);

           sig1<= "0000","0001" after 100 ns, "0010" after 200 ns,"0100" after 300 ns;"----" after 400 ns;
           sig2<="1001","0101" after 100 ns, "0101" after 200 ns,"1000" after 300 ns;"----" after 400 ns;
end arc;
