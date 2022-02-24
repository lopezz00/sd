-- ---------------------------------QUESTIONS---------------------------------
-- --Exercici 1
-- Apartat A ######################################################################
-- 10 + 6 = 16
-- 10 = 1010  -> 01010
-- 6 = 110    -> 00110
--               10000 == 010000 = 16 --> Ho ha hagut overflou pq ha acabat a,b un 1 i si ivolem q sigui positiu li hem de posar un bit mes de precissio
-- Apartat B ######################################################################
-- 15 - 16 = -1
-- 15 = 01111 -> -> -> -> ->  01111
-- 16 = 01111 -> -> -> -> ->  10000
--      +   1                 11111 = -1 --Si tot son uns el nombre representat es -1
--      10000 = -16
-- Apartat C ######################################################################
-- 4 = 00100
--     11011
--     +   1
--     11100 = -4
-- 12 = 01100
--      10011
--      +   1
--      10100 = -12
--
-- 11100
-- 10100
-- 10000 = -16
--
-- --Exercici 2
-- process (A, B) is
-- begin
--   Q <= '0';
--   if (A = '0') then
--     if (B = '0') then
--       Q <= '1';
--     end if;
--   end if;
-- end process;
--
-- architecture arch_ex2gate of ex2gate is
-- begin
--   Q <= A nor B;
-- end arch_ex2gate;
--
-- --Exerccici 4
-- library ieee;
-- use ieee.std_logic_vector_1164.all;
-- use ieee.numeric_std.all;
--
-- entity flfl is
--   port(clk: in std_logic;
--        reset: in std_logic;
--        eneable: in std_logic:
--        D: in std_logic;
--        Q: out std_logic);
-- end entity;
--
-- architecture arc_flfl of flfl is
--   begin
--   process (clk) is
--   if rising_edge(clk) then
--     if (R = '1') then
--       Q <= '0';
--     else
--       Q <= D;
--     end




entity porta is
  port (
  clk: in std_logic;
  boto: in std_logic;
  obrir: out std_logic;
  tancar: out std_logic;
  led: out std_logic
  );
end entity;

architecture arch of porta is
  type estats is (s0, s1, s2);
  signal estat: estats:= s0;
  signal led;
  signal comptador; unsigned(11 downto 0) := (other => '0');
  begin
    process (clk) is
    begin
      



































































--
