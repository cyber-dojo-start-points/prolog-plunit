:- consult(hiker).
:- begin_tests(hiker).

test(answer_is_a_number) :- answer(X), number(X).
test(answer_is_positive) :- answer(X), X > 0.
test(answer_is_42) :- answer(42).

:- end_tests(hiker).
