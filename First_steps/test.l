%{
# include <stdio.h>
%}

%%
[0-9]+ {printf("Number \n");}
[a-zA-Z][a-zA-Z0-9]* {printf ("Word \n");}
[ \t]+ {printf ("Blank \n");;}
%%

int yywrap(){
    printf("End Of File \n");
    return 1;
}
int main(){
    yywrap();
yylex();
}