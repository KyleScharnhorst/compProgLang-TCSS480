use "assign5.sml";

val topts1 = addIntOptions(SOME 4, NONE) = SOME 4
val topts2 = addIntOptions(SOME 4, SOME 5) = SOME 9 
val topts3 = addIntOptions(NONE, NONE) = NONE 
val topts4 = addIntOptions(NONE, SOME 4) = SOME 4 

val told1 = oldest([(28,2,2013),(31,3,2011),(28,4,2014)]) = SOME (31,3,2011) 
val told2 = oldest([]) = NONE 
val told3 = oldest([(28,2,2013), (28,2,2013)]) = SOME (28,2,2013) 

val tbin1 = binary(0) = (true, "0") 
val tbin2 = binary(5) = (true, "101")
val tbin3 = binary(~16) = (false, "10000") 

val testyounger1 = isYounger((10, 12, 2013), (10, 12, 2013)) = false
val testyounger2 = isYounger((10, 12, 2013), (11, 12, 2013)) = false
val testyounger3 = isYounger((10, 1, 2013), (10, 2, 2013)) = false
val testyounger4 = isYounger((10, 12, 2011), (10, 12, 2013)) = false
val testyounger5 = isYounger((11, 12, 2013), (10, 12, 2013)) 
val testyounger6 = isYounger((10, 12, 2013), (10, 12, 2011)) 
val testyounger7 = isYounger((10, 2, 2013), (10, 1, 2013)) 

val testgetnth1 = getnth(["hello", "there", "universe"], 0) = "no such element"
val testgetnth2 = getnth(["hello", "there", "universe"], 3) = "universe" 
val testgetnth3 = getnth(["hello", "there", "universe"], 4) = "no such element" 
val testgetnth4 = getnth([], 2) = "no such element" 

val sCards1 = sumCards([Ace,King,Queen,Jack,Num(10),Num(9),Num(8),Num(7),Num(6),Num(5),Num(4),Num(3),Num(2)]) = 127
val sCards2 = sumCards([]) = 0

val tree1 = insert(insert(insert(Empty, 10), 5), 15)
val tree2 = insert(insert(insert(tree1, 1), 7), 20)

val ttree1 = sumTree(Empty) = 0
val ttree2 = sumTree(insert(Empty, 10)) = 10
val ttree3 = sumTree(tree1) = 30
val ttree4 = sumTree(tree2) = 58

val tcaps1 = onlyCapitals([]) = []
val tcaps2 = onlyCapitals(["hello", "Hello", "there", "T"]) = ["Hello", "T"]
val tcaps3 = onlyCapitals(["hello", "t"]) = []

val tadverb1 = onlyAdverbs([]) = []
val tadverb2 = onlyAdverbs(["hello", "th"]) = []
val tadverb3 = onlyAdverbs(["hello", "gladly", "Slowly", "ly"]) = ["gladly", "Slowly", "ly"]

val filts1 = filters(funcs, ["Mine", "slowly", "Gladly", "glad", "Happy", "ly"]) =  [["Mine","Gladly","Happy"],["slowly","Gladly","ly"],
   ["Mine","slowly","Gladly","glad","Happy","ly"]] 
val filts2 = filters([], ["testing", "list"]) = [["testing", "list"]]
val filts3 = filters(funcs, []) = [[]]
val filts4 = filters([onlyCapitals], ["hello", "Hello", "there", "T"]) = [["Hello", "T"],["hello", "Hello", "there", "T"]]
val filts5 = filters([onlyCapitals, onlyCapitals, onlyCapitals], ["T", "t"]) = [["T"],["T"],["T"],["T","t"]]

