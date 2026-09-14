%% The call below is left unclosed, so reading this file raises a syntax
%% error and the unit is never defined. swipl still exits 0, and the
%% rag-lambda calls exit 0 green, so a test file the learner has broken
%% shows a green light with nothing run at all.
:- consult(hiker).
:- begin_tests(hiker).

test(answer_is_42) :- answer(

:- end_tests(hiker).
