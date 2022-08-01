loadModules:- [grafos/shortest_path].

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
	write('0. Exit'), nl,
	read(X),
	optionGrafos(X),
	X==0,
	!.

optionGrafos(0) :- !.
optionGrafos(1) :- findShortestPath(a,e,1,P), write(P), nl, !.
optionGrafos(_) :- write('Opção inválida'), nl, !.

