
concatenar([],Lista,Lista).                                          %lista vazia [] e duas lista iguais 
concatenar([Elemento|Lista1],Lista2,[Elemento|Lista3]) :-            %concatena elementos de lista 1 e 2 e retorna em lista3
        concatenar(Lista1,Lista2,Lista3).
maior(X,Y):- X > Y.                                                  %verifica se x e maior que y se for concatena a lista de forma que elemento 
bubblesort(L1,L2):-                                                  %B seja invertido de possição com elemento A
    concatenar(U,[A,B|V],L1),
    maior(A,B),
    concatenar(U,[B,A|V],M),
    bubblesort(M,L2),!.                                              %cut 
bubblesort(L1,L1).                                                   
