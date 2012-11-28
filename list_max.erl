-module(list_max).
-import(io).
-export([list_max/1]).
-export([sum/1]).
-export([sum_acc/2]).


sum([]) -> 0;
sum([Head | Tail]) -> Head + sum(Tail).

list_max([]) -> [];
list_max([Head | Rest]) -> list_max(Rest, Head).
list_max([], MaxValue) -> MaxValue;
list_max([Head | Rest], MaxValue) when Head > MaxValue -> 
  list_max(Rest, Head);
list_max([_ | Rest], MaxValue) -> list_max(Rest, MaxValue).

sum_acc([],Sum) -> Sum;
sum_acc([Head|Tail], Sum) -> sum_acc(Tail, Head+Sum).