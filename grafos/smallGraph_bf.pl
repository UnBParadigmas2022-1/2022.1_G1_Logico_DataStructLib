aresta('1','2',3).
aresta('2', '3', 2).

isConnected(A, B) :- aresta(A,B,_).
