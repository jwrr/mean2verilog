
module mean_avg
#(parameter WID = 16)
(
    input clk,
    input rst,
    input  [WID-1:0] in_000,
    input  [WID-1:0] in_001,
    input  [WID-1:0] in_002,
    input  [WID-1:0] in_003,
    input  [WID-1:0] in_004,
    input  [WID-1:0] in_005,
    input  [WID-1:0] in_006,
    input  [WID-1:0] in_007,
    output [WID-1:0] o_mean
);

    // Stage 2 of 4
    reg  [WID+0:0] stage_01_000;
    reg  [WID+0:0] stage_01_001;
    reg  [WID+0:0] stage_01_002;
    reg  [WID+0:0] stage_01_003;
    // Stage 3 of 4
    reg  [WID+1:0] stage_02_000;
    reg  [WID+1:0] stage_02_001;
    // Stage 4 of 4
    reg  [WID+2:0] stage_03_000;
    reg  [WID-1:0] o_mean;

    always@(posedge clk or posedge rst) begin
        if (rst) begin
            // Stage 2 of 4
            stage_01_000 <= 'h0;
            stage_01_001 <= 'h0;
            stage_01_002 <= 'h0;
            stage_01_003 <= 'h0;
            // Stage 3 of 4
            stage_02_000 <= 'h0;
            stage_02_001 <= 'h0;
            // Stage 4 of 4
            stage_03_000 <= 'h0;
            o_mean       <= 'h0;
        end
        else begin
            // Stage 2 of 4
            stage_01_000 <= in_000 + in_001;
            stage_01_001 <= in_002 + in_003;
            stage_01_002 <= in_004 + in_005;
            stage_01_003 <= in_006 + in_007;
            // Stage 3 of 4
            stage_02_000 <= stage_01_000 + stage_01_001;
            stage_02_001 <= stage_01_002 + stage_01_003;
            // Stage 4 of 4
            stage_03_000 <= stage_02_000 + stage_02_001;
            o_mean       <= stage_03_000[WID+3:3];
        end
    end
endmodule

