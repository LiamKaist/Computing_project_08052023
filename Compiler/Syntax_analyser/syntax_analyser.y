

%{
#include <stdio.h>
%}
// Declarations

%start symbol
%token t_separators t_carriage_return t_main t_curlbrack1 t_curlbrack2 t_const t_printf t_declaration t_math_operator t_parentheses1 t_parentheses2 t_end_of_instruc

//Règles

%%
    // symbol represents the start, from this point on, the analyser will deconstruct A, according to the rules we define
    symbol : A
        {
            printf("start");
        }
        ;
    A : t_carriage_return
        {
            printf("message");
        }
        ;
%%

//Programmes

int yyerror(char *s)
{
    printf("%s\n", s);
}

// Main function where the yacc program starts to parse the input
int main()
    {
        return yyparse();
    }

