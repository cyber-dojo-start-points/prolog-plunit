:- module(checksum, [digit_sum/2]).

digit_sum(N, Sum) :-
    number_codes(N, Codes),
    sum_digits(Codes, 0, Sum).

sum_digits([], Sum, Sum).
sum_digits([C|Cs], Acc0, Sum) :-
    Acc is Acc0 + C - 0'0,
    sum_digits(Cs, Acc, Sum).
