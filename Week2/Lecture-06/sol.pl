


% Fact
first(H, mylist(H, Tail)).

first(H, [H | Tail]).

%?- first(X, mylist(a, mylist(b, mylist(c, empty)))).
% ?- first(X, [a, b, c]).

del(empty, L, L).

del(empty, empty, empty).

del(X, mylist(X, Tail), Tail).

del(X, mylist(H, T), mylist(H, T1)) :-
	del(X, T, T1).
	
% ?- del(b, mylist(a, mylist(b, empty)), Z).







