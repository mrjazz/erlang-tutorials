-module (test3_4).
-compile(export_all).
-import (io).

new() ->
  [].

destroy(_) ->
  new().

write(Key, Element, Db) ->
  Db ++ [{Key, Element}].

filter(_, [], Result) ->
  Result;
filter(F, [Head | Tail], Result) ->  
  case
    F(Head) of true ->
      filter(F, Tail, Result ++ [Head]);
    false -> 
      filter(F, Tail, Result)
  end.

remove(Key, Db) ->
  filter(fun(X) -> element(1, X) /= Key end, Db, []).

read(Key, Db) ->
  filter(fun(X) -> element(1, X) == Key end, Db, []).

match(Value, Db) -> 
  [Result | _ ] = filter(fun(X) -> element(2, X) == Value end, Db, []),  
  element(1, Result).

test() -> 
  Db = write(key2, value2, write(key1, value1, new())),
  match(value1, Db).