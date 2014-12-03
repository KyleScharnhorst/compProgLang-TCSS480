% assignment 7 exercise 4.4
% Write a predicate swap12(List1,List2) which checks whether List1 is
% identical to List2 , except that the first two elements are
% exchanged.

swap12(List1, List2):-
List1 = [A,B|C], List2 = [B,A|C].

% swap12([1,2], [2,1]) - true
% swap12([1,2], [2,1,3]) - false
% swap12([1,2,3], [2,1,3]). - true
% swap12([1,2,3], [2,1,3,4]) - false
% swap12([1,2,3,4], [2,1,3,4]). - true
% swap12([1,2,3,4], [1,1,3,4]). - false