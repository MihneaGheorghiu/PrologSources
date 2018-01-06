cursa(L):-
L = [[_,_,1],[_,_,2],[_,_,3],[_,_,4]],
member([_,bucuresti,1],L),
member([maria,_,2],L),
member([diana,_,4],L),
member([_,brasov,3],L),
member([liliana,_,N],L),
member([_,timisoara,M],L),
member([_,iasi,P],L),
member([_,timisoara,Q],L),
not(member([elisabeta,bucuresti,_],L)),
not(member([elisabeta,iasi,_],L)),
member([elisabeta,_,_],L),
inainte(P,Q),
inainte(N,M).


inainte(1,2).
inainte(1,3).
inainte(1,4).
inainte(2,3).
inainte(2,4).
inainte(3,4).
