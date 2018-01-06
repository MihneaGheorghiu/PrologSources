cartezian([],_,[]).
cartezian([H|T], L1, L2):-produs(H,L1,L4), cartezian(T, L1, L3), append(L3,L4,L2).
produs(_,[],[]).
produs(X, [Y|L],[[X,Y]|L1]):-produs(X,L, L1).
produs(X, [X|L],[[X,X]|L1]):-produs(X,L, L1).
