
% Retirado de https://stackoverflow.com/questions/42886983/selection-sort-in-prolog

ssort([],[]).
ssort([M1|S],[H|T]):-min(H,T,M1),remove(M1,[H|T],N),ssort(S,N).

min(M,[],M).
min(M,[H|T],M1):-min2(M,H,N),min(N,T,M1).

min2(A,B,A):-less(A,B).
min2(A,B,B):-not(less(A,B)).

less(A,B):-(A<B).

append([],B,B).
append([H|A],B,[H|AB]):-append(A,B,AB).

remove(X,L,N):-append(A,[X|B],L),append(A,B,N).
