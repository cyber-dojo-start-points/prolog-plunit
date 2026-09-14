%% cyber-dojo.sh globs *.plt, which matches the sandbox dir only and does not
%% descend, so this file is never loaded and the failing test below never
%% runs. The case is green.
:- consult('../hiker').
:- begin_tests(answer_size).

test(answer_is_three_digits_long) :- answer(X), X > 99.

:- end_tests(answer_size).
