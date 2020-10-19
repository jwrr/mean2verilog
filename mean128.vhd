-- num_inputs = 128;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library work;

entity mean128 is
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
    in_008     : in unsigned(WID-1 downto 0);
    in_009     : in unsigned(WID-1 downto 0);
    in_010     : in unsigned(WID-1 downto 0);
    in_011     : in unsigned(WID-1 downto 0);
    in_012     : in unsigned(WID-1 downto 0);
    in_013     : in unsigned(WID-1 downto 0);
    in_014     : in unsigned(WID-1 downto 0);
    in_015     : in unsigned(WID-1 downto 0);
    in_016     : in unsigned(WID-1 downto 0);
    in_017     : in unsigned(WID-1 downto 0);
    in_018     : in unsigned(WID-1 downto 0);
    in_019     : in unsigned(WID-1 downto 0);
    in_020     : in unsigned(WID-1 downto 0);
    in_021     : in unsigned(WID-1 downto 0);
    in_022     : in unsigned(WID-1 downto 0);
    in_023     : in unsigned(WID-1 downto 0);
    in_024     : in unsigned(WID-1 downto 0);
    in_025     : in unsigned(WID-1 downto 0);
    in_026     : in unsigned(WID-1 downto 0);
    in_027     : in unsigned(WID-1 downto 0);
    in_028     : in unsigned(WID-1 downto 0);
    in_029     : in unsigned(WID-1 downto 0);
    in_030     : in unsigned(WID-1 downto 0);
    in_031     : in unsigned(WID-1 downto 0);
    in_032     : in unsigned(WID-1 downto 0);
    in_033     : in unsigned(WID-1 downto 0);
    in_034     : in unsigned(WID-1 downto 0);
    in_035     : in unsigned(WID-1 downto 0);
    in_036     : in unsigned(WID-1 downto 0);
    in_037     : in unsigned(WID-1 downto 0);
    in_038     : in unsigned(WID-1 downto 0);
    in_039     : in unsigned(WID-1 downto 0);
    in_040     : in unsigned(WID-1 downto 0);
    in_041     : in unsigned(WID-1 downto 0);
    in_042     : in unsigned(WID-1 downto 0);
    in_043     : in unsigned(WID-1 downto 0);
    in_044     : in unsigned(WID-1 downto 0);
    in_045     : in unsigned(WID-1 downto 0);
    in_046     : in unsigned(WID-1 downto 0);
    in_047     : in unsigned(WID-1 downto 0);
    in_048     : in unsigned(WID-1 downto 0);
    in_049     : in unsigned(WID-1 downto 0);
    in_050     : in unsigned(WID-1 downto 0);
    in_051     : in unsigned(WID-1 downto 0);
    in_052     : in unsigned(WID-1 downto 0);
    in_053     : in unsigned(WID-1 downto 0);
    in_054     : in unsigned(WID-1 downto 0);
    in_055     : in unsigned(WID-1 downto 0);
    in_056     : in unsigned(WID-1 downto 0);
    in_057     : in unsigned(WID-1 downto 0);
    in_058     : in unsigned(WID-1 downto 0);
    in_059     : in unsigned(WID-1 downto 0);
    in_060     : in unsigned(WID-1 downto 0);
    in_061     : in unsigned(WID-1 downto 0);
    in_062     : in unsigned(WID-1 downto 0);
    in_063     : in unsigned(WID-1 downto 0);
    in_064     : in unsigned(WID-1 downto 0);
    in_065     : in unsigned(WID-1 downto 0);
    in_066     : in unsigned(WID-1 downto 0);
    in_067     : in unsigned(WID-1 downto 0);
    in_068     : in unsigned(WID-1 downto 0);
    in_069     : in unsigned(WID-1 downto 0);
    in_070     : in unsigned(WID-1 downto 0);
    in_071     : in unsigned(WID-1 downto 0);
    in_072     : in unsigned(WID-1 downto 0);
    in_073     : in unsigned(WID-1 downto 0);
    in_074     : in unsigned(WID-1 downto 0);
    in_075     : in unsigned(WID-1 downto 0);
    in_076     : in unsigned(WID-1 downto 0);
    in_077     : in unsigned(WID-1 downto 0);
    in_078     : in unsigned(WID-1 downto 0);
    in_079     : in unsigned(WID-1 downto 0);
    in_080     : in unsigned(WID-1 downto 0);
    in_081     : in unsigned(WID-1 downto 0);
    in_082     : in unsigned(WID-1 downto 0);
    in_083     : in unsigned(WID-1 downto 0);
    in_084     : in unsigned(WID-1 downto 0);
    in_085     : in unsigned(WID-1 downto 0);
    in_086     : in unsigned(WID-1 downto 0);
    in_087     : in unsigned(WID-1 downto 0);
    in_088     : in unsigned(WID-1 downto 0);
    in_089     : in unsigned(WID-1 downto 0);
    in_090     : in unsigned(WID-1 downto 0);
    in_091     : in unsigned(WID-1 downto 0);
    in_092     : in unsigned(WID-1 downto 0);
    in_093     : in unsigned(WID-1 downto 0);
    in_094     : in unsigned(WID-1 downto 0);
    in_095     : in unsigned(WID-1 downto 0);
    in_096     : in unsigned(WID-1 downto 0);
    in_097     : in unsigned(WID-1 downto 0);
    in_098     : in unsigned(WID-1 downto 0);
    in_099     : in unsigned(WID-1 downto 0);
    in_100     : in unsigned(WID-1 downto 0);
    in_101     : in unsigned(WID-1 downto 0);
    in_102     : in unsigned(WID-1 downto 0);
    in_103     : in unsigned(WID-1 downto 0);
    in_104     : in unsigned(WID-1 downto 0);
    in_105     : in unsigned(WID-1 downto 0);
    in_106     : in unsigned(WID-1 downto 0);
    in_107     : in unsigned(WID-1 downto 0);
    in_108     : in unsigned(WID-1 downto 0);
    in_109     : in unsigned(WID-1 downto 0);
    in_110     : in unsigned(WID-1 downto 0);
    in_111     : in unsigned(WID-1 downto 0);
    in_112     : in unsigned(WID-1 downto 0);
    in_113     : in unsigned(WID-1 downto 0);
    in_114     : in unsigned(WID-1 downto 0);
    in_115     : in unsigned(WID-1 downto 0);
    in_116     : in unsigned(WID-1 downto 0);
    in_117     : in unsigned(WID-1 downto 0);
    in_118     : in unsigned(WID-1 downto 0);
    in_119     : in unsigned(WID-1 downto 0);
    in_120     : in unsigned(WID-1 downto 0);
    in_121     : in unsigned(WID-1 downto 0);
    in_122     : in unsigned(WID-1 downto 0);
    in_123     : in unsigned(WID-1 downto 0);
    in_124     : in unsigned(WID-1 downto 0);
    in_125     : in unsigned(WID-1 downto 0);
    in_126     : in unsigned(WID-1 downto 0);
    in_127     : in unsigned(WID-1 downto 0);
    o_mean     : out  unsigned(WID-1 downto 0)
);
end mean128;

