-- num_inputs = 8;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library work;

entity mean8 is
generic (WID  : integer := 16);
port (
    clk     : in std_logic;
    rst     : in std_logic;
    in_000     : in unsigned(WID-1 downto 0);
    in_001     : in unsigned(WID-1 downto 0);
    in_002     : in unsigned(WID-1 downto 0);
    in_003     : in unsigned(WID-1 downto 0);
    in_004     : in unsigned(WID-1 downto 0);
    in_005     : in unsigned(WID-1 downto 0);
    in_006     : in unsigned(WID-1 downto 0);
    in_007     : in unsigned(WID-1 downto 0);
    o_mean     : out  unsigned(WID-1 downto 0)
);
end mean8;

architecture arch_name of mean8 is

    -- Stage 2 of 4
    signal stage_01_000 : unsigned(WID+0 downto 0);
    signal stage_01_001 : unsigned(WID+0 downto 0);
    signal stage_01_002 : unsigned(WID+0 downto 0);
    signal stage_01_003 : unsigned(WID+0 downto 0);
    -- Stage 3 of 4
    signal stage_02_000 : unsigned(WID+1 downto 0);
    signal stage_02_001 : unsigned(WID+1 downto 0);
    -- Stage 4 of 4
    signal stage_03_000 : unsigned(WID+2 downto 0);


begin -- architecture

    process(clk, rst) begin
        if (rst) then
            -- Stage 2 of 4
            stage_01_000 <= (others => '0');
            stage_01_001 <= (others => '0');
            stage_01_002 <= (others => '0');
            stage_01_003 <= (others => '0');
            -- Stage 3 of 4
            stage_02_000 <= (others => '0');
            stage_02_001 <= (others => '0');
            -- Stage 4 of 4
            stage_03_000 <= (others => '0');
            o_mean       <= (others => '0');
        elsif rising_edge(clk) then
            -- Stage 2 of 4
            stage_01_000 <= in_000 + in_001;
            stage_01_001 <= in_002 + in_003;
            stage_01_002 <= in_004 + in_005;
            stage_01_003 <= in_006 + in_007;
            -- Stage 3 of 4
            stage_02_000 <= stage_01_000 + stage_01_001;
            stage_02_001 <= stage_01_002 + stage_01_003;
            -- Stage 4 of 4
            stage_03_000 <= stage_02_000 + stage_02_001;
            o_mean       <= stage_03_000 (WID+3 downto 3);
        end if;
    end process;
end architecture arch_name;


