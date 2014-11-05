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
		
fun datesInMonth(date: (int*int*int) list, month: int) = 
		 if null(date) then []
		 else if #2(hd(date)) = month then hd(date)::datesInMonth(tl(date), month)
		 else datesInMonth(tl(date), month);
		 
fun repeat(integers: int list, nonNegInts: int list) = 
		if null(integers) then []
		else if null(nonNegInts) then integers
		else if hd(nonNegInts) <= 0 then hd(integers)::repeat(tl(integers), tl(nonNegInts))
		else if hd(nonNegInts) > 0 then hd(integers)::repeat(integers, (hd(nonNegInts)-1)::tl(nonNegInts))
		else repeat(tl(integers), tl(nonNegInts));
		
		
		