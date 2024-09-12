%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

%%
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern" {
    printf("%s is a keyword\n", yytext);
}
"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct" {
    printf("%s is a keyword\n", yytext);
}
"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while" {
    printf("%s is a keyword\n", yytext);
}
.|\n { /* Ignore other characters */ }

%%

int main() {
    printf("Enter: ");
    yylex();
    return 0;
}
