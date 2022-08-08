/*
 * hello-world.l
 */

%option noyywrap

%{
%}

%%
World    printf("Hello World");
%%

int main(int argc, char** argv)
{
  yylex();
}
