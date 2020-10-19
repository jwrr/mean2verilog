// num_inputs = 128;


module mean128
#(parameter WID = 16) (
    input  clk,
    input  rst,
    input  [WID-1:0] in_000,
    input  [WID-1:0] in_001,
    input  [WID-1:0] in_002,
    input  [WID-1:0] in_003,
    input  [WID-1:0] in_004,
    input  [WID-1:0] in_005,
    input  [WID-1:0] in_006,
    input  [WID-1:0] in_007,
    input  [WID-1:0] in_008,
    input  [WID-1:0] in_009,
    input  [WID-1:0] in_010,
    input  [WID-1:0] in_011,
    input  [WID-1:0] in_012,
    input  [WID-1:0] in_013,
    input  [WID-1:0] in_014,
    input  [WID-1:0] in_015,
    input  [WID-1:0] in_016,
    input  [WID-1:0] in_017,
    input  [WID-1:0] in_018,
    input  [WID-1:0] in_019,
    input  [WID-1:0] in_020,
    input  [WID-1:0] in_021,
    input  [WID-1:0] in_022,
    input  [WID-1:0] in_023,
    input  [WID-1:0] in_024,
    input  [WID-1:0] in_025,
    input  [WID-1:0] in_026,
    input  [WID-1:0] in_027,
    input  [WID-1:0] in_028,
    input  [WID-1:0] in_029,
    input  [WID-1:0] in_030,
    input  [WID-1:0] in_031,
    input  [WID-1:0] in_032,
    input  [WID-1:0] in_033,
    input  [WID-1:0] in_034,
    input  [WID-1:0] in_035,
    input  [WID-1:0] in_036,
    input  [WID-1:0] in_037,
    input  [WID-1:0] in_038,
    input  [WID-1:0] in_039,
    input  [WID-1:0] in_040,
    input  [WID-1:0] in_041,
    input  [WID-1:0] in_042,
    input  [WID-1:0] in_043,
    input  [WID-1:0] in_044,
    input  [WID-1:0] in_045,
    input  [WID-1:0] in_046,
    input  [WID-1:0] in_047,
    input  [WID-1:0] in_048,
    input  [WID-1:0] in_049,
    input  [WID-1:0] in_050,
    input  [WID-1:0] in_051,
    input  [WID-1:0] in_052,
    input  [WID-1:0] in_053,
    input  [WID-1:0] in_054,
    input  [WID-1:0] in_055,
    input  [WID-1:0] in_056,
    input  [WID-1:0] in_057,
    input  [WID-1:0] in_058,
    input  [WID-1:0] in_059,
    input  [WID-1:0] in_060,
    input  [WID-1:0] in_061,
    input  [WID-1:0] in_062,
    input  [WID-1:0] in_063,
    input  [WID-1:0] in_064,
    input  [WID-1:0] in_065,
    input  [WID-1:0] in_066,
    input  [WID-1:0] in_067,
    input  [WID-1:0] in_068,
    input  [WID-1:0] in_069,
    input  [WID-1:0] in_070,
    input  [WID-1:0] in_071,
    input  [WID-1:0] in_072,
    input  [WID-1:0] in_073,
    input  [WID-1:0] in_074,
    input  [WID-1:0] in_075,
    input  [WID-1:0] in_076,
    input  [WID-1:0] in_077,
    input  [WID-1:0] in_078,
    input  [WID-1:0] in_079,
    input  [WID-1:0] in_080,
    input  [WID-1:0] in_081,
    input  [WID-1:0] in_082,
    input  [WID-1:0] in_083,
    input  [WID-1:0] in_084,
    input  [WID-1:0] in_085,
    input  [WID-1:0] in_086,
    input  [WID-1:0] in_087,
    input  [WID-1:0] in_088,
    input  [WID-1:0] in_089,
    input  [WID-1:0] in_090,
    input  [WID-1:0] in_091,
    input  [WID-1:0] in_092,
    input  [WID-1:0] in_093,
    input  [WID-1:0] in_094,
    input  [WID-1:0] in_095,
    input  [WID-1:0] in_096,
    input  [WID-1:0] in_097,
    input  [WID-1:0] in_098,
    input  [WID-1:0] in_099,
    input  [WID-1:0] in_100,
    input  [WID-1:0] in_101,
    input  [WID-1:0] in_102,
    input  [WID-1:0] in_103,
    input  [WID-1:0] in_104,
    input  [WID-1:0] in_105,
    input  [WID-1:0] in_106,
    input  [WID-1:0] in_107,
    input  [WID-1:0] in_108,
    input  [WID-1:0] in_109,
    input  [WID-1:0] in_110,
    input  [WID-1:0] in_111,
    input  [WID-1:0] in_112,
    input  [WID-1:0] in_113,
    input  [WID-1:0] in_114,
    input  [WID-1:0] in_115,
    input  [WID-1:0] in_116,
    input  [WID-1:0] in_117,
    input  [WID-1:0] in_118,
    input  [WID-1:0] in_119,
    input  [WID-1:0] in_120,
    input  [WID-1:0] in_121,
    input  [WID-1:0] in_122,
    input  [WID-1:0] in_123,
    input  [WID-1:0] in_124,
    input  [WID-1:0] in_125,
    input  [WID-1:0] in_126,
    input  [WID-1:0] in_127,
    output reg [WID-1:0] o_mean
);

    // Stage 2 of 8
    reg  [WID+0:0] stage_01_000;
    reg  [WID+0:0] stage_01_001;
    reg  [WID+0:0] stage_01_002;
    reg  [WID+0:0] stage_01_003;
    reg  [WID+0:0] stage_01_004;
    reg  [WID+0:0] stage_01_005;
    reg  [WID+0:0] stage_01_006;
    reg  [WID+0:0] stage_01_007;
    reg  [WID+0:0] stage_01_008;
    reg  [WID+0:0] stage_01_009;
    reg  [WID+0:0] stage_01_010;
    reg  [WID+0:0] stage_01_011;
    reg  [WID+0:0] stage_01_012;
    reg  [WID+0:0] stage_01_013;
    reg  [WID+0:0] stage_01_014;
    reg  [WID+0:0] stage_01_015;
    reg  [WID+0:0] stage_01_016;
    reg  [WID+0:0] stage_01_017;
    reg  [WID+0:0] stage_01_018;
    reg  [WID+0:0] stage_01_019;
    reg  [WID+0:0] stage_01_020;
    reg  [WID+0:0] stage_01_021;
    reg  [WID+0:0] stage_01_022;
    reg  [WID+0:0] stage_01_023;
    reg  [WID+0:0] stage_01_024;
    reg  [WID+0:0] stage_01_025;
    reg  [WID+0:0] stage_01_026;
    reg  [WID+0:0] stage_01_027;
    reg  [WID+0:0] stage_01_028;
    reg  [WID+0:0] stage_01_029;
    reg  [WID+0:0] stage_01_030;
    reg  [WID+0:0] stage_01_031;
    reg  [WID+0:0] stage_01_032;
    reg  [WID+0:0] stage_01_033;
    reg  [WID+0:0] stage_01_034;
    reg  [WID+0:0] stage_01_035;
    reg  [WID+0:0] stage_01_036;
    reg  [WID+0:0] stage_01_037;
    reg  [WID+0:0] stage_01_038;
    reg  [WID+0:0] stage_01_039;
    reg  [WID+0:0] stage_01_040;
    reg  [WID+0:0] stage_01_041;
    reg  [WID+0:0] stage_01_042;
    reg  [WID+0:0] stage_01_043;
    reg  [WID+0:0] stage_01_044;
    reg  [WID+0:0] stage_01_045;
    reg  [WID+0:0] stage_01_046;
    reg  [WID+0:0] stage_01_047;
    reg  [WID+0:0] stage_01_048;
    reg  [WID+0:0] stage_01_049;
    reg  [WID+0:0] stage_01_050;
    reg  [WID+0:0] stage_01_051;
    reg  [WID+0:0] stage_01_052;
    reg  [WID+0:0] stage_01_053;
    reg  [WID+0:0] stage_01_054;
    reg  [WID+0:0] stage_01_055;
    reg  [WID+0:0] stage_01_056;
    reg  [WID+0:0] stage_01_057;
    reg  [WID+0:0] stage_01_058;
    reg  [WID+0:0] stage_01_059;
    reg  [WID+0:0] stage_01_060;
    reg  [WID+0:0] stage_01_061;
    reg  [WID+0:0] stage_01_062;
    reg  [WID+0:0] stage_01_063;
    // Stage 3 of 8
    reg  [WID+1:0] stage_02_000;
    reg  [WID+1:0] stage_02_001;
    reg  [WID+1:0] stage_02_002;
    reg  [WID+1:0] stage_02_003;
    reg  [WID+1:0] stage_02_004;
    reg  [WID+1:0] stage_02_005;
    reg  [WID+1:0] stage_02_006;
    reg  [WID+1:0] stage_02_007;
    reg  [WID+1:0] stage_02_008;
    reg  [WID+1:0] stage_02_009;
    reg  [WID+1:0] stage_02_010;
    reg  [WID+1:0] stage_02_011;
    reg  [WID+1:0] stage_02_012;
    reg  [WID+1:0] stage_02_013;
    reg  [WID+1:0] stage_02_014;
    reg  [WID+1:0] stage_02_015;
    reg  [WID+1:0] stage_02_016;
    reg  [WID+1:0] stage_02_017;
    reg  [WID+1:0] stage_02_018;
    reg  [WID+1:0] stage_02_019;
    reg  [WID+1:0] stage_02_020;
    reg  [WID+1:0] stage_02_021;
    reg  [WID+1:0] stage_02_022;
    reg  [WID+1:0] stage_02_023;
    reg  [WID+1:0] stage_02_024;
    reg  [WID+1:0] stage_02_025;
    reg  [WID+1:0] stage_02_026;
    reg  [WID+1:0] stage_02_027;
    reg  [WID+1:0] stage_02_028;
    reg  [WID+1:0] stage_02_029;
    reg  [WID+1:0] stage_02_030;
    reg  [WID+1:0] stage_02_031;
    // Stage 4 of 8
    reg  [WID+2:0] stage_03_000;
    reg  [WID+2:0] stage_03_001;
    reg  [WID+2:0] stage_03_002;
    reg  [WID+2:0] stage_03_003;
    reg  [WID+2:0] stage_03_004;
    reg  [WID+2:0] stage_03_005;
    reg  [WID+2:0] stage_03_006;
    reg  [WID+2:0] stage_03_007;
    reg  [WID+2:0] stage_03_008;
    reg  [WID+2:0] stage_03_009;
    reg  [WID+2:0] stage_03_010;
    reg  [WID+2:0] stage_03_011;
    reg  [WID+2:0] stage_03_012;
    reg  [WID+2:0] stage_03_013;
    reg  [WID+2:0] stage_03_014;
    reg  [WID+2:0] stage_03_015;
    // Stage 5 of 8
    reg  [WID+3:0] stage_04_000;
    reg  [WID+3:0] stage_04_001;
    reg  [WID+3:0] stage_04_002;
    reg  [WID+3:0] stage_04_003;
    reg  [WID+3:0] stage_04_004;
    reg  [WID+3:0] stage_04_005;
    reg  [WID+3:0] stage_04_006;
    reg  [WID+3:0] stage_04_007;
    // Stage 6 of 8
    reg  [WID+4:0] stage_05_000;
    reg  [WID+4:0] stage_05_001;
    reg  [WID+4:0] stage_05_002;
    reg  [WID+4:0] stage_05_003;
    // Stage 7 of 8
    reg  [WID+5:0] stage_06_000;
    reg  [WID+5:0] stage_06_001;
    // Stage 8 of 8
    reg  [WID+6:0] stage_07_000;

