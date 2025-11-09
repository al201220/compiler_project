%{
#include <stdio.h>
void print_header() {
    printf("------------------------------------------\n");
    printf("Line | Token Type       | Lexeme\n");
    printf("------------------------------------------\n");
}
%}

%%
"int"           { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"float"         { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"char"          { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"double"        { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"if"            { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"else"          { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"for"           { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"while"         { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"return"        { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"void"          { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"bool"          { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"true"          { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"false"         { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"switch"        { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }
"case"          { printf("%-4d | %-15s | %s\n", yylineno, "KEYWORD", yytext); }

"="             { printf("%-4d | %-15s | %s\n", yylineno, "ASSIGN_OP", yytext); }
"=="            { printf("%-4d | %-15s | %s\n", yylineno, "REL_OP", yytext); }
"++"            { printf("%-4d | %-15s | %s\n", yylineno, "INC_OP", yytext); }
"+"             { printf("%-4d | %-15s | %s\n", yylineno, "ADD_OP", yytext); }
"-"             { printf("%-4d | %-15s | %s\n", yylineno, "SUB_OP", yytext); }
"*"             { printf("%-4d | %-15s | %s\n", yylineno, "MUL_OP", yytext); }

";"             { printf("%-4d | %-15s | %s\n", yylineno, "PUNCTUATION", yytext); }
","             { printf("%-4d | %-15s | %s\n", yylineno, "PUNCTUATION", yytext); }
"("             { printf("%-4d | %-15s | %s\n", yylineno, "PUNCTUATION", yytext); }
")"             { printf("%-4d | %-15s | %s\n", yylineno, "PUNCTUATION", yytext); }
"{"             { printf("%-4d | %-15s | %s\n", yylineno, "PUNCTUATION", yytext); }
"}"             { printf("%-4d | %-15s | %s\n", yylineno, "PUNCTUATION", yytext); }

[0-9]+          { printf("%-4d | %-15s | %s\n", yylineno, "NUMBER", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*  { printf("%-4d | %-15s | %s\n", yylineno, "IDENTIFIER", yytext); }

[ \t\r]+        ;
\n              { yylineno++; }

.               { printf("%-4d | %-15s | %s\n", yylineno, "ERROR", yytext); }
%%

int main(void) {
    print_header();
    yylex();
    printf("------------------------------------------\n");
    return 0;
}
