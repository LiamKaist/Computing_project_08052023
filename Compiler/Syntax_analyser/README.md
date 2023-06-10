09/06/2023

Started using yacc to understand its operating principles.

Before compiling to generate the "compiler.exe" executable, a few steps are to be followed.

yacc -d syntax_analyser.y (in the folder containing syntax_analyser.y, the -d option creates an additional .h file)

In the lexical_analyserV2.l folder, add #include "path to the y.tab.h" (This must be added between the %{ %})

Then, you can compile the lexical_analyserV2.l file with :

lex lexical_analyserV2.l (in the folder containing the file)

Finally, you can compile the compiler.exe executable whilst in the folder containing syntax_analyser.y

gcc y.tab.c ../Lexical_analyser/lex.yy.c -ll -o compiler.exe 
(This command may change depending on the folders created etc, you must adjust the paths accordingly)

Once that is done, you can execute the compiler.exe and try it out by inputting whatever sequence of characters you so wish

Tips : Make sure to abide by common rules for readable lex and yacc files.
Defining the token's return values is automatically done by yacc, as long as you include the y.tab.h in the lex file 

Next improvement :
Compile a simple addition into the custom assembly language instructions.

Understand how to store the declared variables ... (Crucial)

10/06/2023

Now I know the syntax analyser can recognize more complex sentences

the same improvements should be investigated, however yylval seems to be the way to pass a text argument to yacc file.




