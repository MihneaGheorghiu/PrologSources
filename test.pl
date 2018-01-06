inversare([],[]).
inversare([H|R],L):-inversare(R,L),append(R,[H],L).

