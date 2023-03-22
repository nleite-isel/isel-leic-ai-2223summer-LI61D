

board([[1, 2, 3], [4, 5, 6]]).


getElement_nth0(B, RowIdx, ColIdx, E0) :-
	nth0(RowIdx, B, Row), % Get row
	nth0(ColIdx, Row, E0). % Index at row	
	

getElement_nth1(B, RowIdx, ColIdx, E1) :-
	nth1(RowIdx, B, Row), % Get row
	nth1(ColIdx, Row, E1). % Index at row	


% Cut
mypredicate(N, Win) :-
	N == 1, Win = true, !    % Cut backtrack if N == 1, and set Win = true
	; % Or
	Win = false.    % Else, set Win = false




/*
% Queries
%

?- board(B), getElement_nth0(B, 1, 2, E0), getElement_nth1(B, 1, 2, E1). 
B = [[1, 2, 3], [4, 5, 6]],
E0 = 6,
E1 = 2.



?- write('Enter a number, if == 1 you Win!'), nl, read(X), mypredicate(X, Win).

Enter a number, if == 1 you Win!
|: 1
|: .

X = 1,
Win = true.

----
?- write('Enter a number, if == 1 you Win!'), nl, read(X), mypredicate(X, Win).
Enter a number, if == 1 you Win!
|: 2
|: .

X = 2,
Win = false.


*/



