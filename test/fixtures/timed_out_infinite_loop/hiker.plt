%% spin/0 backtracks into repeat/0 for ever without growing any stack, so the
%% test never finishes and never runs out of memory. The runner stops it at
%% max_seconds and the kata times out.
:- consult(hiker).
:- begin_tests(hiker).

spin :- repeat, fail.

test(answer_is_42) :- spin, answer(42).

:- end_tests(hiker).
