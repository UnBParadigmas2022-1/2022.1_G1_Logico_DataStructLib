last_element(L,X) :- append(_,[X],L).
reverse_list([],[]).
reverse_list(L,[X|RL]) :- last_element(L,X), removeLast(L, NewL), reverse_list(NewL, RL).
removeLast(L,NewL) :- append(NewL, [_], L).