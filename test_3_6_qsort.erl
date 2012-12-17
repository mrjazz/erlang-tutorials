-module (qsort).
-compile(export_all).
-import (io).

qsort([]) ->
	[];

qsort([H | T]) ->	
	{Lesser, Bigger} = filter(H, T, {[], []}),
    qsort(Lesser) ++ [H] ++ qsort(Bigger).

filter(_, [], {Lesser, Bigger}) ->	
	{Lesser, Bigger};

filter(H, [Cur | T], {Lesser, Bigger}) ->  
    if
        H > Cur ->
            filter(H, T, {Lesser ++ [Cur], Bigger});
        true ->
            filter(H, T, {Lesser, Bigger ++ [Cur]})
    end.

test() ->    
	qsort([4,1,200,5,9,7,8,55,11,441]).
