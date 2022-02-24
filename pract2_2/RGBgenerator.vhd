library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity RGBgenerator is
Port (
H : in std_logic_vector (9 downto 0);
V : in std_logic_vector (9 downto 0);
R : out std_logic;
G : out std_logic;
B : out std_logic);
end RGBgenerator;
architecture arch of RGBgenerator is
signal vv: unsigned(9 downto 0);
signal hh: unsigned(9 downto 0);
begin
process(hh,vv) is
begin
if vv<3 then
R<='0';
G<='0';
B<='0';
elsif vv > 1 then
if vv < 11 and vv > 1 then
if hh>95 then
R<='0';
G<='0';
B<='0';
end if;
elsif vv> 11 then
if hh>95 and hh<112 then
R<='0';
G<='0';
B<='0';
elsif hh>111 and hh<752 then
R<='1';
G<='0';
B<='0';
elsif hh>751 then
R<='0';
G<='0';
B<='0';
end if;
end if;
end if;
end process;
hh<=unsigned(H);
vv<=unsigned(V);
end arch;
