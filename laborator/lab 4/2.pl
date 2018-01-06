reuniune(L,[],L).
reuniune([],L,L).
reuniune([H1|T1],L2,[H1|L3]):- not(member(H1,L2)), reuniune(T1,L2,L3).
reuniune([H1|T1],L2,L3):- member(H1,L2), reuniune(T1,L2,L3).

intersectie(_,[],[]).
intersectie([],_,[]).
intersectie([H1|T1],L2,[H1|L3]):- member(H1,L2), intersectie(T1,L2,L3).
intersectie([H1|T1],L2,L3):- not(member(H1,L2)), intersectie(T1,L2,L3).

diferenta(L,[],L).
diferenta([],_,[]).
diferenta([H1|T1],L2,[H1|L3]):- not(member(H1,L2)),diferenta(T1,L2,L3).
diferenta([H1|T1],L2,L3):- member(H1,L2),diferenta(T1,L2,L3).

