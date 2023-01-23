%{
    #include <stdio.h>
    
    main()
    {
        yyparse();
    }
%}

%token NUMBER FORWARD BACKWARD LEFT RIGHT DROP 

%%
move: direction NUMBER { printf("Moving %s %d units\n", $1, $2); };

direction: FORWARD | BACKWARD | LEFT | RIGHT;

drop: DROP { printf("Dropping claw...\nAttempting to grab...\nDropping winnings...(if any)"); };

%%



