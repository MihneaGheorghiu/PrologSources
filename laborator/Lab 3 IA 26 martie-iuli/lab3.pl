meserii( Ft, Bt, Tt, Ct, Fc, Bc, Tc, Cc ) :- 
	member( Ft, [fierar, brutar, tamplar, croitor] ), 
	member( Bt, [fierar, brutar, tamplar, croitor] ),
	member( Tt, [fierar, brutar, tamplar, croitor] ),
	member( Ct, [fierar, brutar, tamplar, croitor] ),
	member( Fc, [fierar, brutar, tamplar, croitor] ),
	member( Bc, [fierar, brutar, tamplar, croitor] ),
	member( Tc, [fierar, brutar, tamplar, croitor] ),
	member( Cc, [fierar, brutar, tamplar, croitor] ),
	Ft \= Bt, Ft \= Tt, Ft \= Ct, Bt \= Tt, Bt \= Ct, Tt \= Ct,
	Fc \= Bc, Fc \= Tc, Fc \= Cc, Bc \= Tc, Bc \= Cc, Tc \= Cc,
	Ft \= Fc, Bt \= Bc, Tt \= Tc, Ct \= Cc,
	Bt = Tc, Fc = brutar.

asemanari( [], [], 0 ).
asemanari( [X|L], [X|L1], N ) :- N1 is N - 1, asemanari( L, L1, N1 ).
asemanari( [_|L], [_|L1], N ) :- asemanari( L, L1, N ).

cuvant( [A, B, C, D, E, F] ) :-
	asemanari( [A, B, C, D, E, F], [p, e, r, u, c, a], 2 ),
	asemanari( [A, B, C, D, E, F], [p, u, r, i, c, e], 2 ),
	asemanari( [A, B, C, D, E, F], [m, u, t, a, r, e], 2 ),
	asemanari( [A, B, C, D, E, F], [m, a, t, u, s, a], 2 ),
	asemanari( [A, B, C, D, E, F], [c, a, d, a, n, a], 2 ),
	asemanari( [A, B, C, D, E, F], [m, e, d, u, z, a], 2 ),
	asemanari( [A, B, C, D, E, F], [r, e, c, u, r, s], 2 ),
	A \= B, A \= C, A \= D, A \= E, A \= F,
	B \= C, B \= D, B \= E, B \= F, C \= D, C \= E, C \= F,
	D \= E, D \= F, E \= F.


cond1( _, _, 2 ).
cond1( _, [X|_], 1 ) :- X = marlboro, cond1( [], [], 2 ).
cond1( [X|A], [_|T], 0 ) :- X \= pisica, cond1( A, T, 0 ).
cond1( [X|A], [_|T], 0 ) :- X = pisica, cond1( A, T, 1 ).

cond2( [] ).
cond2( [X], [Y] ) :- X = spaniol, Y = kent, cond2( [] ).
cond2( [X|_], [Y|_] ) :- X = spaniol, Y = kent, cond2( [] ).
cond2( [X|L], [_|L1] ) :- X \=spaniol, cond2( L, L1 ). 
cond2( [_|L], [Y|L1] ) :- Y \=kent, cond2( L, L1 ). 

cond3( [] ).
cond3( [X], [Y] ) :- X = rus, Y = iepure, cond3( [] ).
cond3( [X|_], [Y|_] ) :- X = rus, Y = iepure, cond3( [] ).
cond3( [X|L], [_|L1] ) :- X \=rus, cond3( L, L1 ). 
cond3( [_|L], [Y|L1] ) :- Y \=iepure, cond3( L, L1 ). 


case( [O1, O2, O3], [A1, A2, A3], [T1, T2, T3] ) :-
	member( O1, [englez, spaniol, rus] ),
	member( O2, [englez, spaniol, rus] ),
	member( O3, [englez, spaniol, rus] ),
	member( A1, [caine, pisica, iepure] ),
	member( A2, [caine, pisica, iepure] ),
	member( A3, [caine, pisica, iepure] ),
	member( T1, [kent, marlboro, lM] ),
	member( T2, [kent, marlboro, lM] ),
	member( T3, [kent, marlboro, lM] ),
	O1 \= O2, O1 \= O3, O2 \= O3,
	A1 \= A2, A1 \= A3, A2 \= A3,
	T1 \= T2, T1 \= T3, T2 \= T3,
	O1 = englez, cond1( [A1, A2, A3], [T1, T2, T3], 0 ),
	cond2( [O1, O2, O3], [T1, T2, T3] ),
	cond3( [O1, O2, O3], [A1, A2, A3] ).

dr( 1, 2 ).
dr( 1, 3 ).
dr( 1, 4 ).
dr( 2, 3 ).
dr( 2, 4 ).
dr( 3, 4 ).

sportivi(S) :-
	S = [[_,_,1], [_,_,2], [_,_,3], [_,_,4]],
	member( [_, bucuresti, 1], S ),
	member( [elisabeta, X, _ ], S ),
	member( X, [bucuresti, iasi, timisoara, brasov] ),
	X \= bucuresti, X \= iasi,
	member( [maria, _, 2], S ),
	member( [diana, _, 4], S ),
	member( [_, brasov, 3], S ),
	member( [liliana, _, H1], S ),
	member( [_, timisoara, H2], S ),
	member( [_, iasi, H3], S ),
	H1 < H2, H3 < H2.



	






