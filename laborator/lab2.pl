drapel(X, Y, Z) :- member(X,[alb, galben, rosu, verde, albastru]),
	member(Y, [galben, verde]), member(Z,[alb,galben, rosu, verde, albastru]), X\=Z, Y\=Z, X\=Y.

reuniune(L, [], L).
reuniune([], L, L).
reuniune(L, [X|L1], L2) :- member(X, L), reuniune(L, L1, L2).
reuniune(L, [X|L1], [X|L2]) :- not(member(X,L)), reuniune(L, L1, L2).
intersectie(_, [], []).
intersectie([], _, []).
intersectie(L, [X|L1], [X|L2]) :- member(X, L), intersectie(L, L1, L2).
intersectie(L, [X|L1], L2) :- not(member(X,L)), intersectie(L, L1, L2).
diferenta(L,[],L).
diferenta([],_,[]).
diferenta([X|L], L1, L2) :- member(X, L1), diferenta(L, L1, L2).
diferenta([X|L], L1, [X|L2]) :- not(member(X,L1)), diferenta(L, L1, L2).

substitutie(_, _, [], []).
substitutie(X, Y, [X|L], [Y|L1]) :- substitutie(X, Y, L, L1).
substitutie(X, Y, [Z|L], [Z|L1]) :- substitutie(X, Y, L, L1).

produs([], _, []).
produs([X|L], L1, L2) :- prod(X, L1, L4), produs(L, L1, L3), append(L3,L4,L2).
prod(_, [], []).
prod(X, [Y|L], [[X,Y]|L1]) :- prod(X, L, L1).
prod(X, [X|L], [[X,X]|L1]) :- prod(X, L, L1).

combinari(_,0,[]).
combinari([X|L], N, [X|L1]) :- N1 is N-1, combinari(L, N1, L1).
combinari([_|L], N, L1) :- N\= 0, combinari(L, N, L1).
comb(L, N, L1) :- findall(X, combinari(L, N, X), L1).

lungime([],0).
lungime([_|L],  N):- lungime(L,N1), N is N1+1.
inserez(E,L,[E|L]).
inserez(E,[A|L],[A|X]) :- inserez(E,L,X).
permut([],[]).
permut([E|L],X) :- permut(L,L1),inserez(E,L1,X).
patrat(L, L1) :- permut(L, L1), sumalin(L1, 0, 3, SL1), sumalin(L1, 3, 3, SL2), 
	sumalin(L1, 6, 3, SL3), SL1=SL2, SL1=SL3, SL2=SL3,
	sumacol(L1, 0, 2, SC1), sumacol(L1, 1, 2, SC2), sumacol(L1, 2, 2, SC3),
	SC1 = SC2, SC1 = SC3, SC2 = SC3,
	sumacol(L1, 0, 3, SD1), sumasp(L1, SD2), SD1 = SD2,
	SL1 = SC1, SD1 = SL1, SL1 = SD1.
sumalin(_,0,0,0).
sumalin([_|L],N,N1,S) :- N\=0, NN is N-1, sumalin(L,NN,N1,S).
sumalin([X|L],0,N1,S) :- N1\=0, NN1 is N1-1, sumalin(L, 0, NN1, SS), S is SS+X.
sumacol([],_,_,0).
sumacol([X|L],0,N1,S) :- sumacol(L,N1,N1,SS), S is SS+X.
sumacol([_|L],N,N1,S) :- NN is N-1, sumacol(L,NN,N1,S).
sumasp([_|L], S) :- sumasp(L, 1, 1, S).
sumasp([_],_,_,0).
sumasp([X|L],0,N1,S) :- sumasp(L,N1,N1,SS), S is SS+X.
sumasp([_|L],N,N1,S) :- NN is N-1, sumasp(L,NN,N1,S).

%generez() :- findall(X, permut([1,2,3,4,5,6,7,8,9], X), L), 



