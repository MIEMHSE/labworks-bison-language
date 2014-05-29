%option noyywrap

%{
#include "ifprog.tab.h"
%}
%%
"if" {return IF;}
"switch" {return SWITCH;}
"case" {return CASE;}
"break" {return BREAK;}
"default" {return DEFAULT;}
"foreach" {return FOREACH;}
"for" {return FOR;}
"as" {return AS;}
"while" {return WHILE;}
"do" {return DO;}
"else" {return ELSE;}
"&&" {return AND;}
"||" {return OR;}
"<=" {return LE;}
">=" {return GE;}
">" {return GT;}
"<" {return LT;}
"!=" {return NE;}
"++" {return INC;}
"--" {return DEC;}
"==" {return EQ;}
[0-9]+ {return num;}
[a-zA-Z]+ {return alpha;}
[\t];
[\n];
"$" {return END;}
.  {return yytext[0];}
%%