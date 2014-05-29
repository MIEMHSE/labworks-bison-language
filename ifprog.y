%{
#include <stdio.h>
#include <stdlib.h>
%}
%token num alpha LT GT EQ LE GE NE AND OR AS INC DEC END WHILE
%left '+''-'
%left '*''/'
%right '^'
%right '='
%nonassoc SWITCH
%nonassoc CASE
%nonassoc BREAK
%nonassoc DEFAULT
%nonassoc UMINUS
%nonassoc IF
%nonassoc FOREACH
%nonassoc FOR
%nonassoc DO
%nonassoc ELSE
%left GE NE LT GT LE EQ
%left AND OR
%left AS
%%
S:ST END { printf("\n Accepted\n"); exit(0); }

ST:IF'('F')''{'ST'}'%prec IF
  |IF'('F')''{'ST'}'ELSE'{'ST'}'
  |E';'
  |E';'ST
  |FOREACH'('P')''{'ST'}'
  |FOR'('E';'F';'E')''{'ST'}'
  |WHILE'('F')''{'ST'}'
  |DO'{'ST'}'WHILE'('F')'';'
  |SWITCH'('E')''{'CS'}'

CS:CASE' 'num':'E';'
  |CASE' 'num':'E';'CS
  |BREAK';'
  |BREAK';'CS
  |DEFAULT':'E';'
  |DEFAULT':'E';'CS


P:alpha' 'AS' 'alpha

F:C LO C
 |C

LO:AND
  |OR

C:E RELOP E
 |E

E:alpha '='E
 |E'+'E
 |E'-'E
 |E'*'E
 |E'/'E
 |E'^'E
 |'('E')'
 |'-'E %prec UMINUS
 |alpha
 |num
 |alpha INC
 |alpha DEC

RELOP:LT
     |GT
     |EQ
     |LE
     |GE
     |NE
;
%%
#include "lex.yy.c"

int main()
{
    yyparse();
    yylex();
    return END;
}

yyerror(char *s)
{
    printf("\n Error: %s", s);
}