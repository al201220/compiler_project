%{
#include <stdio.h>


void print_header() {
    printf("------------------------------------------------\n");
    printf("Line | Token Type        | Lexeme\n");
    printf("------------------------------------------------\n");
}
%}

%option noyywrap
%option yylineno

%%


"start"       { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"intnum"      { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"decnum"      { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"text"        { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"check"       { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"otherwise"   { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"repeat"      { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"show"        { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"trueval"     { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"falseval"    { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"func"        { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"end"         { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }
"breakit"     { printf("%-4d | %-17s | %s\n", yylineno, "KEYWORD", yytext); }


"=="          { printf("%-4d | %-17s | %s\n", yylineno, "REL_OP", yytext); }
"!="          { printf("%-4d | %-17s | %s\n", yylineno, "REL_OP", yytext); }
"<="          { printf("%-4d | %-17s | %s\n", yylineno, "REL_OP", yytext); }
">="          { printf("%-4d | %-17s | %s\n", yylineno, "REL_OP", yytext); }
"<"           { printf("%-4d | %-17s | %s\n", yylineno, "REL_OP", yytext); }
">"           { printf("%-4d | %-17s | %s\n", yylineno, "REL_OP", yytext); }


"="           { printf("%-4d | %-17s | %s\n", yylineno, "ASSIGN_OP", yytext); }
"++"          { printf("%-4d | %-17s | %s\n", yylineno, "INC_OP", yytext); }
"--"          { printf("%-4d | %-17s | %s\n", yylineno, "DEC_OP", yytext); }
"+"           { printf("%-4d | %-17s | %s\n", yylineno, "ADD_OP", yytext); }
"-"           { printf("%-4d | %-17s | %s\n", yylineno, "SUB_OP", yytext); }
"*"           { printf("%-4d | %-17s | %s\n", yylineno, "MUL_OP", yytext); }
"/"           { printf("%-4d | %-17s | %s\n", yylineno, "DIV_OP", yytext); }
"%"           { printf("%-4d | %-17s | %s\n", yylineno, "MOD_OP", yytext); }


";"           { printf("%-4d | %-17s | %s\n", yylineno, "PUNCT", yytext); }
","           { printf("%-4d | %-17s | %s\n", yylineno, "PUNCT", yytext); }
"("           { printf("%-4d | %-17s | %s\n", yylineno, "PUNCT", yytext); }
")"           { printf("%-4d | %-17s | %s\n", yylineno, "PUNCT", yytext); }
"{"           { printf("%-4d | %-17s | %s\n", yylineno, "PUNCT", yytext); }
"}"           { printf("%-4d | %-17s | %s\n", yylineno, "PUNCT", yytext); }


[0-9]+(\.[0-9]+)? { printf("%-4d | %-17s | %s\n", yylineno, "NUMBER", yytext); }


[a-zA-Z_][a-zA-Z0-9_]* { printf("%-4d | %-17s | %s\n", yylineno, "IDENTIFIER", yytext); }


[ \t\r]+   ;
\n         { yylineno++; }


.          { printf("%-4d | %-17s | %s\n", yylineno, "ERROR", yytext); }

%%

int main(void) {
    print_header();
    yylex();
    printf("------------------------------------------------\n");
    return 0;
}
