%{
#include<stdio.h>
int no_of_lines=0;
int no_of_tabs=0;
int no_of_spaces=0;
int no_of_words=0;
int rest_of_char=0;
%}
%%
\n            {no_of_lines++;}
[ ]+          {no_of_spaces++;}
\t            {no_of_tabs++;}
[A-Za-z0-9]+   {no_of_words++;}  
.             {rest_of_char++;}

%%
int yywrap()
{
return 1;
}
int main()
{
printf("enter string:");
yylex(); // start lexing
printf("\n no of lines: %d\n",no_of_lines);
printf("\n no of spaces: %d\n",no_of_spaces);
printf("\n no of tabs: %d\n",no_of_tabs);
printf("\n no of words: %d\n",no_of_words);
printf("\n no of rest of characters: %d\n",rest_of_char);
return 0;
}
