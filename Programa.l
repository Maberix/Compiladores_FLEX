%{
%}
letra   [a-zA-Z]
digito  [0-9]
id  {letra}({letra}|{digito})* 
where [Ww][Hh][Ee][Rr][Ee]
from [Ff][Rr][Oo][Mm]
select [Ss][Ee][Ll][Ee][Cc][Tt]
%%
{where} { printf("\nPC: %s",yytext); }
{from} { printf("\nPC: %s",yytext); }
{select} { printf("\nPC: %s",yytext); }
{id} { printf("\nID: %s",yytext); }
%%
int main(){
yylex(); return 0;
}