architecture arch_name of mean128 is

    -- Stage 2 of 8
    signal stage_01_000 : unsigned(WID+0 downto 0);
    signal stage_01_001 : unsigned(WID+0 downto 0);
    signal stage_01_002 : unsigned(WID+0 downto 0);
    signal stage_01_003 : unsigned(WID+0 downto 0);
    signal stage_01_004 : unsigned(WID+0 downto 0);
    signal stage_01_005 : unsigned(WID+0 downto 0);
    signal stage_01_006 : unsigned(WID+0 downto 0);
    signal stage_01_007 : unsigned(WID+0 downto 0);
    signal stage_01_008 : unsigned(WID+0 downto 0);
    signal stage_01_009 : unsigned(WID+0 downto 0);
    signal stage_01_010 : unsigned(WID+0 downto 0);
    signal stage_01_011 : unsigned(WID+0 downto 0);
    signal stage_01_012 : unsigned(WID+0 downto 0);
    signal stage_01_013 : unsigned(WID+0 downto 0);
    signal stage_01_014 : unsigned(WID+0 downto 0);
    signal stage_01_015 : unsigned(WID+0 downto 0);
    signal stage_01_016 : unsigned(WID+0 downto 0);
    signal stage_01_017 : unsigned(WID+0 downto 0);
    signal stage_01_018 : unsigned(WID+0 downto 0);
    signal stage_01_019 : unsigned(WID+0 downto 0);
    signal stage_01_020 : unsigned(WID+0 downto 0);
    signal stage_01_021 : unsigned(WID+0 downto 0);
    signal stage_01_022 : unsigned(WID+0 downto 0);
    signal stage_01_023 : unsigned(WID+0 downto 0);
    signal stage_01_024 : unsigned(WID+0 downto 0);
    signal stage_01_025 : unsigned(WID+0 downto 0);
    signal stage_01_026 : unsigned(WID+0 downto 0);
    signal stage_01_027 : unsigned(WID+0 downto 0);
    signal stage_01_028 : unsigned(WID+0 downto 0);
    signal stage_01_029 : unsigned(WID+0 downto 0);
    signal stage_01_030 : unsigned(WID+0 downto 0);
    signal stage_01_031 : unsigned(WID+0 downto 0);
    signal stage_01_032 : unsigned(WID+0 downto 0);
    signal stage_01_033 : unsigned(WID+0 downto 0);
    signal stage_01_034 : unsigned(WID+0 downto 0);
    signal stage_01_035 : unsigned(WID+0 downto 0);
    signal stage_01_036 : unsigned(WID+0 downto 0);
    signal stage_01_037 : unsigned(WID+0 downto 0);
    signal stage_01_038 : unsigned(WID+0 downto 0);
    signal stage_01_039 : unsigned(WID+0 downto 0);
    signal stage_01_040 : unsigned(WID+0 downto 0);
    signal stage_01_041 : unsigned(WID+0 downto 0);
    signal stage_01_042 : unsigned(WID+0 downto 0);
    signal stage_01_043 : unsigned(WID+0 downto 0);
    signal stage_01_044 : unsigned(WID+0 downto 0);
    signal stage_01_045 : unsigned(WID+0 downto 0);
    signal stage_01_046 : unsigned(WID+0 downto 0);
    signal stage_01_047 : unsigned(WID+0 downto 0);
    signal stage_01_048 : unsigned(WID+0 downto 0);
    signal stage_01_049 : unsigned(WID+0 downto 0);
    signal stage_01_050 : unsigned(WID+0 downto 0);
    signal stage_01_051 : unsigned(WID+0 downto 0);
    signal stage_01_052 : unsigned(WID+0 downto 0);
    signal stage_01_053 : unsigned(WID+0 downto 0);
    signal stage_01_054 : unsigned(WID+0 downto 0);
    signal stage_01_055 : unsigned(WID+0 downto 0);
    signal stage_01_056 : unsigned(WID+0 downto 0);
    signal stage_01_057 : unsigned(WID+0 downto 0);
    signal stage_01_058 : unsigned(WID+0 downto 0);
    signal stage_01_059 : unsigned(WID+0 downto 0);
    signal stage_01_060 : unsigned(WID+0 downto 0);
    signal stage_01_061 : unsigned(WID+0 downto 0);
    signal stage_01_062 : unsigned(WID+0 downto 0);
    signal stage_01_063 : unsigned(WID+0 downto 0);
    -- Stage 3 of 8
    signal stage_02_000 : unsigned(WID+1 downto 0);
    signal stage_02_001 : unsigned(WID+1 downto 0);
    signal stage_02_002 : unsigned(WID+1 downto 0);
    signal stage_02_003 : unsigned(WID+1 downto 0);
    signal stage_02_004 : unsigned(WID+1 downto 0);
    signal stage_02_005 : unsigned(WID+1 downto 0);
    signal stage_02_006 : unsigned(WID+1 downto 0);
    signal stage_02_007 : unsigned(WID+1 downto 0);
    signal stage_02_008 : unsigned(WID+1 downto 0);
    signal stage_02_009 : unsigned(WID+1 downto 0);
    signal stage_02_010 : unsigned(WID+1 downto 0);
    signal stage_02_011 : unsigned(WID+1 downto 0);
    signal stage_02_012 : unsigned(WID+1 downto 0);
    signal stage_02_013 : unsigned(WID+1 downto 0);
    signal stage_02_014 : unsigned(WID+1 downto 0);
    signal stage_02_015 : unsigned(WID+1 downto 0);
    signal stage_02_016 : unsigned(WID+1 downto 0);
    signal stage_02_017 : unsigned(WID+1 downto 0);
    signal stage_02_018 : unsigned(WID+1 downto 0);
    signal stage_02_019 : unsigned(WID+1 downto 0);
    signal stage_02_020 : unsigned(WID+1 downto 0);
    signal stage_02_021 : unsigned(WID+1 downto 0);
    signal stage_02_022 : unsigned(WID+1 downto 0);
    signal stage_02_023 : unsigned(WID+1 downto 0);
    signal stage_02_024 : unsigned(WID+1 downto 0);
    signal stage_02_025 : unsigned(WID+1 downto 0);
    signal stage_02_026 : unsigned(WID+1 downto 0);
    signal stage_02_027 : unsigned(WID+1 downto 0);
    signal stage_02_028 : unsigned(WID+1 downto 0);
    signal stage_02_029 : unsigned(WID+1 downto 0);
    signal stage_02_030 : unsigned(WID+1 downto 0);
    signal stage_02_031 : unsigned(WID+1 downto 0);
    -- Stage 4 of 8
    signal stage_03_000 : unsigned(WID+2 downto 0);
    signal stage_03_001 : unsigned(WID+2 downto 0);
    signal stage_03_002 : unsigned(WID+2 downto 0);
    signal stage_03_003 : unsigned(WID+2 downto 0);
    signal stage_03_004 : unsigned(WID+2 downto 0);
    signal stage_03_005 : unsigned(WID+2 downto 0);
    signal stage_03_006 : unsigned(WID+2 downto 0);
    signal stage_03_007 : unsigned(WID+2 downto 0);
    signal stage_03_008 : unsigned(WID+2 downto 0);
    signal stage_03_009 : unsigned(WID+2 downto 0);
    signal stage_03_010 : unsigned(WID+2 downto 0);
    signal stage_03_011 : unsigned(WID+2 downto 0);
    signal stage_03_012 : unsigned(WID+2 downto 0);
    signal stage_03_013 : unsigned(WID+2 downto 0);
    signal stage_03_014 : unsigned(WID+2 downto 0);
    signal stage_03_015 : unsigned(WID+2 downto 0);
    -- Stage 5 of 8
    signal stage_04_000 : unsigned(WID+3 downto 0);
    signal stage_04_001 : unsigned(WID+3 downto 0);
    signal stage_04_002 : unsigned(WID+3 downto 0);
    signal stage_04_003 : unsigned(WID+3 downto 0);
    signal stage_04_004 : unsigned(WID+3 downto 0);
    signal stage_04_005 : unsigned(WID+3 downto 0);
    signal stage_04_006 : unsigned(WID+3 downto 0);
    signal stage_04_007 : unsigned(WID+3 downto 0);
    -- Stage 6 of 8
    signal stage_05_000 : unsigned(WID+4 downto 0);
    signal stage_05_001 : unsigned(WID+4 downto 0);
    signal stage_05_002 : unsigned(WID+4 downto 0);
    signal stage_05_003 : unsigned(WID+4 downto 0);
    -- Stage 7 of 8
    signal stage_06_000 : unsigned(WID+5 downto 0);
    signal stage_06_001 : unsigned(WID+5 downto 0);
    -- Stage 8 of 8
    signal stage_07_000 : unsigned(WID+6 downto 0);

