:- consult(hiker).
:- begin_tests(hiker).

test(answer_is_42) :- answer(42).
test(answer_is_not_the_question) :- answer(X), X =\= 6 * 9.

:- end_tests(hiker).
