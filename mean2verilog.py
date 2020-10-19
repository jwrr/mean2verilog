#!/usr/bin/python3

import sys

# ==============================================================================

class MeanTree:
    "Generate one mean average per clock."

    def __init__(self, num_inputs, signal_width):
        "Constructor"
        self.num_inputs = num_inputs
        self.signal_width = signal_width

    def remove_leading_spaces(self, s):
        num_leading_spaces = len(s) - len(s.lstrip())
        spaces = " " * (num_leading_spaces-1)
        find_str = "\n" + spaces
        s = s.replace(find_str, "\n")
        return s

    def __str__(self):
        "Standard print statement"

        # define module, parameters and ports
        verilog = """
            module mean{}
            #(parameter WID = {}) (
                input  clk,
                input  rst,\n""".format(self.num_inputs, self.signal_width)

        for i in range(self.num_inputs):
            i_str = str(i).rjust(3, '0')
            verilog += "                input  [WID-1:0] in_{},\n".format(i_str)
        verilog += "                output reg [WID-1:0] o_mean\n"
        verilog += "            );\n\n"

        num_stages = self.num_inputs.bit_length()
        w = -1

        # Declare signals output from each stage of adders
        for stage in range(1, num_stages):
            verilog += "                // Stage {} of {}\n".format(stage+1, num_stages)
            num_values_in_stage = pow(2, (num_stages-stage-1))
            w += 1
            for i in range(num_values_in_stage):
                op = "" if (w<0) else "+"
                verilog += "                reg  [WID{}{}:0] stage_{:02d}_{:03d};\n".format(op, w, stage, i)
        

        verilog += "\n// begin module\n\n"
        verilog += "                always@(posedge clk or posedge rst) begin\n"
        verilog += "                    if (rst) begin\n"

        for stage in range(1, num_stages):
            verilog += "                        // Stage {} of {}\n".format(stage+1, num_stages)
            num_values_in_stage = pow(2, (num_stages-stage-1))
            w += 1
            for i in range(num_values_in_stage):
                op = "" if (w<0) else "+"
                verilog += "                        stage_{:02d}_{:03d} <= 'h0;\n".format(stage, i)
        verilog += "                        o_mean       <= 'h0;\n"
        
        verilog += "                    end else begin // posedge clk\n"
        for stage in range(1, num_stages):
            verilog += "                        // Stage {} of {}\n".format(stage+1, num_stages)
            num_values_in_stage = pow(2, (num_stages-stage-1))
            w += 1
            for i in range(num_values_in_stage):
                if stage == 1:
                  verilog += "                        stage_{:02d}_{:03d} <= in_{:03d} + in_{:03d};\n".format(stage, i, 2*i, 2*i+1)
                else:
                  verilog += "                        stage_{:02d}_{:03d} <= stage_{:02d}_{:03d} + stage_{:02d}_{:03d};\n".format(stage, i, stage-1, 2*i, stage-1, 2*i+1)
        verilog += "                        o_mean       <= stage_{:02d}_{:03d} [WID+{}:{}];\n".format(num_stages-1, 0, num_stages-1, num_stages-1)
        
        verilog += "                    end\n"
        verilog += "                end\n"
        verilog += "            endmodule\n"

        

        verilog = self.remove_leading_spaces(verilog)

        return verilog


# ==============================================================================


# print ('Num args:', len(sys.argv), 'arguments.')
# print ('Args:', str(sys.argv))

num_inputs = 8;
if len(sys.argv) > 1:
    num_inputs = int(sys.argv[1])
print("// num_inputs = {};\n".format(num_inputs))

mean_avg = MeanTree(num_inputs, 16)

print(mean_avg)




