combinari(_,0,[]).
combinari([X|L],N,[X|L1]):-N1 is N-1, combinari(L, N1, L1).
combinari([_|L],N,L1):- N\=0, combinari(L, N, L1).
comb(L,N,L1):-findall(X,combinari(L,N,X),L1).

