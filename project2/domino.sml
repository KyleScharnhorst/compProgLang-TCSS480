(* 
   Kyle Scharnhorst
   Project 2 - dominoes loop
   11/30/14
*)

(*global seed to make sure when ever permutation is called that it is different*)
val seed = Random.rand(1,42);

(*given an integer, returns a list of tuples containing all the tiles in the set of
double-N*)
fun dominoes(n: int) =
    let
        (*helper function builds the domino tuples. Does so by decrementing lower int
        until it reaches zero, then decrements upper value and resets the lower value to the
        upper value and repeats until (0,0) is reached*)
	    fun buildTuple(upper: int, lower: int) =
	        if upper = 0 andalso lower = 0 then [(0,0)]
	        else if upper > 0 andalso lower = 0 then (upper, lower)::buildTuple(upper-1, upper-1)
	        else (upper, lower)::buildTuple(upper, lower-1);
    in
	    if n < 0 then []
	    else buildTuple(n,n) (*makes this process easier by creating a helper that takes n in twice*)
    end    

(*given a list of tuples, returns a reordered list of tuples, e.g. given a list
from the bullet above*)    
fun permutation(dominoes: (int * int) list) =
	if length(dominoes) > 1 then
	    let
		    val random = Random.randRange(0,length(dominoes)-1);
		    val indexOne = random seed;      
	    in
	       (*randomly get an index and remove it from where it was in the list and
	       append it to the front of the list after recursively doing that for all but the last
	       element in the list. Shuffles them quite well.*)
	       List.nth(dominoes,indexOne)::permutation((List.take(dominoes, indexOne)@List.drop(dominoes, indexOne+1)))
	    end
	else dominoes

(*given a list of tuples, returns true if tuples form a ring, as described in the
problem definition above or false otherwise*)	
fun isLoop(dominoes: (int * int) list) =
    let
        (*iterate through tuples making sure a tuple will match up with the next one*)
        fun checkInner(someList: (int * int) list) =
            if length someList = 1 then true
		    else if #1(hd someList) = #1(hd(tl someList)) then checkInner(tl someList)
		    else if #1(hd someList) = #2(hd(tl someList)) then checkInner(tl someList)
		    else if #2(hd someList) = #1(hd(tl someList)) then checkInner(tl someList)
		    else if #2(hd someList) = #2(hd(tl someList)) then checkInner(tl someList)
		    else false 
    in
        (*Checks first and last tuples match up*)
	    if null dominoes then false
	    else if length dominoes = 1 
	        then 
	            if #1 (hd dominoes) = #2 (hd dominoes) then true 
	            else false
	    else if #1(hd dominoes) = #1(List.last dominoes) 
	    orelse #1 (hd dominoes) = #2(List.last dominoes) 
	    orelse #2 (hd dominoes) = #1(List.last dominoes) 
	    orelse #2 (hd dominoes) = #2(List.last dominoes) 
	    then checkInner(dominoes)
	    else false
    end

(*given a list of tuples that form a loop, returns a list with tiles that are flipped
where appropriate to make the loop self-evident*)    
fun flip(dominoes: (int * int) list) = 
    if null dominoes then []
    else if length dominoes = 1 then dominoes
    else dominoes
    
    
    
    