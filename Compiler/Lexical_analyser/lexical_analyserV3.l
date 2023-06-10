%{
# include <stdio.h>
#include <string.h>
# include "../Syntax_analyser/y.tab.h"
//Rule definition area
%}

variable_w_comma [ \t]+[a-zA-Z][a-zA-Z0-9_]+\,
variable [ \t]+[a-zA-Z][a-zA-Z0-9_]*
%%
main\(\) {return t_main;}
[\{] {return t_curlbrack1;}   
[\}] {return t_curlbrack2;}
const {return t_const;}
printf\([a-zA-Z][a-zA-Z0-9_]*\) {return t_printf;}
int{variable_w_comma}+?{variable} {return t_declaration;}
[\+\-\*\/\=] {return t_math_operator;}
[\(] {return t_parentheses1;}
[\)] {return t_parentheses2;}
[ \t,]+ {return t_separators;}
[\n] {return t_carriage_return;}
[a-zA-Z][a-zA-Z0-9_]* { strcpy(buffer, yytext);
    return t_name;} 
; {return t_end_of_instruc;}
%%