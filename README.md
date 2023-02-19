# Change-Coins-Prolog
Write a Prolog program for a predicate change/3 such that change(Cs,X,Ns)<br>
holds if and only if:<br>
- Cs is a list of pairs (K,C) where C represents the denominations of a coin<br>
and K represents the number of coins available of that denomination. For<br>
example if Cs = [(2,10),(3,5),(8,2)], this means that we have two 10p<br>
coins, three 5p coins and eight 2p coins.<br>
- X is a nonnegative integer representing an amount of money.<br>
- Ns is a list of nonnegative integers, of the same length as Cs, saying how the<br>
amount X can be composed from the available coins.<br>
For example, the query<br>
?- change([(2,10),(3,5),(8,2)],37,Ns).<br>
should yield the answers<br>
Ns = [2, 3, 1] ;<br>
Ns = [2, 1, 6] ;<br>
Ns = [1, 3, 6] ;<br>
false.<br>
since<br>
37 = 2 ∗ 10 + 3 ∗ 5 + 1 ∗ 2<br>
= 2 ∗ 10 + 1 ∗ 5 + 6 ∗ 2<br>
= 1 ∗ 10 + 3 ∗ 5 + 6 ∗ 2<br>
and no other solution is possible (for example, 37 = 1 ∗ 10 + 1 ∗ 5 + 11 ∗ 2 but<br>
[1,1,11] isn’t a valid solution since there are only eight 2p coins available).
