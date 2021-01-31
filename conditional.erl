-module(conditional).

-export([if_example/2, case_example/2]).

-import(lists, [member/2]).

if_example(A, B) ->
    if A =:= B ->
           eq;
       A > B ->
           gt;
       true ->
           ls
    end.

case_example(X, []) ->
    [X];
case_example(X, Set) ->
    case member(X, Set) of
      true ->
          Set;
      false ->
          [X | Set]
    end.

