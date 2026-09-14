:- consult(hiker).

%% A directive runs while the file is being loaded, before any test starts,
%% so this line reaches stderr and is there in the output. plunit captures
%% whatever a test itself writes and keeps it only to print beneath a report
%% of a test that failed, so the line inside the passing test below is
%% captured and dropped.
:- format(user_error, "debug: loaded the hiker module~n", []).

:- begin_tests(hiker).

test(answer_is_42) :-
    format(user_error, "debug: asking the ship computer~n", []),
    answer(42).

:- end_tests(hiker).
