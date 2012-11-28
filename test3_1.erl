-module(test3_1).
-export([start/0]).
-import(io).
-import(lists).

listCreate(L, Start, End) ->
  if
	Start < End -> listCreate(L ++ [End], Start, End - 1);
	true -> L
  end.

sum(N) ->
  Res = listCreate([], 0, N),
  io:format("~w~n", [Res]),
  lists:sum(Res).

sum(Start, End) ->
  lists:sum(listCreate([], Start, End)).

start() ->  
  io:format("~w~n~w~n", [sum(5), sum(1,3)]).