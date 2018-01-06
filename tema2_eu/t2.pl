%PROB 5

%aduna doua cifre si afla rezultatul
add(C1, C2, Crez, Carry):- S is C1+C2, Crez is S mod 10, Carry is 
S//10.

%afiseaza o lista de perechi
type([]).
type([[A,B]|L]):- write(A),write(=),write(B),nl,type(L).

adunare([[d,D],[o,O],[n,N],[a,A],[l,L],[g,G],[e,E],[r,R],[b,B],[t,T]]):-
	permutation([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], [D,O,N,A,L,G,E,R,B,T]),
	add(D, D   , T, C1),
	add(L, L+C1, R, C2),
	add(A, A+C2, E, C3),
	add(N, R+C3, B, C4),
	add(O, E+C4, O, C5),
	add(D, G+C5, R, 0),
	type([[d,D],[o,O],[n,N],[a,A],[l,L],[g,G],[e,E],[r,R],[b,B],[t,T]]).

%526485 + 197485 = 723970
