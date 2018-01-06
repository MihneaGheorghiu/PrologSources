predicat(L):-
L = [[_,_,_,1],[_,_,_,2],[_,_,_,3]],
member([englez,_,_,1],L),
member([spaniol,_,kent,_],L),
member([rus,iepure,_,_],L),
member([_,pisica,_,N],L),
member([_,_,malboro,M],L),
member([_,_,lm,_],L),
member([_,caine,_,_],L),
dreapta(N,M).

dreapta(1,2).
dreapta(2,3).
dreapta(1,3).

