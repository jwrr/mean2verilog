module tb;

parameter NUM_INPUTS = 128;
parameter WID = 16;

reg           clk;
reg           rst;
reg [WID-1:0] in_array[0:NUM_INPUTS-1];

reg test_done;

mean128 u_mean128(
    .clk     (clk),
    .rst     (rst),
    .in_000  (in_array[0]),
    .in_001  (in_array[1]),
    .in_002  (in_array[2]),
    .in_003  (in_array[3]),
    .in_004  (in_array[4]),
    .in_005  (in_array[5]),
    .in_006  (in_array[6]),
    .in_007  (in_array[7]),
    .in_008  (in_array[8]),
    .in_009  (in_array[9]),
    .in_010  (in_array[10]),
    .in_011  (in_array[11]),
    .in_012  (in_array[12]),
    .in_013  (in_array[13]),
    .in_014  (in_array[14]),
    .in_015  (in_array[15]),
    .in_016  (in_array[16]),
    .in_017  (in_array[17]),
    .in_018  (in_array[18]),
    .in_019  (in_array[19]),
    .in_020  (in_array[20]),
    .in_021  (in_array[21]),
    .in_022  (in_array[22]),
    .in_023  (in_array[23]),
    .in_024  (in_array[24]),
    .in_025  (in_array[25]),
    .in_026  (in_array[26]),
    .in_027  (in_array[27]),
    .in_028  (in_array[28]),
    .in_029  (in_array[29]),
    .in_030  (in_array[30]),
    .in_031  (in_array[31]),
    .in_032  (in_array[32]),
    .in_033  (in_array[33]),
    .in_034  (in_array[34]),
    .in_035  (in_array[35]),
    .in_036  (in_array[36]),
    .in_037  (in_array[37]),
    .in_038  (in_array[38]),
    .in_039  (in_array[39]),
    .in_040  (in_array[40]),
    .in_041  (in_array[41]),
    .in_042  (in_array[42]),
    .in_043  (in_array[43]),
    .in_044  (in_array[44]),
    .in_045  (in_array[45]),
    .in_046  (in_array[46]),
    .in_047  (in_array[47]),
    .in_048  (in_array[48]),
    .in_049  (in_array[49]),
    .in_050  (in_array[50]),
    .in_051  (in_array[51]),
    .in_052  (in_array[52]),
    .in_053  (in_array[53]),
    .in_054  (in_array[54]),
    .in_055  (in_array[55]),
    .in_056  (in_array[56]),
    .in_057  (in_array[57]),
    .in_058  (in_array[58]),
    .in_059  (in_array[59]),
    .in_060  (in_array[60]),
    .in_061  (in_array[61]),
    .in_062  (in_array[62]),
    .in_063  (in_array[63]),
    .in_064  (in_array[64]),
    .in_065  (in_array[65]),
    .in_066  (in_array[66]),
    .in_067  (in_array[67]),
    .in_068  (in_array[68]),
    .in_069  (in_array[69]),
    .in_070  (in_array[70]),
    .in_071  (in_array[71]),
    .in_072  (in_array[72]),
    .in_073  (in_array[73]),
    .in_074  (in_array[74]),
    .in_075  (in_array[75]),
    .in_076  (in_array[76]),
    .in_077  (in_array[77]),
    .in_078  (in_array[78]),
    .in_079  (in_array[79]),
    .in_080  (in_array[80]),
    .in_081  (in_array[81]),
    .in_082  (in_array[82]),
    .in_083  (in_array[83]),
    .in_084  (in_array[84]),
    .in_085  (in_array[85]),
    .in_086  (in_array[86]),
    .in_087  (in_array[87]),
    .in_088  (in_array[88]),
    .in_089  (in_array[89]),
    .in_090  (in_array[90]),
    .in_091  (in_array[91]),
    .in_092  (in_array[92]),
    .in_093  (in_array[93]),
    .in_094  (in_array[94]),
    .in_095  (in_array[95]),
    .in_096  (in_array[96]),
    .in_097  (in_array[97]),
    .in_098  (in_array[98]),
    .in_099  (in_array[99]),
    .in_100  (in_array[100]),
    .in_101  (in_array[101]),
    .in_102  (in_array[102]),
    .in_103  (in_array[103]),
    .in_104  (in_array[104]),
    .in_105  (in_array[105]),
    .in_106  (in_array[106]),
    .in_107  (in_array[107]),
    .in_108  (in_array[108]),
    .in_109  (in_array[109]),
    .in_110  (in_array[110]),
    .in_111  (in_array[111]),
    .in_112  (in_array[112]),
    .in_113  (in_array[113]),
    .in_114  (in_array[114]),
    .in_115  (in_array[115]),
    .in_116  (in_array[116]),
    .in_117  (in_array[117]),
    .in_118  (in_array[118]),
    .in_119  (in_array[119]),
    .in_120  (in_array[120]),
    .in_121  (in_array[121]),
    .in_122  (in_array[122]),
    .in_123  (in_array[123]),
    .in_124  (in_array[124]),
    .in_125  (in_array[125]),
    .in_126  (in_array[126]),
    .in_127  (in_array[127])
);


// ============================================================================
// ============================================================================


initial
 begin
    $dumpfile("tb_mean.vcd");
    $dumpvars(0,tb);
 end


// ============================================================================
// ============================================================================


initial begin
    clk <= 0;
    #10;
    while (!test_done) begin
        #5 clk <= !clk;
    end
end


// ============================================================================
// ============================================================================


task clkn(input integer n);
begin
    repeat(n)
        @(posedge clk);
end
endtask


// ============================================================================
// ============================================================================


integer ii;
initial begin
    test_done <= 0;
    rst <= 0;
  
    for (ii = 0; ii < NUM_INPUTS; ii = ii + 1) begin
        in_array[ii] <= ii;  
    end

    $display($time);
    clkn(10);
    rst <= 1;
    clkn(10);
    rst <= 0;
    clkn(10);
  
    repeat(100) begin
        for (ii = 0; ii < NUM_INPUTS; ii = ii + 1) begin
            in_array[ii] <= in_array[ii] + 1;  
        end
        clkn(1);
    end
    
    test_done <= 1;
    clkn(100);

    $display($time);
    $finish();
end

endmodule

