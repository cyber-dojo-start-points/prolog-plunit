:- consult(hiker).
:- begin_tests(hiker).

test(answer_is_42) :- answer(42), halt(3).
test(answer_is_positive) :- answer(X), X > 0.

:- end_tests(hiker).
