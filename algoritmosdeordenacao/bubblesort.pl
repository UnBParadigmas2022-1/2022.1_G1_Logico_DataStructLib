
bubblesort(Lista,OrdLista):-
    trocar(Lista,Lista2),!, bubblesort(lista2,OrdLista).
maior(X,Y):- X > Y.
trocar([X,Y|Tail],[X,Y|Tail]):- maior(X,Y).

trocar([Z|Tail],[Z|Tail1]):- trocar(Tail,Tail1).





