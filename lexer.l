%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "token_types.h"

void printToken(int type, const char *lexeme) {
    printf("%-15s : %s\n", tokenTypeToString(type), lexeme);
}

%}

%option noyywrap

%%
[ \t\n]+            ;   
(\r\n|\n)           { printToken(T_NEWLINE, "\\n"); return T_NEWLINE; }
"#"[^#]*"#"         { /* ignore comment */ }

\"[^\"]*\"     { printToken(T_STRING, yytext); return T_STRING; }

"var"                { printToken(T_VAR, yytext); return T_VAR; }
"if"                 { printToken(T_IF, yytext); return T_IF; }
"then"               { printToken(T_THEN, yytext); return T_THEN; }
"else"               { printToken(T_ELSE, yytext); return T_ELSE; }

"while"              { printToken(T_WHILE, yytext); return T_WHILE; }
"for"                { printToken(T_FOR, yytext); return T_FOR; } 
"break"              { printToken(T_BREAK, yytext); return T_BREAK; } 
"continue"           { printToken(T_CONTINUE, yytext); return T_CONTINUE; } 
"return"             { printToken(T_RETURN, yytext); return T_RETURN; }   

"class"              { printToken(T_CLASS, yytext); return T_CLASS; }  
"funk"               { printToken(T_FUNK, yytext); return T_FUNK; }  

"true"               { printToken(T_TRUE, yytext); return T_TRUE; }
"false"              { printToken(T_FALSE, yytext); return T_FALSE; }
"null"               { printToken(T_NULL, yytext); return T_NULL; }

"and"                { printToken(T_AND, yytext); return T_AND; }
"or"                 { printToken(T_OR, yytext); return T_OR; }
"print"              { printToken(T_PRINT, yytext); return T_PRINT; }

[a-zA-Z_][a-zA-Z0-9_]*  { printToken(T_IDENTIFIER, yytext); return T_IDENTIFIER; }
[0-9]+\.[0-9]+          { printToken(T_FLOAT, yytext); return T_FLOAT; }
[0-9]+                  { printToken(T_NUMBER, yytext); return T_NUMBER; }

"+"                  { printToken(T_PLUS, yytext); return T_PLUS; }
"-"                  { printToken(T_MINUS, yytext); return T_MINUS; }
"*"                  { printToken(T_MULTIPLY, yytext); return T_MULTIPLY; }
"/"                  { printToken(T_DIVIDE, yytext); return T_DIVIDE; }

">="                 { printToken(T_GREATER_EQ, yytext); return T_GREATER_EQ; }
"<="                 { printToken(T_LESSER_EQ, yytext); return T_LESSER_EQ; }
">"                  { printToken(T_GREATER, yytext); return T_GREATER; }
"<"                  { printToken(T_LESSER, yytext); return T_LESSER; }

"!="                 { printToken(T_NOT_EQ, yytext); return T_NOT_EQ; }
"=="                 { printToken(T_EQ, yytext); return T_EQ; }
"="                  { printToken(T_ASSIGN, yytext); return T_ASSIGN; }

"&&"                 { printToken(T_AND, yytext); return T_AND; }
"||"                 { printToken(T_OR, yytext); return T_OR; }

"("                  { printToken(T_LPAREN, yytext); return T_LPAREN; }
")"                  { printToken(T_RPAREN, yytext); return T_RPAREN; }
"{"                  { printToken(T_LBRACE, yytext); return T_LBRACE; }
"}"                  { printToken(T_RBRACE, yytext); return T_RBRACE; }
";"                  { printToken(T_SEMICOLON, yytext); return T_SEMICOLON; }


.                    { printf("%-15s : %s (ERROR)\n", "T_UNKNOWN", yytext); }

<<EOF>>             { printf("%-15s : EOF\n", "T_EOF"); return T_EOF; }

%%

int main(int argc, char *argv[]) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");
        if (!file) {
            perror("Cannot open file");
            return 1;
        }
        yyin = file;
    } else {
        yyin = stdin;
    }
    
    int token;
    while ((token = yylex()) != T_EOF) {
    }
    
    if (argc > 1 && yyin != stdin) {
        fclose(yyin);
    }
    
    return 0;
}