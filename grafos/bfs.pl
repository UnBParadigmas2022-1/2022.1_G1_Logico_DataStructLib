solve_bfs(Start, Solution):- bfs([[Start]], Solution).

bfs([[Node | Path] | _ ], [Node | Path]):- goal(Node).
bfs([Path | Paths], Solution) :- extend(Path, NewPaths), conc(Paths,NewPaths,Paths1), bfs(Paths1,Solution).
extend([Node | Path], NewPaths) :- bagof([NewNode, Node | Path], (edge(Node, NewNode,_) , not(member_dfs(NewNode, [Node | Path]))), NewPaths), !. extend(_, []).
conc([], L, L).
conc([X | L1], L2, [X | L3]) :- conc(L1,L2,L3).