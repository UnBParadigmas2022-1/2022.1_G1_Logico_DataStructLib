:- include(nos_arestas).

member(X, [X | _]).
member(X, [_ | Tail]) :- member(X, Tail).
solve(Node, Solution) :- dfs([], Node, Solution).
dfs(Path, Node, [Node | Path]) :- goal(Node).
dfs(Path, Node, Sol) :- s(Node, Node1), not(member(Node1, Path)), dfs([Node|Path], Node1, Sol).