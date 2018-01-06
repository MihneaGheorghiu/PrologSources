substituie(_,_,[],[]).
substituie(X,Y,[X|L1],[Y|L2]):-substituie(X,Y,L1,L2).
substituie(X,Y,[H|L1],[H|L2]):-H\= X, substituie(X,Y,L1,L2).
