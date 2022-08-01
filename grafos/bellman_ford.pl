edge(a,b,2).
edge(b,c,2).
edge(a,c,2).
edge(b,d,2).
edge(c,e,2).
edge(e,b,2).

path(S,G) :- edge(S, G, _).
path(S,G) :- edge(S,X), path(X,G).

append([], L2, L2).
append([H1|T1], L2, [H1|T3]):-app(T1, L2, T3).

member(X,L):-append(_, [X|_], L).

prefix(L1, L):-append(L1,_,L).
suffix(L1, L):-append(_,L1,L).

sublist(L1, L):-append(LY,_,L),app(_,L1,LY).

