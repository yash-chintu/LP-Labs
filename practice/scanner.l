%{
    extern int yylval;
    #include "y.tab.h"
%}

%%

0   {yylval=0;
        printf("lex match 0\n");
        return ZERO;}
1   {yylval=1;
        printf("lex match 1\n");
        return ONE;}



%%

int yywrap(){return 1;}