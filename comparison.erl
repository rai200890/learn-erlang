-module(comparison).
-export([eq/2, legal_age/1]).
-define(VALUEMACRO, farofa).
-define(function_macro(X,Y), X-Y). 
%% comparison function between 2 elements
- spec eq(any(), any()) -> atom().
eq(X,X) 
    -> true;
eq(_,_) 
    -> false.
%% returns legal age
- spec legal_age(number()) -> atom().
legal_age(age) when age > 18 -> true;
legal_age(_age) 
    -> false.


