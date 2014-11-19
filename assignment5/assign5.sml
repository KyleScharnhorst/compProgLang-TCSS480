(*1*)
fun addIntOptions(a : int option, b : int option) =
	if a = NONE andalso b = NONE then NONE
	else if a = NONE andalso b <> NONE then b
	else if a <> NONE andalso b = NONE then a
	else SOME (valOf(a) + valOf(b));

(*2*)
fun oldest(l: (int*int*int) list) =
	if null l then NONE
	else 
		let fun getDate (d : (int*int*int) list, max_date: (int*int*int))  =
				if #3 (hd d) < #3 max_date then (hd d)
				else if #3 (hd d) = #3 max_date andalso #2 (hd d) < #3 max_date then (hd d)
				else if #3 (hd d) = #3 max_date andalso #2 (hd d) = #3 max_date andalso #1 (hd d) < #1 max_date then (hd d)
				else max_date
		in
			SOME (getDate(tl l, hd l))
		end;

(*3*)
fun binary(n : int) =
	let
		fun iter (0, bin) = bin
		|iter(num, bin) = iter((num div 2), (Int.toString(num mod 2) ^ bin))
	in 
		if n = 0 then (n >= 0, "0")
		else (n >= 0 , iter(abs n, ""))
	end;	
		
(*4*)
fun isYounger(date: int*int*int, date2: int*int*int) =
	case #3 date > #3 date2 of
	true => true
	|false => case #2 date > #2 date2 of
		true => true
		|false => case #1 date > #1 date2 of
			true => true
			|false => false;
(*5*)

fun getnth ([], n) = "no such element"
	|getnth(l, 1) = hd l
	|getnth(l, 0) = "no such element"
	|getnth(l, n) = getnth(tl l, n - 1);

(*6*)
(*
fun sumCards l =
	if null l then 0
	else 
	let
		fun getVal s =
			case s of
			"8" => 50
			|"King" => 10
			|"Queen" => 10
			|"Jack" => 10
			|"Ace" => 1
			|_ => valOf(Int.fromString(s))
		in
			getVal(hd l) + sumCards(tl l)
		end;

datatype cardrank = Ace | King | Queen | Jack | Num of int;

fun sumCards l =
	if null l then 0
	else let getVal(Num(n)) = n
		|getVal(King) = 10
		|getVal(Queen) = 10
		|getVal(Jack) = 10
		|getVal(Ace) = 1
		|getVal(Num(8)) = 50
		in
			getVal(hd l) + sumCards(tl l)
		end;
		
*)
(*7*)
(*
datatype 'a bstree = Empty | Node of 'a * 'a bstree * 'a bstree


datatype 'a tree = Node of {data:'a, left:'a tree, right:'a tree}
                 | Leaf
fun insert(tree : 'a tree, compare, data : 'a) = 
    let fun i(Leaf) = Node{data=data, left=Leaf, right=Leaf}
          | i(Node{data=nodedata,left=left,right=right}) = 
                (case compare(data, nodedata) of
                      LESS    => Node{data=nodedata, left=i(left), right=right}
                    | GREATER => Node{data=nodedata, left=left, right=i(right)}
                    | EQUAL   => Node{data=nodedata, left=left, right=right})
    in
        i(tree)
    end;

fun sumtree a' tree = 0
  | sumtree (Node(x, left, right)) = x + (sumtree left) + (sumtree right);
  *)
(*8*)
fun isCap s = Char.isUpper(String.sub(s, 0));
fun onlyCapitals(l : string list) = List.filter isCap l;

(*9*)
fun isAd s = if size s >= 2 then String.substring(s, size (s) - 2, 2) = "ly" else false;
fun onlyAdverbs(l : string list) = List.filter isAd l;

(*10*)

fun filters(l, l2: string list) =
	if null l then [l2]
	else if null l2 then [[]]
	else hd l(l2) :: filters(tl l, l2);
			