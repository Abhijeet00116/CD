%{
#include<stdio.h>
#include<string.h>
int flag=0;
%}
%%
[a-zA-Z0-9]+@[a-z]+".com"|".in" {flag = 1;} 
"\n" {if (flag == 1)
    printf("email Accepted");
  else
    printf("email not Accepted");}
%%
int yywrap(){}
int main() {
  yylex();
  
}
