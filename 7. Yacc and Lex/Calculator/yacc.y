%{
    #include <stdio.h>
    #include <math.h>
    
    main()
    {
        yyparse();
    }
%}

%token NUMBER ADD SUBTRACT MULTIPLY DIVIDE SQRT

%%
addition: NUMBER ADD NUMBER { 
    int result = $1 + $3;
    printf("Result: %d\n", result); };

subtraction: NUMBER SUBTRACT NUMBER { 
    int result = $1 - $3;
    printf("Result: %d\n", result); };

multiplication: NUMBER MULTIPLY NUMBER { 
    int result = $1 * $3;
    printf("Result: %d\n", result); };

division: NUMBER DIVIDE NUMBER { 
    int result = $1 / $3;
    printf("Result: %d\n", result); };

squareroot: SQRT NUMBER { 
    int result = sqrt($2);
    printf("Result: %d\n", result); };

%%



