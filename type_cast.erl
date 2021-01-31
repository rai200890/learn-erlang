-module(type_cast).
-export([to_integer/1]).
to_integer(X) when is_list(X) -> list_to_integer(X);
to_integer(X) when is_integer(X) -> X;
to_integer(true) -> 1;
to_integer(false) -> 0.

