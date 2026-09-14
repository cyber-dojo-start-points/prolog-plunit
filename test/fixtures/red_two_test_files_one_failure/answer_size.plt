:- consult(hiker).
:- begin_tests(answer_size).

test(answer_is_two_digits_long) :- answer(X), X > 9, X < 100.
test(answer_is_three_digits_long) :- answer(X), X > 99.

:- end_tests(answer_size).
