/* Big and not so big animals */


:- consult('bigger.pl').

is_bigger(X, Y) :- bigger(X, Y).
is_bigger(X, Y) :- bigger(X, Z), is_bigger(Z, Y).

% The following rule does not work... because it does not implement transitive closure (recursive calls)
%is_bigger(X, Y) :- bigger(X, Z), bigger(Z, Y).

% Queries
%?- is_bigger(donkey, dog).
%true

%?- is_bigger(monkey, elephant).
%false

%?- is_bigger(elephant, monkey).
%true

%?- is_bigger(X, donkey).
%X = horse ;
%X = elephant ;
%false.

%?- is_bigger(donkey, X), is_bigger(X, monkey).
%No

%?- is_bigger(horse, X), is_bigger(X, dog).
%X = donkey
%Yes




