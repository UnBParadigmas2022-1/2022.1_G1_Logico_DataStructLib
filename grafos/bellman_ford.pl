edge(a,b,2).
edge(b,c,2).
edge(a,c,2).
edge(b,d,2).
edge(c,e,2).
edge(d,e,2).
edge(e,b,2).

% Se tem uma aresta ligando a Origem ao Destino, defina que um CaminhoPercorrido = O nó de destino + os nós visitados
% (Visitados = Os nós percorridos pelo backtracking até então) .
path(Origem,Destino,Visitados,[Destino|Visitados]):-edge(Origem,Destino,_).

% Se existe uma aresta ligando a Origem a um ponto internmediário X; e X != Destino (reduz o backtracking, uma vez que essa é a condição base);
% e X não foi visitado ainda; e existe uma aresta ligando X ao Destino (Recursão). 
path(Origem,Destino,Visitados,CaminhoPercorrido):-edge(Origem,X,_), X\=Destino, not(member(X,Visitados)),path(X,Destino,[X|Visitados], CaminhoPercorrido). 

not(P):-P,!,fail;true.

% Adiciona L1 a L2, Setando L3
append([], L2, L2).
append([H1|T1], L2, [H1|T3]):-append(T1, L2, T3).

% Retorna verdadeiro se X é parte de L
member(X,L):-append(_, [X|_], L).
