08/05/2023
This is the lexical analyser

How to compile and execute :
Transform lex into c :
lex lexical_analyser.l

Compile :
gcc lex.yy.c -ll 

Execute :
./a.out

Enter expressions, the lexical analysis will be printed

How to interface with YACC :

Remove main() in the lexical_analyser.l 
add returns instead of printf in the rules definition area (%% definition area %%)


Changes to investigate another day :

How to store the variables and constants?
Create a task manager to divide and monitor task advancement