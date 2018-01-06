Tema nr.1 Inteligenta artificiala
Gheorghiu Mihnea
334CC


% Sa se scrie un predicat in Prolog pentru inversarea unei liste.


invers([],[]).
invers([X|L],L1):-invers(L,L2),append(L2,[X],L1).





%Sa se scrie un predicat in Prolog pentru rotirea unei liste intr-o directie (dreapta sau
%stanga) cu N pozitii. De exemplu, predicatul rotire(Lista, Directie, N, ListaRez) roteste
%Lista cun un numar de N elemente la stanga (daca Directie = stanga) sau la dreapta
%(daca Directie = dreapta), punand rezultatul in ListaRez.



rot([],stanga,_,[]).
rot([],dreapta,_,[]).
rot([X|L], stanga,1,L1):-append(L,[X],L1).
rot(L2,dreapta,1,L1):-invers(L2,A2),rot(A2,stanga,1,B1),invers(B1,L1).
rot(L,stanga,N,L1):-rot(L,stanga,1,B1),G is N-1,rot(B1,stanga,G,L1).
rot(L,dreapta,N,L1):-rot(L,dreapta,1,B1),G is N-1,rot(B1,dreapta,G,L1).






%Sa se scrie predicatul sumapartiala(Ansamblu, Suma, Subansamblu), unde
%Ansamblu este o lista de numere si Subansamblu este unul dintre subansamblele liste de
%numere, a carui suma este egala cu Suma.

sumapartiala([S|_], S, [S]).
sumapartiala([X|L], S, [X|T]) :- S1 is S-X,sumapartiala(L,S1,T). 
sumapartiala([_|L], S, [X|T]) :- sumapartiala(L,S,[X|T]). 