// begin module

    always@(posedge clk or posedge rst) begin
        if (rst) begin
            // Stage 2 of 8
            stage_01_000 <= 'h0;
            stage_01_001 <= 'h0;
            stage_01_002 <= 'h0;
            stage_01_003 <= 'h0;
            stage_01_004 <= 'h0;
            stage_01_005 <= 'h0;
            stage_01_006 <= 'h0;
            stage_01_007 <= 'h0;
            stage_01_008 <= 'h0;
            stage_01_009 <= 'h0;
            stage_01_010 <= 'h0;
            stage_01_011 <= 'h0;
            stage_01_012 <= 'h0;
            stage_01_013 <= 'h0;
            stage_01_014 <= 'h0;
            stage_01_015 <= 'h0;
            stage_01_016 <= 'h0;
            stage_01_017 <= 'h0;
            stage_01_018 <= 'h0;
            stage_01_019 <= 'h0;
            stage_01_020 <= 'h0;
            stage_01_021 <= 'h0;
            stage_01_022 <= 'h0;
            stage_01_023 <= 'h0;
            stage_01_024 <= 'h0;
            stage_01_025 <= 'h0;
            stage_01_026 <= 'h0;
            stage_01_027 <= 'h0;
            stage_01_028 <= 'h0;
            stage_01_029 <= 'h0;
            stage_01_030 <= 'h0;
            stage_01_031 <= 'h0;
            stage_01_032 <= 'h0;
            stage_01_033 <= 'h0;
            stage_01_034 <= 'h0;
            stage_01_035 <= 'h0;
            stage_01_036 <= 'h0;
            stage_01_037 <= 'h0;
            stage_01_038 <= 'h0;
            stage_01_039 <= 'h0;
            stage_01_040 <= 'h0;
            stage_01_041 <= 'h0;
            stage_01_042 <= 'h0;
            stage_01_043 <= 'h0;
            stage_01_044 <= 'h0;
            stage_01_045 <= 'h0;
            stage_01_046 <= 'h0;
            stage_01_047 <= 'h0;
            stage_01_048 <= 'h0;
            stage_01_049 <= 'h0;
            stage_01_050 <= 'h0;
            stage_01_051 <= 'h0;
            stage_01_052 <= 'h0;
            stage_01_053 <= 'h0;
            stage_01_054 <= 'h0;
            stage_01_055 <= 'h0;
            stage_01_056 <= 'h0;
            stage_01_057 <= 'h0;
            stage_01_058 <= 'h0;
            stage_01_059 <= 'h0;
            stage_01_060 <= 'h0;
            stage_01_061 <= 'h0;
            stage_01_062 <= 'h0;
            stage_01_063 <= 'h0;
            // Stage 3 of 8
            stage_02_000 <= 'h0;
            stage_02_001 <= 'h0;
            stage_02_002 <= 'h0;
            stage_02_003 <= 'h0;
            stage_02_004 <= 'h0;
            stage_02_005 <= 'h0;
            stage_02_006 <= 'h0;
            stage_02_007 <= 'h0;
            stage_02_008 <= 'h0;
            stage_02_009 <= 'h0;
            stage_02_010 <= 'h0;
            stage_02_011 <= 'h0;
            stage_02_012 <= 'h0;
            stage_02_013 <= 'h0;
            stage_02_014 <= 'h0;
            stage_02_015 <= 'h0;
            stage_02_016 <= 'h0;
            stage_02_017 <= 'h0;
            stage_02_018 <= 'h0;
            stage_02_019 <= 'h0;
            stage_02_020 <= 'h0;
            stage_02_021 <= 'h0;
            stage_02_022 <= 'h0;
            stage_02_023 <= 'h0;
            stage_02_024 <= 'h0;
            stage_02_025 <= 'h0;
            stage_02_026 <= 'h0;
            stage_02_027 <= 'h0;
            stage_02_028 <= 'h0;
            stage_02_029 <= 'h0;
            stage_02_030 <= 'h0;
            stage_02_031 <= 'h0;
            // Stage 4 of 8
            stage_03_000 <= 'h0;
            stage_03_001 <= 'h0;
            stage_03_002 <= 'h0;
            stage_03_003 <= 'h0;
            stage_03_004 <= 'h0;
            stage_03_005 <= 'h0;
            stage_03_006 <= 'h0;
            stage_03_007 <= 'h0;
            stage_03_008 <= 'h0;
            stage_03_009 <= 'h0;
            stage_03_010 <= 'h0;
            stage_03_011 <= 'h0;
            stage_03_012 <= 'h0;
            stage_03_013 <= 'h0;
            stage_03_014 <= 'h0;
            stage_03_015 <= 'h0;
            // Stage 5 of 8
            stage_04_000 <= 'h0;
            stage_04_001 <= 'h0;
            stage_04_002 <= 'h0;
            stage_04_003 <= 'h0;
            stage_04_004 <= 'h0;
            stage_04_005 <= 'h0;
            stage_04_006 <= 'h0;
            stage_04_007 <= 'h0;
            // Stage 6 of 8
            stage_05_000 <= 'h0;
            stage_05_001 <= 'h0;
            stage_05_002 <= 'h0;
            stage_05_003 <= 'h0;
            // Stage 7 of 8
            stage_06_000 <= 'h0;
            stage_06_001 <= 'h0;
            // Stage 8 of 8
            stage_07_000 <= 'h0;
            o_mean       <= 'h0;
        end else begin // posedge clk
            // Stage 2 of 8
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
            // Stage 3 of 8
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
            // Stage 4 of 8
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
            // Stage 5 of 8
            stage_04_000 <= stage_03_000 + stage_03_001;
            stage_04_001 <= stage_03_002 + stage_03_003;
            stage_04_002 <= stage_03_004 + stage_03_005;
            stage_04_003 <= stage_03_006 + stage_03_007;
            stage_04_004 <= stage_03_008 + stage_03_009;
            stage_04_005 <= stage_03_010 + stage_03_011;
            stage_04_006 <= stage_03_012 + stage_03_013;
            stage_04_007 <= stage_03_014 + stage_03_015;
            // Stage 6 of 8
            stage_05_000 <= stage_04_000 + stage_04_001;
            stage_05_001 <= stage_04_002 + stage_04_003;
            stage_05_002 <= stage_04_004 + stage_04_005;
            stage_05_003 <= stage_04_006 + stage_04_007;
            // Stage 7 of 8
            stage_06_000 <= stage_05_000 + stage_05_001;
            stage_06_001 <= stage_05_002 + stage_05_003;
            // Stage 8 of 8
            stage_07_000 <= stage_06_000 + stage_06_001;
            o_mean       <= stage_07_000 [WID+7:7];
        end
    end
endmodule

