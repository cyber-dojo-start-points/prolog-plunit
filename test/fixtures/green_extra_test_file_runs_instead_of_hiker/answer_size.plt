%% A second test file. cyber-dojo.sh runs `swipl -g run_tests *.plt`, and
%% swipl loads only the first file it is given as a script, treating every
%% later name as a script argument. This file sorts before hiker.plt, so it
%% is the one loaded and hiker.plt is never read: the answer_size unit runs
%% and the hiker unit does not appear in the output at all.
:- consult(hiker).
:- begin_tests(answer_size).

test(answer_is_two_digits_long) :- answer(X), X > 9, X < 100.

:- end_tests(answer_size).
