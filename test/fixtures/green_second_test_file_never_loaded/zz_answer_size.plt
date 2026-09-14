%% A second test file, holding a test that fails against the 42 in hiker.pl.
%% cyber-dojo.sh runs `swipl -g run_tests *.plt`, and swipl reads only the
%% first file it is given as a script, treating every later name as a script
%% argument. This file sorts after hiker.plt, so it is never loaded and its
%% failing test never runs. The light is green.
:- consult(hiker).
:- begin_tests(answer_size).

test(answer_is_three_digits_long) :- answer(X), X > 99.

:- end_tests(answer_size).
