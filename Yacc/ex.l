%{
#include <stdlib.h>
#include "y.tab.h"
%}

digit            [0-9]+

%%

[a-z]            {
                    yylval = *yytext - 'a';
                    return VARIABLE;
                 }

[A-Z]            {
                    yylval = *yytext - 'A';
                    return VARIABLE;
                 }

("+"|"-")?{digit} {
                    yylval = atoi(yytext);
                    return INTEGER;
                 }

[-+()=\/\*%\n]   { return *yytext; }

[ \t]            ;

.                yyerror("invalid character");

%%

int yywrap(void) {
    return 1;
}
