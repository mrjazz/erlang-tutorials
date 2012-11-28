-module(cases).
-export([day_of_week/1]).

day_of_week(Day) ->
  case Day of
  	0 -> monday;
  	1 -> tuesday;
  	2 -> wednesday;
  	3 -> thursday;
  	4 -> friday;
  	5 -> saturday;
  	6 -> sunday
  end.

1> c(days.erl).        
{ok,days}
2> days:day_of_week(1).
tuesday
