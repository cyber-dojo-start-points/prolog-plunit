:- consult(hiker).
:- begin_tests(hiker).

test(answer_is_42) :- answer(42).
test(answer_divides_by_seven) :- answer(X), X mod 7 =:= 0.
test(answer_is_under_fifty) :- answer(X), X < 50.

:- end_tests(hiker).
