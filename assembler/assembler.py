#!/usr/bin/env python3
import argparse
from typing import List, Dict, Tuple

from line_parser import LineParser, LineParserError, LineType
from config import opcodes, instruction_size, jumps

parser = argparse.ArgumentParser()
parser.add_argument("-o", "--output", help="output file", type=str, default="assembly.mif")
parser.add_argument("in_file", help="assembly file to be assembled", type=str)

args = parser.parse_args()

line_num = 0


class AssemblerError(LineParserError):
    col: int
    line: str

    def __init__(self, message, row, col, line):
        self.col = col
        self.line = line
        super().__init__(message, row)

    def __str__(self):
        s = ""
        s += "\033[31m"
        s += "┌\n│ ERROR \033[0m"
        s += f"Line {self.col}:{self.row}\n"  # Line X:X

        s += "\033[31m│\033[0m "
        s += f"{self.line[: self.row]}"
        s += "\033[41m"
        s += f"{self.line[self.row]}"
        s += "\033[0m"
        s += f"{self.line[self.row + 1 : -1]}"
        s += "\033[0m\n"

        s += "\033[31m│\033[0m\n"
        s += "\033[31m│\033[0m "
        s += self.message
        s += "\n\033[31m└\033[0m"
        return s

    @staticmethod
    def from_lpe(lpe: LineParserError, col, line):
        return AssemblerError(lpe.message, lpe.row, col, line)


def parse_num(n: str):
    rn = n[1:]
    if n[0] == "$" and rn.isdigit():
        pn = int(rn)
        if 0 <= pn <= 255:
            return "{0:b}".format(pn).zfill(8)
        raise RuntimeError(f"Undefined number {n}")
    raise RuntimeError(f"Undefined number {n}")


def parse_register(r: str):
    rl = r.lower()
    if rl[0] == "r" and rl[1].isdigit():
        r_num = int(rl[1])
        if 0 <= r_num <= 7:
            return "{0:b}".format(r_num).zfill(3)
    raise RuntimeError(f"Undefined register {r}")


with open(args.in_file) as in_f:
    n_instructions: int = 0
    instructions: List[str] = []
    missing_jumps: List[Tuple[int, str]] = []
    labels: Dict[str, int] = {}
    for line in in_f:
        line_num += 1
        try:
            lp = LineParser(line)
            # print(line_num, " --", line[:-1], " | comment:", lp.is_comment)

            if lp.is_comment:
                continue
            lt, tokens = lp.parse()
            if lt == LineType.LABEL:
                labels[tokens] = n_instructions
            else:
                instruction, arguments = tokens

                instruction_bin = opcodes[instruction]
                if instruction in ("ld", "lea"):
                    r0 = parse_register(arguments[0])
                    num = parse_num(arguments[1])
                    instruction_bin += r0 + num

                elif instruction == "st":
                    r0 = parse_register(arguments[1])
                    num = parse_num(arguments[0])
                    instruction_bin += r0 + num
                else:
                    if instruction in jumps:
                        missing_jumps.append((n_instructions, arguments[0]))
                        # print(instruction_bin, tokens)
                        n_instructions += 1
                        instructions.append(instruction_bin)
                        continue
                    registers = "".join((parse_register(r) for r in arguments))
                    instruction_bin = instruction_bin + registers

                instruction_bin = instruction_bin.ljust(instruction_size, "0")
                instructions.append(instruction_bin)
                # print(instruction_bin, tokens)
                n_instructions += 1
        except LineParserError as lpe:
            raise AssemblerError.from_lpe(lpe, line_num, line) from lpe

for x in missing_jumps:
    idx, label = x
    instructions[idx] += "{0:b}".format(labels[label]).zfill(10)

    instructions[idx] = instructions[idx].ljust(instruction_size, "0")


# print(
#     """DEPTH = 2048; -- The size of memory in words
# WIDTH = 16; -- The size of data in bits
# ADDRESS_RADIX = HEX; -- The radix for address values
# DATA_RADIX = BIN; -- The radix for data values
# CONTENT -- start of (address : data pairs)
# BEGIN"""
# )
s = """DEPTH = 1024; -- The size of memory in words
WIDTH = 16; -- The size of data in bits 
ADDRESS_RADIX = HEX; -- The radix for address values 
DATA_RADIX = BIN; -- The radix for data values 
CONTENT -- start of (address : data pairs) 
BEGIN
"""

for idx in range(len(instructions)):
    s += f"{hex(idx)[2:].zfill(3)} : {instructions[idx]};\n"
s += "END\n"

with open(args.output, "w") as f:
    f.write(s)
