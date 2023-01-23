%{
    #include <stdio.h>
%}

%%
[0-9]+      return NUMBER;
"+"         return ADD; 
"-"         return SUBTRACT;
"*"         return MULTIPLY;
"/"         return DIVIDE;
"%"         return SQRT;
\n          /* ignore end of line */;
[ \t]+      /* ignore whitespace */;
%%

/*main()
{
    yylex();
}*/