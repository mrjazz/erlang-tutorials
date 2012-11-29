-module (test3_5).
-compile(export_all).
-import (io).

filter([], _Max, Result) -> 
  Result;
filter([Head | Tail], Max, Result) when Head >= Max ->  
  filter(Tail, Max, Result ++ [Head]);
filter([_Head | Tail], Max, Result) ->  
  filter(Tail, Max, Result).
filter(List, Max) -> 
  filter(List, Max, []).

reverse([], Result) ->
  Result;
reverse([Head | Tail], Result) ->
  reverse(Tail, [Head] ++ Result).
reverse(List) ->
  reverse(List, []).

concatenate(L) ->
  concatenate(L, []).
concatenate([], Result) ->
  Result;
concatenate([Head | Tail], Result) ->
  concatenate(Tail, Result ++ Head).

flatten(List) ->
  flatten(List, []).
flatten([], Result) ->
  Result;
flatten([Head | Tail], Result) ->
  flatten(Tail, Result ++ flatten(Head));
flatten(Value, Result) ->
  Result ++ [Value].

test() ->
  filter([1,2,3,4,5],3),
  reverse([1,2,3]),
  concatenate([[1,2,3], [], [4, five]]),
  flatten([[1,[2,[3],[]]], [[[4]]], [5,6]]).