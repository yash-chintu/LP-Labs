%{
    int lineno=0;
%}



%%

.*\n    fprintf(yyout,"%d : %s\n",++lineno,yytext);



%%

int yywrap(){
    return 1;
}

int main(void){
    yyin=fopen("input.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
    return 1;
}