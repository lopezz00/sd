library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity H_sync_gen is
Port (
H : in std_logic_vector (9 downto 0);
H_sync : out std_logic);
end H_sync_gen;
architecture arch of H_sync_gen is
signal hh: unsigned (9 downto 0);
begin
process(hh)is
begin
if hh < 97 then
H_sync<='0';
elsif hh>96 then
H_sync<='1';
end if;
end process;
hh <= unsigned(H);
end arch;


