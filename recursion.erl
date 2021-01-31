-module(recursion).
-export[factorial/1, len/1, tail_factorial/1].
factorial(N) when N == 0 -> 1;
factorial(N) when n > 0 -> N*factorial(N-1).
tail_factorial(N) -> tail_factorial(N, 1).
tail_factorial(0,_Acc) -> 1;
tail_factorial(N,Acc) when n > 0 -> tail_factorial(N-1,N*Acc).
len([])  -> 0;
len([_]) -> 1;
len([_HEAD|TAIL]) -> 1 + len(TAIL). 