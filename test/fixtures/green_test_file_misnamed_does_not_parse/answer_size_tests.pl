%% A half-written test file: the clause below stops mid-term, so reading this
%% file raises a syntax error. Its extension is .pl rather than .plt, and
%% cyber-dojo.sh globs *.plt, so it is never read and the case stays green.
:- consult(hiker).
:- begin_tests(answer_size).

test(answer_is_three_digits_long) :- answer(X), X >
