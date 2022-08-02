:- [lista].

testeCriaLista(List) :-
  open('assets/mil_elementos.txt',read,Str),
    read(Str,List),
    close(Str),
    write(List),
    create_list(List), nl.