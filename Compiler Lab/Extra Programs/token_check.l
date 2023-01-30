
%{
	#include <stdio.h>
%}

%%
void|main|if|else|break|continue|const|final|switch|for|while|include	{printf("%s is a keyword.\n", yytext);}

[a-zA-Z_]+[0-9a-zA-Z_]*	{printf("%s is an identifier.\n", yytext);}

[0-9]+[0-9a-zA-Z_]*	{printf("%s is not an identifier.\n", yytext);}

[ \t\n]	;
%%

void main()
{
	printf("Enter tokens:\n");
	yylex();
}
