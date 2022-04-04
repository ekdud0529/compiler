%{
    #include <stdio.h>
%}
digit       [0-9]
letter      [a-zA-Z]
reserved    if|then|else|end|repeat|until|read|write
%%
{reserved}                      ;
\n                              ;
{digit}+({letter}|{digit})*     ;
{letter}+({letter}|{digit})*    printf("%s\n", yytext);
