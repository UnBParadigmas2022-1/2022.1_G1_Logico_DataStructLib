member_dfs(X, [X | _]).
member_dfs(X, [_ | Tail]) :- member_dfs(X, Tail).
solve_dfs(Node, Solution) :- dfs([], Node, Solution).
dfs(Path, Node, [Node | Path]) :- goal(Node).
dfs(Path, Node, Sol) :- edge(Node, Node1, _), not(member_dfs(Node1, Path)), dfs([Node|Path], Node1, Sol).