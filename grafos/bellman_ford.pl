edge(a,b,2).
edge(b,c,2).
edge(a,c,2).
edge(b,d,2).
edge(c,e,2).
edge(e,b,2).

path(S,G,_):-edge(S,G,_).
path(S,G,V):-edge(S,X,_), X\=G, not(member(X,V)),path(X,G,[X|V]). 

not(P):-P,!,fail;true.

% Append L1 to L2 returning L3.
append([], L2, L2).
append([H1|T1], L2, [H1|T3]):-append(T1, L2, T3).

% Returns true if X is member of L
member(X,L):-append(_, [X|_], L).

% prefix and suffix find
prefix(L1, L):-append(L1,_,L).
suffix(L1, L):-append(_,L1,L).

