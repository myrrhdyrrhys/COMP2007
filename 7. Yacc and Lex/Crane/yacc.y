%{
    #include <stdio.h>
    
    main()
    {
        yyparse();
    }
%}

%token NUMBER FORWARD BACKWARD LEFT RIGHT ALTITUDE 

%%
movefor: FORWARD { printf("Moving forward\n"); };

moveback: BACKWARD { printf("Moving backward\n"); };

turnleft: LEFT NUMBER { printf("Turning left %d degrees\n", $2); };

turnright: RIGHT NUMBER { printf("Turning right %d degrees\n", $2); };

altitude: ALTITUDE NUMBER { printf("Setting altitude to %d degrees\n", $2); };

%%



