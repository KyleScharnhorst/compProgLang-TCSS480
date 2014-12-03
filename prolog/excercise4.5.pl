% assignment 7 exercise 4.5

%Write a predicate listtran(G,E) which translates a list of German number words to the corresponding list of English number words. For example:

%   listtran([eins,neun,zwei],X).
%should give:

%   X  =  [one,nine,two].
%Your program should also work in the other direction. For example, %if you give it the query

%   listtran(X,[one,seven,six,two]).
%it should return:

 %  X  =  [eins,sieben,sechs,zwei].
%(Hint: to answer this question, first ask yourself “How do I translate the empty list of number words?”. That’s the base case. For non-empty lists, first translate the head of the list, then use recursion to translate the tail.)

tran(eins,one). 
tran(zwei,two). 
tran(drei,three). 
tran(vier,four). 
tran(fuenf,five). 
tran(sechs,six). 
tran(sieben,seven). 
tran(acht,eight). 
tran(neun,nine).

% translate german to english
listtran(G,E):-
[H|T] = G, tran(H,E).


% translate english to german
%listtran(G,E):-
%is_list(E), not(is_list(G)).