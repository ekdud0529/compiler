%{
    #include <stdio.h>
%}
digit       [0-9]+
signedDig   ("+"|"-")?{digit}
number      {signedDig}("."{digit})?(E{signedDig})?
%%
{number}        printf("%s\n", yytext);
.+|[ \t\n]      ;
