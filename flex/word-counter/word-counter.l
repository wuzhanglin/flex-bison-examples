/*
 * word-counter.l
 */

%option noyywrap

%{
    int words = 0;
    int numbers = 0;
%}

%%

[a-zA-Z]+   { words++; }
[0-9]+      { numbers++; }

%%

int main(int argc, char **argv)
{
    yylex();
    printf("words: %d, numbers: %d\n", words, numbers);

    return 0;
}
