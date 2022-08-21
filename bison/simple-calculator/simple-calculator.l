/**
 *  simple-calculator.l
 */

%{
    #include "simple-calculator.tab.h"
%}

%option noyywrap

%%

"+"     { return ADD; }
"-"     { return SUB; }
"*"     { return MUL; }
"/"     { return DIV; }

^[-+][0-9]+ { yylval = atoi(yytext); return NUMBER;}
[0-9]+  { yylval = atoi(yytext); return NUMBER;}

\n      {return EOL; }
[ \t]   {} 
.       { printf("Unrecognized character: %s\n", yytext);}

%%
