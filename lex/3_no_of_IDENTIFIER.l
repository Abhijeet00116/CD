%{
#include<stdio.h>
int count=0;
%}

%%

[a-zA-Z0-9]* {count++;}

%%
void yywarp(){}
int main()
{
   
    yylex();
    printf("Number of identifier=%d\n",count);

   return 0;
}
