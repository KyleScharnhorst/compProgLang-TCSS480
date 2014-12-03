val seed = Random.rand(1,42);

fun dominoes(n: int) =
    let
	    fun buildTuple(upper: int, lower: int) =
	        if upper = 0 andalso lower = 0 then [(0,0)]
	        else if upper > 0 andalso lower = 0 then (upper, lower)::buildTuple(upper-1, upper-1)
	        else (upper, lower)::buildTuple(upper, lower-1);
    in
	    if n < 0 then []
	    else buildTuple(n,n)
    end    
    
fun permutation(dominoes: (int * int) list) =
	if length(dominoes) > 1 then
	    let
		    val random = Random.randRange(0,length(dominoes)-1);
		    val indexOne = random seed;      
	    in
	       List.nth(dominoes,indexOne)::permutation((List.take(dominoes, indexOne)@List.drop(dominoes, indexOne+1)))
	    end
	else dominoes
	
fun isLoop(dominoes: (int * int) list) =
    let
        fun checkInner(someList: (int * int) list) =
            if length someList = 1 then true
		    else if #1(hd someList) = #1(hd(tl someList)) then checkInner(tl someList)
		    else if #1(hd someList) = #2(hd(tl someList)) then checkInner(tl someList)
		    else if #2(hd someList) = #1(hd(tl someList)) then checkInner(tl someList)
		    else if #2(hd someList) = #2(hd(tl someList)) then checkInner(tl someList)
		    else false 
    in
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
    
flip(dominoes: (int * int) list) = 

    
    
    