%{
    int total=0;
%}

%%

"if"    fprintf(yyout,"<if>\n");total++;
"else"  fprintf(yyout,"<else>\n");total++;
"("    fprintf(yyout,"<braceopen>\n");total++;
")"   fprintf(yyout,"<braceclose>\n");total++;

%%

int yywrap(void){
    return 1;
}

int main(){
    yyin=fopen("input.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
    printf("total no of tokens : %d",total);
    return 1;
}