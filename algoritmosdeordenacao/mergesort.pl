% Retirado de https://gist.github.com/Leonidas-from-XIV/4585246 com modificações.

splitlist(L, [], L, 0).
splitlist([H|T], [H|A], B, N) :- Nminus1 is N-1, splitlist(T, A, B, Nminus1).

halfhalf(L, A, B) :- length(L, Len), Half is Len//2, splitlist(L, A, B, Half).

merge(A, [], A).
merge([], B, B).
merge([Ha|Ta], [Hb|Tb], R) :- Ha =< Hb, merge(Ta, [Hb|Tb], M), R = [Ha|M].
merge([Ha|Ta], [Hb|Tb], R) :- Ha > Hb, merge(Tb, [Ha|Ta], M), R = [Hb|M].

mergeSort([], []).
mergeSort([E], [E]).
mergeSort([H1, H2], [H1, H2]) :- H1 =< H2.
mergeSort([H1, H2], [H2, H1]) :- H1 > H2.
mergeSort(L, R) :- halfhalf(L, A, B), mergeSort(A, Asort), mergeSort(B, Bsort), merge(Asort, Bsort, R).
