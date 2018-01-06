inserez(E,L,[E|L]).
inserez(E,[A|L],[A|X]):-inserez(E,L,X).
permut([],[]).
permut([E|L],X):-permut(L,L1),inserez(E,L1,X).


%extract([],_,0).
extract([H|_],1,H).
extract([_|T],N,R):-N1 is N-1, extract(T,N1,R).

suma(L):-extract(L,1,N1),extract(L,2,N2),extract(L,3,N3),extract(L,4,N4),extract(L,5,N5),extract(L,6,N6),extract(L,7,N7),extract(L,8,N8),extract(L,9,N9), 
S is N1+N2+N3, 
N4+N5+N6 =:= S,
N7+N8+N9 =:= S,
N1+N4+N7 =:= S,
N2+N5+N8 =:= S,
N3+N5+N7 =:= S,
N1+N5+N9 =:= S,
N3+N6+N9 =:= S. 
patrat(X):-permut([1,2,3,4,5,6,7,8,9],X), suma(X).
