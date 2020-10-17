from typing import Dict, Tuple, FrozenSet
import string


instruction_size = 16  # bits

opcodes: Dict[str, str] = {
    "add": "00000",
    "sub": "00001",
    "and": "00010",
    "or": "00011",
    "not": "00100",
    "inc": "00101",
    "dec": "00110",
    "mov": "00111",
    "cmp": "01000",
    "nop": "01001",
    "ld": "01010",
    "st": "01011",
    "lea": "01100",
    "jmp": "01101",
    "jle": "01110",
    "jl": "01111",
    "jg": "10000",
    "jge": "10001",
    "je": "10010",
    "jne": "10011",
    "rst": "10100",
}

whitespace: Tuple[str] = (
    " ",
    "\t",
)


# in -> number of arguments | bool -> true if can have one extra argument
instruction_args: Dict[str, Tuple[int, bool]] = {
    "add": (2, True),
    "sub": (2, True),
    "and": (2, True),
    "or": (2, True),
    "cmp": (2, False),
    "ld": (2, False),
    "st": (2, False),
    "lea": (2, False),
    "not": (1, True),
    "inc": (1, True),
    "dec": (1, True),
    "jmp": (1, False),
    "jle": (1, False),
    "jl": (1, False),
    "jg": (1, False),
    "jge": (1, False),
    "je": (1, False),
    "jne": (1, False),
    "nop": (0, False),
    "rst": (0, False),
}

jumps: FrozenSet[str] = frozenset(
    (
        "jmp",
        "jle",
        "jl",
        "jg",
        "jge",
        "je",
        "jne",
    )
)

token_chars = frozenset(string.ascii_letters + string.digits + "$%_")
