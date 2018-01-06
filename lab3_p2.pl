asemanari([],[],0).
asemanari([X|L1],[X|L2],N):-N1 is N-1 , asemanari(L1,L2,N1).
asemanari([_|L1],[_|L2],N):-asemanari(L1,L2,N).

cuvant([A1,A2,A3,A4,A5,A6]):-
	asemanari([A1,A2,A3,A4,A5,A6],[p,e,r,u,c,a],2),
	asemanari([A1,A2,A3,A4,A5,A6],[p,u,r,i,c,e],2),
	asemanari([A1,A2,A3,A4,A5,A6],[m,u,t,a,r,e],2),
	asemanari([A1,A2,A3,A4,A5,A6],[m,a,t,u,s,a],2),
	asemanari([A1,A2,A3,A4,A5,A6],[m,e,d,u,z,a],2),
	asemanari([A1,A2,A3,A4,A5,A6],[c,a,d,a,n,a],2),
	asemanari([A1,A2,A3,A4,A5,A6],[r,e,c,u,r,s],2),
	A1\=A2,A1\=A3,A1\=A4,A1\=A5,A1\=A6,
	A2\=A3,A2\=A4,A2\=A5,A2\=A6,
	A3\=A4,A3\=A5,A3\=A6,
        A4\=A5,A4\=A6,
	A5\=A6.
