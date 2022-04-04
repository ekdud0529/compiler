%{
    #include <stdio.h>
    int cnt = 0;
%}
%%
[^a]    ;
a$      cnt++;
a       ;
%%
int main()
{
    yylex();
    printf("Number of sentences that ends with a: %d\n", cnt);
    return 0;
}
