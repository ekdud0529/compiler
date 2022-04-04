%{
    #include <stdio.h>
    int cnt = 0;
%}
whitespace  [ \t\n]
%%
{whitespace}    ;
.               cnt += yyleng;
%%
int main()
{
    yylex();
    printf("Total characters: %d\n", cnt);
    return 0;
}
