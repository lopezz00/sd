library IEEE;
use IEEE.std_logic_1164.all;

entity HVcounter is
Port ( clk : in STD_LOGIC ;
H : out STD_LOGIC_VECTOR (9 downto 0);
V : out STD_LOGIC_VECTOR (9 downto 0));
end HVcounter ;
architecture arch of HVcounter is
  signal h: unsigned(9 downto 0) := "0000000000"
  signal v: unsigned(9 downto 9) := "0000000000"
begin
  process(clk) is
  begin
    if rising_edge(clk) then
      if h="799" then
        if v="524" then
          h<=h;
          v<=v;
        else
          h<='0';
          v<=v+1;
         

                     
      else
          h<=h+1;
      end if;
        end if;
    end process;
H<=h;
V<=v;


end arch;