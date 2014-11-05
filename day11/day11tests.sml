
use "day11.sml";
val testroots1 = roots(1.0, ~7.0, 0.0)
val testroots2 = roots(1.0, 0.0, ~4.0) 
val testroots3 = roots(1.0, ~3.0, ~4.0)

(* since we cannot test equality with roots that are real numbers, for the 
	first 3 tests we need to examine the actual return values; when dealing 
	with ints and bools, we can set up test cases that will evaluate to true, 
	if passed, and to false if failed *)

val testyounger0 = isYounger((10, 12, 2014), (12, 10, 2013)) = true
val testyounger1 = isYounger((10, 12, 2013), (10, 12, 2013)) = false
val testyounger2 = isYounger((9, 12, 2013), (10, 12, 2013)) = false
val testyounger3 = isYounger((10, 11, 2013), (10, 12, 2013)) = false
val testyounger4 = isYounger((10, 12, 2012), (10, 12, 2013)) = false


val testlength1 = length([1, 2, 3, 4, 5]) = 5
val testlength2 = length([1, 2, 3, 4, 5, 6]) = 6
val testlength3 = length([1, 2, 3, 4]) = 4
val testlength4 = length([1, 2, 3]) = 3
val testlength5 = length([1, 2, 3, 4, 5, 6, 7]) = 7
val testlength6 = length([]) = 0

val testgetnth1 = getnth(["hello", "there", "universe"], 0) = "no such element"

val testgetnth2 = getnth(["hello", "there", "universe"], 1) = "hello"

val testgetnth3 = getnth(["hello", "there", "universe"], 2) = "there"
val testgetnth4 = getnth(["hello", "there", "universe"], 3) = "universe"
val testgetnth5 = getnth(["hello", "there", "universe"], 4) = "no such element"

val testgenerate1 = generate(~5, ~1) = [ ~5, ~4, ~3, ~2, ~1]
val testgenerate2 = generate(~1, ~1) = [~1]

val testgenerate3 = generate(~1, ~5) = []

val testnuminmonth1 = numberInMonth([(2012,2,28),(2013,12,1)],2) = 1
val testnuminmonth2 = numberInMonth([],2) = 0
val testnuminmonth3 = numberInMonth([(2012,2,28),(2013,2,1)],2) = 2
val testnuminmonth4 = numberInMonth([(2012,2,28),(2013,12,1), (2013,2,1)],2) = 2

val testdinmonth1 = datesInMonth([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]
val testdinmonth2 = datesInMonth([],2) = []
val testdinmonth3 = datesInMonth([(2012,2,28),(2013,2,1)],2) = [(2012,2,28),(2013,2,1)]
val testdinmonth4 = datesInMonth([(2012,2,28),(2013,12,1), (2013,2,1)],2) = [(2012,2,28),(2013,2,1)]

val testrepeat1 = repeat([1, 2, 3], [0, 4, 1]) = [1, 2, 2, 2, 2, 2, 3, 3]
val testrepeat2 = repeat([1, 2, 3], []) = [1, 2, 3]

val testrepeat3 = repeat([], [0, 4, 1]) = []

val testrepeat4 = repeat([], []) = []

val testrepeat5 = repeat([1,2,3], [~1,~2,~3]) = [1,2,3]
val testrepeat6 = repeat([1,2,3], [0, 4, 1, 1]) = [1, 2, 2, 2, 2, 2, 3, 3]
val testrepeat7 = repeat([1,2,3,4], [0, 4, 1]) = [1, 2, 2, 2, 2, 2, 3, 3, 4]

val testHelper0 = helper([1,2,3,4,5])

val testDivide0 = divide([1,2,3,4,5])
(*
*)