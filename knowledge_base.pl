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


% Succeeds if all elements of the argument list are bound and different. 
% Fails if any elements are unbound or equal to some other element.

all_different([H|T]) :- member(H, T), !, fail. 
all_different([_|T]) :- all_different(T).
all_different([_]).
