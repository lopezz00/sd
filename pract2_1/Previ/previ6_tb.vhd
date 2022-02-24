library ieee;
use ieee.std_logic_1164.all;

entity tb_HVcounter is
end tb_HVcounter;

architecture tb of tb_HVcounter is

    component HVcounter
        port (clk : in std_logic;
              H   : out std_logic_vector (9 downto 0);
              V   : out std_logic_vector (9 downto 0));
    end component;

    signal clk : std_logic;
    signal H   : std_logic_vector (9 downto 0);
    signal V   : std_logic_vector (9 downto 0);

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : HVcounter
    port map (clk => clk,
              H   => H,
              V   => V);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed

        -- Reset generation
        --  EDIT: Replace YOURRESETSIGNAL below by the name of your reset as I haven't guessed it
        YOURRESETSIGNAL <= '1';
        wait for 100 ns;
        YOURRESETSIGNAL <= '0';
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_HVcounter of tb_HVcounter is
    for tb
    end for;
end cfg_tb_HVcounter;