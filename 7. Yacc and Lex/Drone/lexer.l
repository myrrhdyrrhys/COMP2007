%{
    #include <stdio.h>
%}

%%
[0-9]+      return NUMBER;
forward     return FORWARD; 
backward    return BACKWARD;
left        return LEFT;
right       return RIGHT;
drop        return DROP;
\n          /* ignore end of line */;
[ \t]+      /* ignore whitespace */;
%%

/*main()
{
    yylex();
}*/