/*1. Sa se scrie un predicat in Prolog pentru inversarea unei liste.
Exemplu : ?-inversare([1,2,3,4,5],L).
L=[5,4,3,2,1]*/

inversare([],[]).
inversare([H|R],L):-inversare([R,L|H]).
			      



/*
2. Sa se scrie un predicat in Prolog pentru rotirea unei liste intr-o directie (dreapta sau
stanga) cu N pozitii. De exemplu, predicatul rotire(Lista, Directie, N, ListaRez) roteste
Lista cun un numar de N elemente la stanga (daca Directie = stanga) sau la dreapta
(daca Directie = dreapta), punand rezultatul in ListaRez.
Exemplu : ?-rotire([1,2,3,4,5],stanga,2,L).
L=[3,4,5,1,2]
?-rotire([1,2,3,4,5],dreapta,2,L).
L= [4,5,1,2,3]*/

append1([],L2,L2).
append1([X|L1],L2,[X|L3]) :- append1(L1,L2,L3).

rotire(L,_,0,L).
rotire([],_,_,[]).
rotire([X|L],stanga,N,Rez):-append1(L,[X],R),N1 is N-1,rotire(R,stanga,N1,Rez).
rotire([X|L],dreapta,N,Rez):-inversare([X|L],R1),rotire(R1,stanga,N,R2),inversare(R2,Rez).

/*3. Sa se scrie predicatul sumapartiala(Ansamblu, Suma, Subansamblu), unde

Ansamblu este o lista de numere si Subansamblu este unul dintre
subansamblele liste de numere, a carui suma este egala cu Suma. Exemplu: 
sumapartiala([1,2,5,3,2],5,S). 
S=[1,2,2]; S=[2,3]; S=[5]; S=[3,2];
No.*/
sumapartiala([X|_],X,[X]).
sumapartiala([_|R],S,L):- sumapartiala(R,S,L).
sumapartiala([X|R],S,[X|L]):- S1 is S-X, sumapartiala(R,S1,L).











