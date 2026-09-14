:- consult(hiker).
:- begin_tests(hiker).

test(answer_is_42, [blocked('waiting on the ship computer')]) :- answer(42).

:- end_tests(hiker).
