male(mubarak).
male(saad).
male(fahad).
male(nawaf).

female(hessa).
female(shoug).
female(farah).
female(joud).

parent(hessa, shoug).
parent(hessa, farah).
parent(hessa, saad).
parent(hessa, joud).
parent(hessa, fahad).
parent(mubarak, shoug).
parent(mubarak, farah).
parent(mubarak, saad).
parent(mubarak, joud).
parent(mubarak, fahad).
parent(fahad, nawaf).


father(F, C) :- parent(F, C), male(F).
mother(M, C) :- parent(M, C), female(M).

sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- male(X), parent(Z, X), parent(Z, Y), X \= Y.



