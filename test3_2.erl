-module(test3_2).
-export([start/0]).

create(List, 0) -> List;
create(List, N) -> create(List ++ [N], N - 1).
create(N) -> create([], N).

start() ->
  create(3).