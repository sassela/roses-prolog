% Problem #3: Roses

person(ida).
person(jeremy).
person(hugh).
person(leroy).
person(stella).

rose('cottage beauty').
rose('pink paradise').
rose('golden sunset').
rose('sweet dreams').
rose('mountain bloom').

item(streamers).
item('gourmet chocolates').
item(candles).
item(balloons).
item('place cards').

event('senior prom').
event(wedding).
event('charity auction').
event('anniversary party').
event('retirement banquet').


solve :- 
	rose(IdaRose),
	rose(JeremyRose),
	rose(HughRose),
	rose(LeroyRose),
	rose(StellaRose),
	all_different([IdaRose, JeremyRose, HughRose, LeroyRose, StellaRose]),

	item(IdaItem),
	item(JeremyItem),
	item(HughItem),
	item(LeroyItem),
	item(StellaItem),
	all_different([IdaItem, JeremyItem, HughItem, LeroyItem, StellaItem]),

	event(IdaEvent),
	event(JeremyEvent),
	event(HughEvent),
	event(LeroyEvent),
	event(StellaEvent),
	all_different([IdaEvent, JeremyEvent, HughEvent, LeroyEvent, StellaEvent]),

	Quadruples = [ [ida, IdaRose, IdaItem, IdaEvent],
	      	   [jeremy, JeremyRose, JeremyItem, JeremyEvent],
	           [hugh, HughRose, HughItem, HughEvent],
	           [leroy, LeroyRose, LeroyItem, LeroyEvent],
	           [stella, StellaRose, StellaItem, StellaEvent] ],

   	tell(ida, IdaRose, IdaItem, IdaEvent),
   	tell(jeremy, JeremyRose, JeremyItem, JeremyEvent),
   	tell(hugh, HughRose, HughItem, HughEvent),
   	tell(leroy, LeroyRose, LeroyItem, LeroyEvent),
   	tell(stella, StellaRose, StellaItem, StellaEvent).


% Succeeds if all elements of the argument list are bound and different. 
% Fails if any elements are unbound or equal to some other element.

all_different([H|T]) :- member(H, T), !, fail. 
all_different([_|T]) :- all_different(T).
all_different([_]).
