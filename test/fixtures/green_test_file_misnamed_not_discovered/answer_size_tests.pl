%% This file holds perfectly good plunit tests, one of which fails, but its
%% extension is .pl rather than .plt. cyber-dojo.sh globs *.plt, so the file
%% is never loaded and the failing test never runs. The case is green.
:- consult(hiker).
:- begin_tests(answer_size).

test(answer_is_three_digits_long) :- answer(X), X > 99.

:- end_tests(answer_size).
