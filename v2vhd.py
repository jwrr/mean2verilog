#!/usr/bin/python3

import sys
import re

class v2vhd:
    "Convert Verilog to VHDL"

    vector_type = "unsigned" # "std_logic_vector" 
    end_stack = []

    def __init__(self, v_file, vhdl_file):
        "Constructor"
        self.v_file = v_file
        self.vhdl_file = vhdl_file

    def slurp(self):
        "Slurf file into list of lines"
        lines = []
        with open(self.v_file) as infile:
            for line in infile:
                lines.append(line)
        return lines

    def get_indent(self, line):
        num_leading_spaces = len(line) - len(line.lstrip())
        indent_str = ""
        if (num_leading_spaces > 0):
            indent_str = line[0 : num_leading_spaces]
        return indent_str
    
    def read(self):
        self.lines = self.slurp()

    def convert_comments(self, all_lines):
        for i, line in enumerate(all_lines):
            if "//" in line:
                all_lines[i] = line.replace("//", "--", 1)

    def convert_always(self, all_lines):
        for i, line in enumerate(all_lines):
            if "always@" in line:
                all_lines[i] = all_lines[i].replace("always@", "process", 1)
                all_lines[i] = all_lines[i].replace("posedge ", "")
                all_lines[i] = all_lines[i].replace("negedge ", "")
                all_lines[i] = all_lines[i].replace(" or ", ", ")

    def convert_begin(self, all_lines):
        for i, line in enumerate(all_lines):
            if "begin" in line:
                if ("end else begin" in line) and ("posedge" in line):
                    all_lines[i] = all_lines[i].rstrip()
                    all_lines[i] = all_lines[i].replace("end else begin -- posedge ", "elsif rising_edge(", 1)
                    all_lines[i] += ") then\n"
                elif "if" in line:
                    all_lines[i] = all_lines[i].replace("begin", "then", 1)
                elif "else" in line:
                    all_lines[i] = all_lines[i].replace(" begin", "", 1)

    def convert_reg(self, all_lines):
        for i, line in enumerate(all_lines):
            if " reg " in line:
                indent = self.get_indent(line)
                all_lines[i] = all_lines[i].replace("reg", "signal", 1)
                fields = all_lines[i].split()
                vec_range = fields[1]
                if '[' not in vec_range:
                    vec_range = ""
                    all_lines[i] = all_lines[i].replace(";", " : std_logic;")
                    
                else:
                    vec_range = vec_range.replace("[", self.vector_type + "(", 1)
                    vec_range = vec_range.replace(":", " downto ", 1)
                    vec_range = vec_range.replace("]", ")", 1)
                    del fields[1]
                    all_lines[i] = indent + " ".join(fields) + "\n"
                    all_lines[i] = all_lines[i].replace(";", " : " + vec_range + ";")
               
    def convert_io(self, all_lines):
        for i, line in enumerate(all_lines):
            if (" input " in line) or (" output " in line):
                indent = self.get_indent(line)
                all_lines[i] = all_lines[i].replace("input", "in", 1)
                all_lines[i] = all_lines[i].replace("input", "in", 1)
                fields = all_lines[i].split()
                direction = fields[0]
                if direction == "input":
                    direction = "in  "
                if direction == "output":
                    direction = "out "
                vec_range = fields[1]
                is_reg = vec_range == "reg"
                if is_reg:
                    vec_range = fields[2]
                if '[' not in vec_range:
                    port_name = fields[2] if is_reg else fields[1] 
                    terminator = "\n"
                    if ',' in port_name:
                        terminator = ";\n"
                        port_name = port_name.replace(",", "")
                    all_lines[i] = indent + port_name + "     : " + direction + " std_logic" + terminator
                else:
                    port_name = fields[3] if is_reg else fields[2]
                    terminator = "\n"
                    if ',' in port_name:
                        terminator = ";\n"
                        port_name = port_name.replace(",", "")
                    vec_range = vec_range.replace("[", self.vector_type + "(", 1)
                    vec_range = vec_range.replace(":", " downto ", 1)
                    vec_range = vec_range.replace("]", ")", 1)
                    all_lines[i] = indent + port_name + "     : " + direction + " " + vec_range + terminator
               
    def convert_parameter(self, all_lines):
        for i, line in enumerate(all_lines):
            if "parameter" in line:
                if '#' in line:
                    all_lines[i] = all_lines[i].replace("#(parameter ", "generic (", 1)
                else:
                    all_lines[i] = all_lines[i].replace("parameter ", "", 1)
                all_lines[i] = all_lines[i].replace("=", " : integer :=", 1)
                all_lines[i] = all_lines[i].replace(",", ";", 1)
                all_lines[i] = all_lines[i].replace(") (", ");\nport (", 1)

    def convert_endmodule(self, all_lines):
        for i, line in enumerate(all_lines):       
            if "endmodule" in line:
                all_lines[i] = all_lines[i].replace("endmodule", "end architecture arch_name;", 1)

    def convert_module(self, all_lines):
        for i, line in enumerate(all_lines):
            if "module" in line:
                line = line.strip()
                fields = line.split()
                if fields[0] == "module":
                    self.module_name = fields[1]
                    entity = "library ieee;\nuse ieee.std_logic_1164.all;\nuse ieee.numeric_std.all;\nuse ieee.math_real.all;\nlibrary work;\n\nentity"
                    line = line.rstrip()
                    all_lines[i] = line.replace("module", entity, 1) + " is\n"


    def convert_end(self, all_lines):
        push_list = ["always", "if", "else", "elsif", "while", "repeat"]
        for i, line in enumerate(all_lines):
            
            if "begin" in line:
                if "always" in line:
                    self.end_stack.append("process")
                if " if " in line:
                    self.end_stack.append("if")
                if " else " in line and not ("posedge" in line):
                    self.end_stack.append("if")
                if " while " in line:
                    self.end_stack.append("loop")
                if " for " in line:
                    self.end_stack.append("loop")
                if " repeat " in line:
                    self.end_stack.append("loop")
                
            if " end" in line and "posedge" not in line:
                end_type = self.end_stack.pop()
                all_lines[i] = all_lines[i].replace("end", "end " + end_type + ";", 1)
                    
    def convert_arch(self, all_lines):
        always_assign_cnt = 0
        for i, line in enumerate(all_lines):
            line = line.strip()
            if line == ");":
                arch = ");\nend " + self.module_name + ";\n\narchitecture arch_name of " + self.module_name + " is"
                all_lines[i] = all_lines[i].replace(");", arch, 1)
            if "always" in line or "assign" in line:
                if always_assign_cnt == 0:
                    all_lines[i] = "begin -- architecture\n\n" + all_lines[i]
                always_assign_cnt += 1
                     

    def convert_others(self, all_lines):
        others = "(others => '0');"
        for i, line in enumerate(all_lines):
            if "'h0;" in line:
                all_lines[i] = all_lines[i].replace("'h0;", others, 1)
            if "0;" in line:
                all_lines[i] = all_lines[i].replace("0;", others, 1)


    def convert_slice(self, all_lines):
        for i, line in enumerate(all_lines):
            fields = all_lines[i].split()
            for f in fields:
                if '[' in f:
                    new_f = f.replace('[', '(', 1)
                    new_f = new_f.replace(':', " downto ", 1)
                    new_f = new_f.replace(']', ')', 1)
                    all_lines[i] = all_lines[i].replace(f, new_f)

    def convert(self):
        self.convert_comments(self.lines)
        self.convert_endmodule(self.lines)
        self.convert_module(self.lines)
        self.convert_arch(self.lines)
        self.convert_end(self.lines)
        self.convert_always(self.lines)
        self.convert_begin(self.lines)
        self.convert_io(self.lines)
        self.convert_reg(self.lines)
        self.convert_parameter(self.lines)
        self.convert_others(self.lines)
        self.convert_slice(self.lines)
        

    def __str__(self):
        "Standard print statement"
        self_str = ""
        for line in self.lines:
            self_str += line
        return self_str


# =============================================================================

if len(sys.argv) < 3:
    print("Error: Missing args. ex: {} infile.v output.vhd\n\n".format(sys.argv[0]))

verilog_filename = sys.argv[1]
vhdl_filename = sys.argv[2]

v2vhd_converter = v2vhd(verilog_filename, vhdl_filename)
v2vhd_converter.read()
v2vhd_converter.convert()

print(v2vhd_converter)





# print ('Num args:', len(sys.argv), 'arguments.')
# print ('Args:', str(sys.argv))


