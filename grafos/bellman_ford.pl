edge(a,b,2).
edge(b,c,2).
edge(a,c,2).
edge(b,d,2).
edge(c,e,2).
edge(d,e,2).
edge(e,b,2).

% Se tem uma aresta ligando a Origem ao Destino, defina que um CaminhoPercorrido = O nó de destino + os nós visitados
% (Visitados = Os nós percorridos pelo backtracking até então); em uma distância percorrida de 1.
path(Origem,Destino,Visitados,[Destino|Visitados],1):-edge(Origem,Destino,_).
% Se existe uma aresta ligando a Origem a um ponto internmediário X; e X != Destino (reduz o backtracking, uma vez que essa é a condição base);
% e X não foi visitado ainda; e existe uma aresta ligando X ao Destino (Recursão); percorrando o CaminhoPercorrido de nós em uma distância total Distancia. 
path(Origem,Destino,Visitados,CaminhoPercorrido,Distancia):-edge(Origem,X,_), 
  X\=Destino, 
  not(member(X,Visitados)),
  path(X,Destino,[X|Visitados], CaminhoPercorrido, NovaDistancia),
  Distancia is NovaDistancia+1.

% Reverte o caminho para que o CaminhoPercorrido seja retornado corretamente
reverseList([], A, A). 
reverseList([H|T], A, L2):-reverseList(T, [H|A], L2).

% Clausula NOT para limitar o backtrack apenas nos nós que NÃO foram visitados ainda
not(P):-P,!,fail;true.

% Adiciona L1 a L2, Setando L3
append([], L2, L2).
append([H1|T1], L2, [H1|T3]):-append(T1, L2, T3).

% Retorna verdadeiro se X é parte de L
member(X,L):-append(_, [X|_], L).
