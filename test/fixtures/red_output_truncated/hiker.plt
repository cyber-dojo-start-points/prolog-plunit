%% The test fails, and it prints far more than the runner keeps: the runner
%% holds the first 50K of each stream and drops the rest, and plunit writes
%% its whole report to stderr, so the noise below shares a stream with the
%% line the rag-lambda reads.
%%
%% The light is still red. plunit captures a test's own output and replays it
%% underneath the report of the test that failed, so the report is at the head
%% of the stream, ahead of the noise, and it is the noise that is cut off.
:- consult(hiker).
:- begin_tests(hiker).

test(answer_is_42) :-
    forall(between(1, 20000, N),
           format(user_error, "noise on line ~w of a very chatty test~n", [N])),
    answer(42).

:- end_tests(hiker).
