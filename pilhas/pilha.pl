% Operações de uma Pilha

% Fatos
stack(E, S, [E|S]).

member(X,[X|_]).

empty_stack([]). 

% Regras
member(X,[_|T]):-
    member(X,T).

member_stack(E, S) :- 
    member(E, S). 


% Como testar se a stack está vazia
% ?- empty_stack([]).
true se estiver vazia, false se tiver pelo menos 1 elemento

% Testando se um elemento faz parte da stack 
% ?- member_stack(E, S).
% true se o elemento faz parte e false caso não faça

% Testando a operação Push de um elemento na stack
% ?- stack(a, [b,c,d], S).
%    S = [a,b,c,d]  

% Testando a operação Pop de um elemento na stack     
% ?- stack(_, Rest, [a,b,c]).
%    Rest = [b,c]

% Verificando o elemento Top da stack
% ?- stack(Top, _, [a,b,c]).
%    Top = a 


