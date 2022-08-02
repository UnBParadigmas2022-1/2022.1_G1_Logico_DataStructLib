loadModules:- [grafos/big_graph, grafos/shortest_path].

menu:- loadModules, repeat,
	write('=== MENU ==='), nl,
	write('1. Grafos'), nl,
	write('2. Lista'), nl,
	write('0. Exit'), nl,
	read(X),
	option(X),
	X==0,
	!.

option(0):- !.
option(1):- menuGrafos, !.
option(2):- menuLista, !.
option(_):- write('It is not an acceptable option'), nl, !.

menuGrafos:- repeat,
	write('=== GRAFOS ==='), nl,
	write('1. Shortest Path'), nl,
	write('2. Any Path'), nl,
	write('0. Exit'), nl,
	read(X),
	optionGrafos(X),
	X==0,
	!.

optionGrafos(0) :- !.
optionGrafos(1) :- time(findShortestPath(18,65,1,P)), write(P), nl, !.
optionGrafos(2) :- time(path(18,65,[18],CaminhoPercorrido2,_)),reverseList(CaminhoPercorrido2, [], CaminhoPercorrido), write(CaminhoPercorrido), nl, !.
optionGrafos(_) :- write('Opção inválida'), nl, !.

menuLista:- repeat,
	write('=== LISTA ==='), nl,
	write('1. Criar uma lista com 1000 elementos'), nl,
	write('2. Adiciona um valor a lista'), nl,
	write('3. Remove último elemento da lista'), nl,
	write('4. Implementa reverse na lista'), nl,
	write('5. Pegar maior valor da lista'), nl,
	write('0. Exit'), nl,
	read(X),
	optionLista(X),
	X==0,
	!.

optionLista(0) :- !.
optionLista(1) :- !.
optionLista(2) :- !.
optionLista(3) :- !.
optionLista(4) :- !.
optionLista(5) :- !.
optionLista(_) :- write('Opção inválida'), nl, !.
