loadModules:- [grafos/big_graph, grafos/shortest_path].

menu:- loadModules, repeat,
	write('=== MENU ==='), nl,
	write('1. Grafos'), nl,
	write('2. Option B'), nl,
	write('0. Exit'), nl,
	read(X),
	option(X),
	X==0,
	!.

option(0):- !.
option(1):- menuGrafos, !.
option(2):- write('You choose the option B...'), nl, !.
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
optionGrafos(2) :- time(path(18,65,[18],CaminhoPercorrido,_)), write(CaminhoPercorrido), nl, !.
optionGrafos(2) :- repeat, time(path(18,65,[18],CaminhoPercorrido2,_)),reverseList(CaminhoPercorrido2, [], CaminhoPercorrido), write(CaminhoPercorrido), nl, !.
optionGrafos(_) :- write('Opção inválida'), nl, !.


