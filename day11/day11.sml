fun roots(t: real*real*real) = 
		((~(#2(t)) + Math.sqrt(((#2(t)*(#2(t)))-(4.0*(#1(t))*(#3(t))))))/(2.0*(#1(t))),
		(~(#2(t)) - Math.sqrt((((#2(t))*(#2(t)))+(~4.0*(#1(t))*(#3(t))))))/(2.0*(#1(t))));
		
fun isYounger(d1: int*int*int, d2: int*int*int) = 
		if (#3(d1)) > (#3(d2)) then true
		else if (#3(d1)) = (#3(d2)) andalso (#2(d1)) > (#2(d2)) then true
		else if (#3(d1)) = (#3(d2)) andalso (#2(d1)) = (#2(d2)) andalso (#1(d1)) > (#1(d2)) then true
		else false
		
fun length[] = 0
		| length(x::xs) = 1 + length xs;
		

fun getnth(l: string list, i: int) =
		if length(l) < i  orelse i < 1 then "no such element"
		else List.nth(l, i-1);
		
fun generate(lower: int, upper: int) =
		if lower > upper then []
		else if lower = upper then [lower]
		else lower::generate(lower+1, upper);
		
fun numberInMonth(date: (int*int*int) list, month: int) =
		 if null(date) then 0
		 else if #2(hd(date)) = month then 1 + numberInMonth(tl(date), month)
		 else 0 + numberInMonth(tl(date), month);
(*
fun datesInMonth(date: (int*int*int) list, month: int) = 
		 if null(date) then []
		 else if #2(hd(date)) = month then hd(date)::datesInMonth(tl(date), month)
		 else datesInMonth(tl(date), month);
	*)
		
fun datesInMonth(date: (int*int*int) list, month: int) =
	if null(date) then []
	else
		let
				val test0 = #2(hd(date)) = month
				val path0 = hd(date)::datesInMonth(tl(date), month)
				val path1 = datesInMonth(tl(date), month)
		in
			 	if test0 then path0 else path1
		end
		 
fun repeat(integers: int list, nonNegInts: int list) = 
		if null(integers) then []
		else if null(nonNegInts) then integers
		else if hd(nonNegInts) <= 0 then hd(integers)::repeat(tl(integers), tl(nonNegInts))
		else if hd(nonNegInts) > 0 then hd(integers)::repeat(integers, (hd(nonNegInts)-1)::tl(nonNegInts))
		else repeat(tl(integers), tl(nonNegInts));
		
fun helper(xs : int list) = 
    if null xs then []
    else if null (tl xs) then hd xs::[]
    else hd xs :: helper(tl(tl xs))
    
fun divide(xs: int list) = 
    if null xs then ([],[])
    else (helper(xs), helper(tl xs))
    
fun reciprocal(n: int) =
    if n = 0 then NONE
    else SOME (1 div n)
    
fun reciprocals(n: int) =
    if n = 0 then NONE
    else SOME ("1 / " ^ Int.toString(n))

fun divideInts(m, n) = 
    if n = 0 then NONE
    else SOME (m div n)
    
fun greetings(z) = 
    if isSome(z) then "Hello there, " ^ valOf z
    else "Hello there, you!"