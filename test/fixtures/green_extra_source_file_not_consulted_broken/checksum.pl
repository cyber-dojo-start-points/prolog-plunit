%% The clause below is missing its final term and its full stop, so this file
%% raises a syntax error whenever it is read. It stays green because nothing
%% reads it: cyber-dojo.sh globs *.plt, and no .plt file consults checksum.
:- module(checksum, [digit_sum/2]).

digit_sum(N, Sum) :- Sum is N +
