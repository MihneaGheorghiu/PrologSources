reverse([],[]).
reverse([H|T],L):-reverse(T,R),append(R,[H],L).
