es_est(kick, modelos, [3.5,30,2.5,37,1.2,38]).
es_est(kick1, mdl, [3,33,5,65,1.3,33]).
es_est(kick2, los, [4.5,32,3,35,1.4,34]).
es_est(kick3, mode, [5,31,2,31,1.5,32]).
es_est(kick4, m, []).
nota(Result):-findall(Nota, es_est(_, _, Nota), Result).
