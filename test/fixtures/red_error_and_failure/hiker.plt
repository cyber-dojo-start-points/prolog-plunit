:- consult(hiker).
:- begin_tests(hiker).

test(answer_is_42) :- answer(42).
test(answer_plus_bananas) :- answer(X), Y is X + bananas, Y > 0.

:- end_tests(hiker).
