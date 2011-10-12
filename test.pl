male(harry).
male(phil).

female(liz).

parent(phil, chas).
parent(liz, chas).
parent(chas, harry).

mother(M, C) :- female(M), parent(M, C).
grandmother(GM, C) :- mother(GM, P), parent(P, C).

first([First|Rest], First).

second([First, Second|Rest], Second).

tail([First|Tail], Tail).

ancestor(A, D) :- parent(A, C), ancestor(C, D).

member(Item, List) :- List = [Item|Rest].
member(Item, [_|Tail]) :- member(Item, Tail).

append([], X, X).
append([Head|Tail], X, [Head|Result]) :- append(Tail, X, Result).

