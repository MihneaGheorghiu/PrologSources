%nume,nationalitate,sport,loc
p([[_,_,cricket,1],[_,_,_,2],[_,_,_,3]]).
prieteni(L) :- p(L),
	member([michael,_,baschet,A],L),member([_,american,_,B],L),A<B,
	member([simon,israelian,_,C],L),member([_,_,tenis,D],L),C<D,
	member([richard,_,_,_],L),member([_,australian,_,_],L).
nat(X) :- prieteni(L),member([X,australian,_,_],L).
sport(X) :- prieteni(L),member([richard,_,X,_],L).
	
