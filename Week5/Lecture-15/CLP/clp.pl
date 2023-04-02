

/*


?- X+1 = 5.
false.

?- X+1 is 5.
false.

?- X is 4+1.
X = 5.

% With CLP - Constraint Logic Programming

?- use_module(library(clpr)).

?- {X + 1 = 5}.
X = 4.0

% To include in a file do the following:
%:- use_module(library(clpr)).

*/



%   We could also reason over integers, using SWI-Prolog CLP-FD (Finite Domain) constraints.

% Available in SWI-Prolog
:- use_module(library(clpfd)).

/*
?- X + 1 #= 5.
X = 4
*/


/*
%
% ANOTHER OPEN SOURCE LIBRARY 
%
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
%   We could also reason over integers, we use CLP(ℤ) constraints.
%
%   For more information, see:
%
%   https://www.metalevel.at/prolog/clpz
%   ====================================
%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

% *NOT* Available in SWI-Prolog
?- use_module(library(clpz)).

?- {X + 1 = 5}.

*/







