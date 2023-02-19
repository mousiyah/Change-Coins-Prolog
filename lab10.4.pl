change([], 0, []).

change([(K,C)|Cs], X, [N|Ns]) :-
  X > 0,
  K > 0,
  K1 is K - 1,
  X1 is X - C,
  change([(K1,C)|Cs],X1,[N1|Ns]),
  N is N1 + 1.
change([(K,C)|Cs], X, [0|Ns]) :-
  change(Cs, X, Ns).
