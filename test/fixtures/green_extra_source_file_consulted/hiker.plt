:- consult(hiker).
:- consult(checksum).
:- begin_tests(hiker).

test(answer_is_42) :- answer(42).
test(answer_digits_sum_to_six) :- answer(X), digit_sum(X, 6).

:- end_tests(hiker).