begin -- architecture

    process(clk, rst) begin
        if (rst) then
            -- Stage 2 of 8
            stage_01_000 <= (others => '0');
            stage_01_001 <= (others => '0');
            stage_01_002 <= (others => '0');
            stage_01_003 <= (others => '0');
            stage_01_004 <= (others => '0');
            stage_01_005 <= (others => '0');
            stage_01_006 <= (others => '0');
            stage_01_007 <= (others => '0');
            stage_01_008 <= (others => '0');
            stage_01_009 <= (others => '0');
            stage_01_010 <= (others => '0');
            stage_01_011 <= (others => '0');
            stage_01_012 <= (others => '0');
            stage_01_013 <= (others => '0');
            stage_01_014 <= (others => '0');
            stage_01_015 <= (others => '0');
            stage_01_016 <= (others => '0');
            stage_01_017 <= (others => '0');
            stage_01_018 <= (others => '0');
            stage_01_019 <= (others => '0');
            stage_01_020 <= (others => '0');
            stage_01_021 <= (others => '0');
            stage_01_022 <= (others => '0');
            stage_01_023 <= (others => '0');
            stage_01_024 <= (others => '0');
            stage_01_025 <= (others => '0');
            stage_01_026 <= (others => '0');
            stage_01_027 <= (others => '0');
            stage_01_028 <= (others => '0');
            stage_01_029 <= (others => '0');
            stage_01_030 <= (others => '0');
            stage_01_031 <= (others => '0');
            stage_01_032 <= (others => '0');
            stage_01_033 <= (others => '0');
            stage_01_034 <= (others => '0');
            stage_01_035 <= (others => '0');
            stage_01_036 <= (others => '0');
            stage_01_037 <= (others => '0');
            stage_01_038 <= (others => '0');
            stage_01_039 <= (others => '0');
            stage_01_040 <= (others => '0');
            stage_01_041 <= (others => '0');
            stage_01_042 <= (others => '0');
            stage_01_043 <= (others => '0');
            stage_01_044 <= (others => '0');
            stage_01_045 <= (others => '0');
            stage_01_046 <= (others => '0');
            stage_01_047 <= (others => '0');
            stage_01_048 <= (others => '0');
            stage_01_049 <= (others => '0');
            stage_01_050 <= (others => '0');
            stage_01_051 <= (others => '0');
            stage_01_052 <= (others => '0');
            stage_01_053 <= (others => '0');
            stage_01_054 <= (others => '0');
            stage_01_055 <= (others => '0');
            stage_01_056 <= (others => '0');
            stage_01_057 <= (others => '0');
            stage_01_058 <= (others => '0');
            stage_01_059 <= (others => '0');
            stage_01_060 <= (others => '0');
            stage_01_061 <= (others => '0');
            stage_01_062 <= (others => '0');
            stage_01_063 <= (others => '0');
            -- Stage 3 of 8
            stage_02_000 <= (others => '0');
            stage_02_001 <= (others => '0');
            stage_02_002 <= (others => '0');
            stage_02_003 <= (others => '0');
            stage_02_004 <= (others => '0');
            stage_02_005 <= (others => '0');
            stage_02_006 <= (others => '0');
            stage_02_007 <= (others => '0');
            stage_02_008 <= (others => '0');
            stage_02_009 <= (others => '0');
            stage_02_010 <= (others => '0');
            stage_02_011 <= (others => '0');
            stage_02_012 <= (others => '0');
            stage_02_013 <= (others => '0');
            stage_02_014 <= (others => '0');
            stage_02_015 <= (others => '0');
            stage_02_016 <= (others => '0');
            stage_02_017 <= (others => '0');
            stage_02_018 <= (others => '0');
            stage_02_019 <= (others => '0');
            stage_02_020 <= (others => '0');
            stage_02_021 <= (others => '0');
            stage_02_022 <= (others => '0');
            stage_02_023 <= (others => '0');
            stage_02_024 <= (others => '0');
            stage_02_025 <= (others => '0');
            stage_02_026 <= (others => '0');
            stage_02_027 <= (others => '0');
            stage_02_028 <= (others => '0');
            stage_02_029 <= (others => '0');
            stage_02_030 <= (others => '0');
            stage_02_031 <= (others => '0');
            -- Stage 4 of 8
            stage_03_000 <= (others => '0');
            stage_03_001 <= (others => '0');
            stage_03_002 <= (others => '0');
            stage_03_003 <= (others => '0');
            stage_03_004 <= (others => '0');
            stage_03_005 <= (others => '0');
            stage_03_006 <= (others => '0');
            stage_03_007 <= (others => '0');
            stage_03_008 <= (others => '0');
            stage_03_009 <= (others => '0');
            stage_03_010 <= (others => '0');
            stage_03_011 <= (others => '0');
            stage_03_012 <= (others => '0');
            stage_03_013 <= (others => '0');
            stage_03_014 <= (others => '0');
            stage_03_015 <= (others => '0');
            -- Stage 5 of 8
            stage_04_000 <= (others => '0');
            stage_04_001 <= (others => '0');
            stage_04_002 <= (others => '0');
            stage_04_003 <= (others => '0');
            stage_04_004 <= (others => '0');
            stage_04_005 <= (others => '0');
            stage_04_006 <= (others => '0');
            stage_04_007 <= (others => '0');
            -- Stage 6 of 8
            stage_05_000 <= (others => '0');
            stage_05_001 <= (others => '0');
            stage_05_002 <= (others => '0');
            stage_05_003 <= (others => '0');
            -- Stage 7 of 8
            stage_06_000 <= (others => '0');
            stage_06_001 <= (others => '0');
            -- Stage 8 of 8
            stage_07_000 <= (others => '0');
            o_mean       <= (others => '0');
        elsif rising_edge(clk) then
            -- Stage 2 of 8
            stage_01_000 <= in_000 + in_001;
            stage_01_001 <= in_002 + in_003;
            stage_01_002 <= in_004 + in_005;
            stage_01_003 <= in_006 + in_007;
            stage_01_004 <= in_008 + in_009;
            stage_01_005 <= in_010 + in_011;
            stage_01_006 <= in_012 + in_013;
            stage_01_007 <= in_014 + in_015;
            stage_01_008 <= in_016 + in_017;
            stage_01_009 <= in_018 + in_019;
            stage_01_010 <= in_020 + in_021;
            stage_01_011 <= in_022 + in_023;
            stage_01_012 <= in_024 + in_025;
            stage_01_013 <= in_026 + in_027;
            stage_01_014 <= in_028 + in_029;
            stage_01_015 <= in_030 + in_031;
            stage_01_016 <= in_032 + in_033;
            stage_01_017 <= in_034 + in_035;
            stage_01_018 <= in_036 + in_037;
            stage_01_019 <= in_038 + in_039;
            stage_01_020 <= in_040 + in_041;
            stage_01_021 <= in_042 + in_043;
            stage_01_022 <= in_044 + in_045;
            stage_01_023 <= in_046 + in_047;
            stage_01_024 <= in_048 + in_049;
            stage_01_025 <= in_050 + in_051;
            stage_01_026 <= in_052 + in_053;
            stage_01_027 <= in_054 + in_055;
            stage_01_028 <= in_056 + in_057;
            stage_01_029 <= in_058 + in_059;
            stage_01_030 <= in_060 + in_061;
            stage_01_031 <= in_062 + in_063;
            stage_01_032 <= in_064 + in_065;
            stage_01_033 <= in_066 + in_067;
            stage_01_034 <= in_068 + in_069;
            stage_01_035 <= in_070 + in_071;
            stage_01_036 <= in_072 + in_073;
            stage_01_037 <= in_074 + in_075;
            stage_01_038 <= in_076 + in_077;
            stage_01_039 <= in_078 + in_079;
            stage_01_040 <= in_080 + in_081;
            stage_01_041 <= in_082 + in_083;
            stage_01_042 <= in_084 + in_085;
            stage_01_043 <= in_086 + in_087;
            stage_01_044 <= in_088 + in_089;
            stage_01_045 <= in_090 + in_091;
            stage_01_046 <= in_092 + in_093;
            stage_01_047 <= in_094 + in_095;
            stage_01_048 <= in_096 + in_097;
            stage_01_049 <= in_098 + in_099;
            stage_01_050 <= in_100 + in_101;
            stage_01_051 <= in_102 + in_103;
            stage_01_052 <= in_104 + in_105;
            stage_01_053 <= in_106 + in_107;
            stage_01_054 <= in_108 + in_109;
            stage_01_055 <= in_110 + in_111;
            stage_01_056 <= in_112 + in_113;
            stage_01_057 <= in_114 + in_115;
            stage_01_058 <= in_116 + in_117;
            stage_01_059 <= in_118 + in_119;
            stage_01_060 <= in_120 + in_121;
            stage_01_061 <= in_122 + in_123;
            stage_01_062 <= in_124 + in_125;
            stage_01_063 <= in_126 + in_127;
            -- Stage 3 of 8
            stage_02_000 <= stage_01_000 + stage_01_001;
            stage_02_001 <= stage_01_002 + stage_01_003;
            stage_02_002 <= stage_01_004 + stage_01_005;
            stage_02_003 <= stage_01_006 + stage_01_007;
            stage_02_004 <= stage_01_008 + stage_01_009;
            stage_02_005 <= stage_01_010 + stage_01_011;
            stage_02_006 <= stage_01_012 + stage_01_013;
            stage_02_007 <= stage_01_014 + stage_01_015;
            stage_02_008 <= stage_01_016 + stage_01_017;
            stage_02_009 <= stage_01_018 + stage_01_019;
            stage_02_010 <= stage_01_020 + stage_01_021;
            stage_02_011 <= stage_01_022 + stage_01_023;
            stage_02_012 <= stage_01_024 + stage_01_025;
            stage_02_013 <= stage_01_026 + stage_01_027;
            stage_02_014 <= stage_01_028 + stage_01_029;
            stage_02_015 <= stage_01_030 + stage_01_031;
            stage_02_016 <= stage_01_032 + stage_01_033;
            stage_02_017 <= stage_01_034 + stage_01_035;
            stage_02_018 <= stage_01_036 + stage_01_037;
            stage_02_019 <= stage_01_038 + stage_01_039;
            stage_02_020 <= stage_01_040 + stage_01_041;
            stage_02_021 <= stage_01_042 + stage_01_043;
            stage_02_022 <= stage_01_044 + stage_01_045;
            stage_02_023 <= stage_01_046 + stage_01_047;
            stage_02_024 <= stage_01_048 + stage_01_049;
            stage_02_025 <= stage_01_050 + stage_01_051;
            stage_02_026 <= stage_01_052 + stage_01_053;
            stage_02_027 <= stage_01_054 + stage_01_055;
            stage_02_028 <= stage_01_056 + stage_01_057;
            stage_02_029 <= stage_01_058 + stage_01_059;
            stage_02_030 <= stage_01_060 + stage_01_061;
            stage_02_031 <= stage_01_062 + stage_01_063;
            -- Stage 4 of 8
            stage_03_000 <= stage_02_000 + stage_02_001;
            stage_03_001 <= stage_02_002 + stage_02_003;
            stage_03_002 <= stage_02_004 + stage_02_005;
            stage_03_003 <= stage_02_006 + stage_02_007;
            stage_03_004 <= stage_02_008 + stage_02_009;
            stage_03_005 <= stage_02_010 + stage_02_011;
            stage_03_006 <= stage_02_012 + stage_02_013;
            stage_03_007 <= stage_02_014 + stage_02_015;
            stage_03_008 <= stage_02_016 + stage_02_017;
            stage_03_009 <= stage_02_018 + stage_02_019;
            stage_03_010 <= stage_02_020 + stage_02_021;
            stage_03_011 <= stage_02_022 + stage_02_023;
            stage_03_012 <= stage_02_024 + stage_02_025;
            stage_03_013 <= stage_02_026 + stage_02_027;
            stage_03_014 <= stage_02_028 + stage_02_029;
            stage_03_015 <= stage_02_030 + stage_02_031;
            -- Stage 5 of 8
            stage_04_000 <= stage_03_000 + stage_03_001;
            stage_04_001 <= stage_03_002 + stage_03_003;
            stage_04_002 <= stage_03_004 + stage_03_005;
            stage_04_003 <= stage_03_006 + stage_03_007;
            stage_04_004 <= stage_03_008 + stage_03_009;
            stage_04_005 <= stage_03_010 + stage_03_011;
            stage_04_006 <= stage_03_012 + stage_03_013;
            stage_04_007 <= stage_03_014 + stage_03_015;
            -- Stage 6 of 8
            stage_05_000 <= stage_04_000 + stage_04_001;
            stage_05_001 <= stage_04_002 + stage_04_003;
            stage_05_002 <= stage_04_004 + stage_04_005;
            stage_05_003 <= stage_04_006 + stage_04_007;
            -- Stage 7 of 8
            stage_06_000 <= stage_05_000 + stage_05_001;
            stage_06_001 <= stage_05_002 + stage_05_003;
            -- Stage 8 of 8
            stage_07_000 <= stage_06_000 + stage_06_001;
            o_mean       <= stage_07_000 (WID+7 downto 7);
        end if;
    end process;
end architecture arch_name;


