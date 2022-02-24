library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity V_sync_gen is
Port (
V : in std_logic_vector (9 downto 0);
V_sync : out std_logic);
end V_sync_gen;
architecture arch of V_sync_gen is
signal vv: unsigned (9 downto 0);
begin
process(vv)is
begin
if vv>2 then
V_sync<='1';
end if;
end process;
vv <= unsigned(V);
end arch;
