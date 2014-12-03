% assignment 7 exercise 4.3
% Write a predicate second(X,List) which checks whether X is the
% second element of List .

second(X, List):-
List = [_,X|_].

% second(b, []). - false
% second(c, [a,b,c]). - false
% second(b, [a,b,c]). - true
% second(b, [a,b]). - true
% second(b, [a]). - false
