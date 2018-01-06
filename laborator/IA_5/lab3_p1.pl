meserie(F,B,T,C,Ff,Bf,Tf,Cf):-
	member(F,[brutar,tamplar,croitor]),
	member(B,[fierar,tamplar,croitor]),
	member(T,[brutar,fierar,croitor]),
	member(C,[fierar,brutar,tamplar]),
   
	member(Ff,[brutar]),
	member(Bf,[fierar,tamplar,croitor]),
	member(Tf,[brutar,fierar,croitor]),
	member(Cf,[fierar,brutar,tamplar]),

	F\=Ff,B\=Bf,T\=Tf,C\=Cf,
	B=Tf,
	F\=B,F\=T,F\=C,B\=T,B\=C,T\=C,
	Ff\=Bf,Ff\=Tf,Ff\=Cf,Bf\=Tf,Bf\=Cf,Tf\=Cf.
