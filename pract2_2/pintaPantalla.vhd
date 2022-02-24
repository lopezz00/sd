-- Declarem les llibraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Inici
entity rgbBRgen is
Port (
H : in STD_LOGIC_VECTOR (9 downto 0);
V : in STD_LOGIC_VECTOR (9 downto 0);
R : out STD_LOGIC;
G : out STD_LOGIC;
B : out STD_LOGIC);
end rgbBRgen;
architecture arch of rgbBRgen is
signal vv: unsigned( 9 downto 0);
signal hh: unsigned (9 downto 0);
begin
process(hh,vv) is
begin
if vv < 2 then
R <= '1';
G <= '1';
B <= '1';
elsif vv > 1 then
if vv < 12 and vv > 1 then
if hh > 95 then
R <= '0';
G <= '0';
B <= '0';
end if;
elsif vv > 11 then
if hh > 95 and hh < 112 then
R <= '0';
G <= '0';
B <= '0';
elsif hh > 111 and hh < 432 then
R <= '0';
G <= '0';
B <= '1';
elsif hh < 752 and hh > 431 then
R <= '1';
G <= '0';
B <= '0';
elsif hh > 751 then
R <= '0';
G <= '0';
B <= '0';
end if;
end if;
end if;
end process;
vv <= unsigned(V);
hh <= unsigned(H);
end arch;
