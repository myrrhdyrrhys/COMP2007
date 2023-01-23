# :- if     , and    ; or   . end
# Facts, Rules, and Queries

# Find Location in List
Found(X, X, N) :-
    write(N).
RecLocInList(X, [], acc) :-
    write("No.").
RecLocInList(X, [H|T], acc) :-
    Found(X, H, acc),
    acc = acc + 1,
    RecLocInList(X, T, acc).
LocInList(X, List) :-
    N = 0,
    RecLocInList(X, List, N).


# find nth element of fib series
fib(0, 0).
fib(1, 1).
fib(X, N) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(X1, N1),
    fib(X2, N2),
    X is X1 + X2.

fib(0, 1).
fib(1, 1).
fib(N, F):-
    N = M + 1,
    M = K + 1,
    fib(M, G),
    fib(K, H),
    F = G + H,
    N > 1.

fib(x,n) :-
    x = 0:- n is 0.
    x = 1:- n is 1.
    x = fib(x-2) + 

# determine if a year is a leap year
leap(Year) :-
    0 is mod(Year, 4),
    \+ 0 is mod(Year, 100);
    0 is mod(Year, 400).
# another solution
leap(Year) :-
    0 =:= Year mod 400;
    0 =:= Year mod 4,
    Not(0 =:= Year mod 100).

# Sorting algorithims
%NAIVE_SORT
# Checks for every permutation of the list
naive_sort(List, Sorted):-
    permutation(List, Sorted),
    is_sorted(Sorted).
   
is_sorted([]).                  %empty_list
is_sorted([_]).                 %one_element
is_sorted([X, Y|T]):-           %list_with_tail
    X =< Y,
    is_sorted([Y|T]).

%INSERT_SORT
insert_sort(List, Sorted):-
    i_sort(List, [], Sorted).
    
    %uses_accumulator_to_accumulate_the_subresults_during_recursion
i_sort([], Acc, Acc).           %end_of_list
i_sort([H|T], Acc, Sorted):-
    insert(H, Acc, NAcc),       
    i_sort(T, NAcc, Sorted).    %recurse_through_tail_NAcc_means_New_Acc
   
insert(X, [Y|T], [Y|NT]):-
    X > Y,
    insert(X, T, NT).

insert(X, [Y|T], [X, Y|T]):-
    X =< Y.

insert(X, [], [X]).               %first_element

# Check if two queens can attack each other
:- use_module(library(clpfd)).

create((A, B)) :=
    [A, B] ins 1..8.

attack((Row, Col), (Row2, Col2)) :-
    create((Row, Col)), 
    create((Row2, Col2)),
    (   
        Row =:= Row2;
        Col =:= Col2;
        abs(Row - Row2) =:= abs(Col - Col2)
    ).