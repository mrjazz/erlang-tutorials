-module (test3_3).
-import (io).
-export ([start/0]).

% implementation with if
print(Max, Cur) ->
  NewCur = Cur + 1,
  if 
  	Max > Cur ->
      io:format("Number:~p~n",[NewCur]),
      print(Max, NewCur);
    true -> io:format("Number:~p~n",[NewCur])
  end.

print(Max) ->
  print(Max - 1, 0).

% implementation with guard
print1(Max, Min) when Max > Min ->
  NewCur = Min + 1,
  io:format("Number:~p~n",[NewCur]),
  print1(Max, NewCur);
print1(_, _) -> false.

print1(Max) -> 
  print1(Max, 0).

start() ->
%  print(3).
  print1(3).