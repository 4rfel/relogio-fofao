from typing import Tuple, Union
from enum import Enum

from config import token_chars, whitespace, instruction_args


class LineType(Enum):
    INSTRUCTION = 0
    LABEL = 1


class LineParserError(Exception):
    row: int

    def __init__(self, message: str, row: int):
        self.row = row
        self.message = message
        super().__init__(message)


class LineParser:
    idx: int = 0
    line: str
    line_len: int
    is_comment: bool = False

    def __init__(self, line: str):
        self.line = line
        self.line_len = len(line)

        while self.idx < self.line_len:
            cur_char = self.line[self.idx]
            if cur_char not in whitespace:
                if cur_char in (
                    ";",
                    "\n",
                ):
                    self.is_comment = True
                    break
                break

            self.idx += 1
        else:
            self.is_comment = True

    def _skip_whitespace(self):
        while self.idx < self.line_len:
            cur_char = self.line[self.idx]
            if cur_char not in whitespace:
                return
            self.idx += 1

    def _get_token(
        self,
        *stop,
    ) -> str:
        if stop == ():
            stop = (
                " ",
                "\t",
            )

        s = ""

        while self.idx < self.line_len:
            cur_char = self.line[self.idx]
            # if cur_char in stop:
            #     if s == "":
            #         raise LineParserError(f'Found duplicate "{stop}" character', self.idx)
            #     return s

            if cur_char not in token_chars:
                if s == "":
                    raise LineParserError("Could not find token", self.idx)
                return s

                # f"Expected \"{stop}\""

            s += cur_char
            self.idx += 1
        return s
        # raise LineParserError("Expected word, reached end of line", self.idx)

    def _assert_whitespace(self):
        cur_char = self.line[self.idx]
        if cur_char not in whitespace:
            if cur_char == "\n":
                cur_char = "\\n"
            elif cur_char == "\t":
                cur_char = "\\t"
            raise LineParserError(f'Expected whitespace found "{cur_char}"', self.idx)

    def _match_whitespace(self):
        return self.idx < self.line_len and self.line[self.idx] in whitespace

    def _match_other(self, c):
        return self.idx < self.line_len and self.line[self.idx] in c

    def _assert_other(self, c):
        cur_char = self.line[self.idx]
        if cur_char not in c:
            if cur_char == "\n":
                cur_char = "\\n"
            elif cur_char == "\t":
                cur_char = "\\t"
            raise LineParserError(f'Expected "{c}" found "{cur_char}"', self.idx)

    def _assert_eol(self):
        while self.idx < self.line_len:
            cur_char = self.line[self.idx]

            if cur_char in whitespace:
                self.idx += 1
                continue
            if cur_char in "\n;":
                return  # Either EOL or comment
            raise LineParserError(f'Expected to find end of line found "{cur_char}"', self.idx)

    def parse(self) -> Tuple[LineType, Union[Tuple[str, Tuple[str]], str]]:
        if self.is_comment:
            raise LineParserError(
                "Line is comment. Check is_comment variable before calling parse", self.idx
            )

        ft = self._get_token()

        # Determine if token is jump point or instruction
        if self._match_other(":"):
            self.idx += 1
            self._assert_eol()
            return (LineType.LABEL, ft)

        args = []

        try:
            ia = instruction_args[ft]

        except KeyError as e:
            raise LineParserError(f'Instruction "{ft}" not recognized', self.idx) from e

        for c_arg in range(ia[0]):
            if c_arg == 0:
                self._assert_whitespace()
            else:
                self._skip_whitespace()
                self._assert_other(",")

            self.idx += 1
            self._skip_whitespace()
            args.append(self._get_token())  # arg1

        self._skip_whitespace()
        if ia[1]:  # Can be more than 1
            if self._match_other(","):  # Check if there is another argument
                self.idx += 1
                self._skip_whitespace()
                args.append(self._get_token())
            else:
                args.insert(0, args[0])  # Copy first argument to the front

        self._assert_eol()

        return (LineType.INSTRUCTION, (ft, args))

    def assemble(self, parsed=None) -> str:
        if parsed is None:
            parsed = self.parse()
