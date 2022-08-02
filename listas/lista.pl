% Adiciona elementos a uma lista pré-definida e retorna lista
create_list([L]) :- append(_, [L]).

% Remove último elemento de uma lista
last_element(L,X) :- append(_,[X],L).

% Implementa reverse na lista
reverse_list([],[]).
reverse_list(L,[X|RL]) :- last_element(L,X), removeLast(L, NewL), reverse_list(NewL, RL).
removeLast(L,NewL) :- append(NewL, [_], L).