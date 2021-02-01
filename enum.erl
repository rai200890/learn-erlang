-module(enum).

-export([map/2, filter/2, fold/3]).

%%1> enum:map([1,2,3], fun(X) -> 2*X end).
%% [2,4,6]
map(List, Function) ->
    map(List, Function, []).

map([], _Function, Acc) ->
    Acc;
map([Head | Tail], Function, Acc) ->
    [Function(Head) | map(Tail, Function, Acc)].

%%1> enum:filter([1,2,3,4], fun(X) -> X > 3 end).
%% [4]
filter(List, Function) ->
    filter(List, Function, []).

filter([], _Function, Acc) ->
    Acc;
filter([Head | Tail], Function, Acc) ->
    case Function(Head) of
      true ->
          [Head | filter(Tail, Function, Acc)];
      false ->
          filter(Tail, Function, Acc)
    end.

%%1> enum:fold([1,2], 0, fun(X,Acc) -> X + Acc end).
%% 3
fold(List, Start, Function) ->
    fold(List, Start, Function, Start).

fold([], _Start, _Function, Acc) ->
    Acc;
fold([Head | Tail], Start, Function, Acc) ->
    fold(Tail, Start, Function, Function(Head, Acc)).

