%{
    int yycount=0;
    int count=0;
%}

%%

"if"    fprintf(yyout,"<if>\n");yycount++;
"else"  fprintf(yyout,"<else>\n");yycount++;
"while" fprintf(yyout,"<while>\n");yycount++;
"for"   fprintf(yyout,"<for>\n");yycount++;
"do"    fprintf(yyout,"<do>\n");yycount++;
"printf" fprintf(yyout,"<printf>\n");yycount++;
"scanf" fprintf(yyout,"<scanf>\n");yycount++;
"("     fprintf(yyout,"<openbrace>\n");yycount++;
")"     fprintf(yyout,"<closebrace>\n");yycount++;
;       fprintf(yyout,"<semicolon>\n");yycount++;
[\t\n]  ;
[a-zA-Z_][a-zA-Z0-9_]*  fprintf(yyout,"<id,%d>\n",++count);yycount++;
. ;

%%


int yywrap(void){return 1;}

int main(void){
    yyin=fopen("input.txt","r");;
    yyout=fopen("output.txt","w");
    yylex();
    return 0;
}