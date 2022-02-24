library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity HVcounter is
Port ( clk : in std_logic ;
H : out std_logic_vector (9 downto 0);
V : out std_logic_vector(9 downto 0)); 
end HVcounter ;
architecture arch of HVcounter is
	signal hh: unsigned(9 downto 0) := "0000000000";
	signal vv: unsigned(9 downto 0) := "0000000000";
begin
process(clk) is
begin
	if rising_edge(clk) then
	if hh=799 then
	if vv=524 then
		H<=std_logic_vector(hh);
		V<=std_logic_vector(vv);
	else
		hh<="00000000";
		vv<=vv + 1;
	end if;
	else
		hh<=hh+ 1;
end if;
end if;
end process;
end arch;
