contains(katarina, olga).
contains(olga, natasha).
contains(natasha, irina).
contains(irina, yulia).
contains(yulia, anastasia).

% in (A, B) whether B is in A directly or indirectly

contained(X, Y):- contains(X, Y).
contained(X, Y):- contains(X, Z), contained(Z,Y).
