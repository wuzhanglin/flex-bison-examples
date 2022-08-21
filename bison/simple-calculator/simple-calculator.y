/**
 *  simple-calculator.y
 */

%{
    #include <stdio.h>

    extern int yylex();
    void yyerror(const char* s)
    {
        printf("Error: %s\n", s);
    }
%}

%token NUMBER
%token ADD SUB MUL DIV
%token EOL

%%

calclist: /* Empty rule */
    | calclist exp EOL { printf("= %d\n", $2); }
    ;

exp: factor
   | exp ADD factor { $$ = $1 + $3; }
   | exp SUB factor { $$ = $1 - $3; }
   ;

factor: NUMBER
      | factor MUL NUMBER { $$ = $1 * $3; }
      | factor DIV NUMBER { $$ = $1 / $3; }      
      ;

%%

int main(int argc, char **argv)
{
    yyparse();

    return 0;
}
