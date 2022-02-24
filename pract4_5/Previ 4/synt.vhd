library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity synt is
Port(
clk: in std_logic;
key: in std_logic_vector(7 downto 0);
s: out std_logic
);
end synt;

architecture arch of synt is
  signal counter: unsigned(14 downto 0):=(others=>'0');
  signal aux : std_logic := '0';
  signal n : natural :=0;

  -- type estats is (A0,C1,C2,C3,C4,A4,C5,C6,C7,C8,A8);
  -- signal estat: estats:=A4;

--   begin
--   process (clk) is
--   begin
--   if rising_edge(clk) then
--   if key(7)='1' then
--     counter <= counter +1;
--     if key(6 downto 0)= "0000000" then
--         if counter=1136 then
--           s<=std_logic_vector(to_unsigned(to_integer(1/((counter/1000000)*2)),13)); --A4
--           counter<=(others=>'0');
--         end if;
--     elsif key(6 downto 0)="1100110" then
--       if counter= 119 then
--         s<=std_logic_vector(to_unsigned(to_integer(1/((counter/1000000)*2)),13)); -- C8
--         counter<=(others=>'0');
--       end if;
--     end if;
--   else
--     counter<=(others=>'0';
--   end if;
-- end if;
-- end process;
begin
process (clk) is
begin
  if rising_edge(clk) then
case  to_integer(unsigned(key(6 downto 0))) is


     when     22 => n <=7161 ;
     when     21 => n <=8182 ;   --A0
     when     23 => n <=6198 ;
     when     24 => n <=5289 ;   --C1
     when     25 => n <=4431 ;
     when     26 => n <=3621 ;
     when     27 => n <=2856 ;
    when     28 => n <=2135 ;
     when     29 => n <=1454 ;
     when     31 => n <=0811 ;
      when     32 => n <=9631 ;
      when     33 => n <=9091 ;
      when     34 => n <=8581 ;
      when     35 => n <=8099 ;
      when     36 => n <=7645 ;   --C2
      when     37 => n <=7215 ;
      when     38 => n <=6810 ;
      when     39 => n <=6428 ;
      when     40 => n <=6067 ;
      when     41 => n <=5727 ;
      when     42 => n <=5404 ;
      when     43 => n <=5405 ;
      when     44 => n <=4816 ;
      when     45 => n <=4545 ;
      when     46 => n <=4290 ;
      when     47 => n <=4050 ;
      when     48 => n <=3822 ;   --C3
      when     49 => n <=3608 ;
      when     50 => n <=3405 ;
      when     51 => n <=3214 ;
      when     52 => n <=3034 ;
      when     53 => n <=2863 ;
      when     55 => n <=2703 ;
      when     56 => n <=2408 ;
      when     57 => n <=2273 ;
      when     58 => n <=2145 ;
      when     59 => n <=2025 ;
      when     60 => n <=1911 ;   --C4
      when     61 => n <=1804 ;
      when     62 => n <=1703 ;
      when     63 => n <=1607 ;
      when     64 => n <=1517 ;
      when     65 => n <=1432 ;
      when     66 => n <=1351 ;
     when      67 => n <=  1276;
      when     68 => n <=1204 ;
      when     69 => n <=1136 ;   --A4
      when     70 => n <=1073 ;
      when     71 => n <=1012 ;
     when     72 => n <=  956 ;   --C5
     when     73 => n <=  902 ;
     when     74 => n <=  851 ;
     when     75 => n <=  804 ;
     when     76 => n <=  758 ;
     when     77 => n <=  716 ;
     when     78 => n <=  676 ;
     when     79 => n <=  638 ;
     when     80 => n <=  602 ;
     when     81 => n <=  568 ;
     when     82 => n <=  536 ;
     when     83 => n <=  506 ;
     when     84 => n <=  478 ;   --C6
     when     85 => n <=  451 ;
     when     86 => n <=  426 ;
     when     87 => n <=  402 ;
     when     88 => n <=  379 ;
     when     89 => n <=  358 ;
     when     90 => n <=  338 ;
     when     91 => n <=  319 ;
     when     92 => n <=  301 ;
     when     93 => n <=  284 ;
     when     94 => n <=  268 ;
     when     95 => n <=  253 ;
     when     96 => n <=  239 ;   --C7
     when     97 => n <=  225 ;
     when     98 => n <=  213 ;
     when     99 => n <=  201 ;
     when     100 => n <=  190 ;
     when    101 => n <=  179 ;
     when    102 => n <=  169 ;
     when    103 => n <=  159 ;
     when    104 => n <=  150 ;
     when    105 => n <=  142 ;
     when    106 => n <=  134 ;
     when    107 => n <=  127 ;
     when    108 => n <=  119 ;   --C8
     when    109 => n <=  113 ;
     when    110 => n <=  106 ;
     when    111 => n <= 100 ;
     when    112 => n <=  95  ;
      when    113 => n <=89   ;
     when    114 => n <=  84  ;
     when    115 => n <=  80  ;
     when    116 => n <=  75  ;
     when    117 => n <=  71  ;
     when others=> report "ERROR" severity failure;

    end case;
  end if;
  end process;  --A8
process(clk) is
begin
  if rising_edge(clk) then
if key(7)='1' then
  if counter/= n then
    s<='1';
    counter<= counter +1;

  elsif counter= n-1 then

    counter<=(others=>'0');
    n<=0;
  s<='0';
end if;
else
s<='0';
end if;
end if;
end process;
end arch;
