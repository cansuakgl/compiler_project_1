Language Scanner
This repository contains a simple lexical scanner for a custom language, implemented using Flex.
Features
- Recognizes keywords (var, if, then, else, while, for, class, funk, etc.)
- Supports literals: numbers, floats, strings, true, false, null
- Identifies operators: arithmetic (+, -, *, /), comparison (>, <, >=, <=, ==, !=), logical (&&, ||)
- Recognizes punctuation: parentheses, braces, semicolons
- Prints each token type along with its lexeme
- Ignores comments and whitespace

Usage
Compile the scanner with Flex and GCC:
flex lexer.l
gcc lex.yy.c -o scanner -lfl
Run the scanner on a source file:
./scanner source.txt
Or read from standard input:
./scanner
