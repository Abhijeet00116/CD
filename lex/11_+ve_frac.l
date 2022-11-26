%{
	#include<stdio.h>
	#include<string.h>
	#include<stdlib.h>	
	int pno=0;
	int nno=0;
	int p_fractions=0;
	int n_fractions=0;
%}

DIGIT [0-9]
%%

\+?{DIGIT}+			 pno++;
-{DIGIT}+			 nno++;

\+?{DIGIT}*\.{DIGIT}+ p_fractions++;
-{DIGIT}*\.{DIGIT}+	 n_fractions++;
. ;
"\n" {printf("\nNo. of positive numbers: %d", pno);
	printf("\nNo. of Negative numbers: %d", nno);
	printf("\nNo. of Positive numbers in fractions: %d", p_fractions);
	printf("\nNo. of Negative numbers in fractions: %d\n", n_fractions);
	}
%%

// driver code
int main()
{
	yylex();
	return 0;
}
