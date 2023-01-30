
%{
#include <stdio.h>
int flag = 0;
%}

%%
[0-9]*(\.)?[0-9]+       flag = 1;
.                       flag = 0;
%%

void main()
{
        yylex();
        if (flag == 1)
                printf("Real number.\n");
        else
                printf("Not a real number.\n");
}
