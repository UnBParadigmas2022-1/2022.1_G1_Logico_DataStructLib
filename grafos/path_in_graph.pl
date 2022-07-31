path(_, N, N) :- !.
path(G, N1, N2) :- select([N1, N3], G, G1), path(G1, N3, N2), !.
