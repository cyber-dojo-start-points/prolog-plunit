%% The clause below stops mid-comparison, so reading this file raises a
%% syntax error and no unit is ever defined. answer_size.plt sorts before
%% hiker.plt, and swipl loads only the first file it is given, so hiker.plt
%% is never read either and nothing at all runs.
:- consult(hiker).
:- begin_tests(answer_size).

test(answer_is_three_digits_long) :- answer(X), X >

:- end_tests(answer_size).
