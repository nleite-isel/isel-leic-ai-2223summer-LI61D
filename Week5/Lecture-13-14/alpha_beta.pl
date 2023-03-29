% The alpha-beta algorithm

alphabeta( Pos, Alpha, Beta, GoodPos, Val) :-
	moves( Pos, PosList), !,
	boundedbest( PosList, Alpha, Beta, GoodPos, Val)
	; % Or
	staticval( Pos, Val).       % Static value of Pos
	

boundedbest( [Pos | PosList], Alpha, Beta, GoodPos, GoodVal) :-
	alphabeta( Pos, Alpha, Beta, _, Val),
	goodenough( PosList, Alpha, Beta, Pos, Val, GoodPos, GoodVal).


goodenough( [], _, _, Pos, Val, Pos, Val) :- !.   % No other candidate


goodenough( _, Alpha, Beta, Pos, Val, Pos, Val) :-
	min_to_move( Pos), Val > Beta, !   % Maximizer attained upper bound
	; % Or
	max_to_move( Pos), Val < Alpha, !. % Minimizer attained lower bound


goodenough( PosList, Alpha, Beta, Pos, Val, GoodPos, GoodVal) :-
	newbounds( Alpha, Beta, Pos, Val, NewAlpha, NewBeta),     % Refine bounds
	boundedbest( PosList, NewAlpha, NewBeta, Pos1, Val1),
	betterof( Pos, Val, Pos1, Val1, GoodPos, GoodVal).


newbounds( Alpha, Beta, Pos, Val, Val, Beta) :-
	min_to_move( Pos), Val > Alpha, !.         % Maximizer increased lower bound



newbounds( Alpha, Beta, Pos, Val, Alpha, Val) :-
	max_to_move( Pos), Val < Beta, !.          % Minimizer decreased upper bound
	
	
	
newbounds( Alpha, Beta, _, _, Alpha, Beta). % Otherwise bounds unchanged


betterof( Pos, Val, Pos1, Val1, Pos, Val) :-   % Pos better than Pos1
	min_to_move( Pos), Val > Val1, !
	; % Or
	max_to_move( Pos), Val < Val1, !.


betterof( _, _, Pos1, Val1, Pos1, Val1). % Otherwise Pos1 better














































