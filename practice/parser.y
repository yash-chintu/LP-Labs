%{
    #include<stdio.h>
    #include<stdlib.h>
    void yyerror(char *);
%}

%token ONE ZERO

%%

r : s {printf("\nSequence Accepted\n\n");}
;
  
s : n
| ZERO a
| ONE b
;
  
a : n a
| ZERO
;
  
b : n b
| ONE
;
  
n : ZERO
| ONE
;


%%

void yyerror(char *s){
    printf("%s\n",s);
}


int main(void){
    yyparse();
    return 1;
}