:- consult(hiker).
:- begin_tests(hiker).

test(answer_is_42) :- answer(X), Y is X + bananas, Y =:= 42.

:- end_tests(hiker).
