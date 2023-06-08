%{
# include <stdio.h>


//Rule definition area
%}

variable_w_comma [ \t]+[a-zA-Z][a-zA-Z0-9_]+\,
variable [ \t]+[a-zA-Z][a-zA-Z0-9_]*
%%
main\(\) {printf("Function main \n");}
[\{] {printf("Curly bracket first \n");}   
[\}] {printf("Curly bracket second \n");}
const[ \t]+[a-zA-Z][a-zA-Z0-9_]* {printf("constant named %s \n",(yytext+6));}
printf\([a-zA-Z][a-zA-Z0-9_]*\) {printf("printf with parameter : %s \n", yytext+6);}
int{variable_w_comma}+?{variable} {printf("integer declarations \n");}
[\+\-\*\/\=] {printf("math operator \n");}
[\(] {printf("parentheses first \n");}
[\)] {printf("parentheses second \n");}
[ \t,]+ {printf("separators \n");}
[\n] {printf("carriage return \n");}
; {printf("End of Instruction \n");}
%%

//Main function area (to be removed to work with yacc)
int main(){
    yylex();
}