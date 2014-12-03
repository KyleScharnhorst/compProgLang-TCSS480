use "domino.sml";

val domt0 = dominoes(0)
val domt1 = dominoes(1)
val domt2 = dominoes(2)
val domt3 = dominoes(3)
val domt4 = dominoes(4)

val permt0 = permutation(domt0)
val permt1 = permutation(domt1)
val permt21 = permutation(domt2)
val permt22 = permutation(domt2)
val permt23 = permutation(domt2)
val permt31 = permutation(domt3)
val permt32 = permutation(domt3)

val loop0 = isLoop([]) = false
val loop11 = isLoop([(0,0)])
val loop12 = isLoop([(1,0)]) = false
val loop21 = isLoop([(2,2),(2,1),(2,0),(1,1),(1,0),(0,0)]) = false
val loop22 = isLoop([(2,2),(2,1),(2,0),(1,0),(0,0),(1,1)]) = false
val loop23 = isLoop([(2,2),(2,0),(2,1),(1,1),(1,0),(0,0)]) = false
val loop24 = isLoop([(2,0),(2,2),(2,1),(1,1),(1,0),(0,0)]) = true
val loop31 = isLoop([(3,3),(3,2),(3,1),(3,0),(2,2),(2,1),(2,0),(1,1),(1,0),(0,0)]) = false
val loop41 = isLoop([(0,0),(0,1),(1,1),(2,1),(2,2),(2,3),(3,3),(3,4),(4,4),(4,2),(0,2),(0,3),(1,3),(1,4),(0,4)])
(*
val flipt0 = flip([]) = []
val flipt1 = flip([(0,0)]) = [(0,0)]
val flipt2 = flip([(2,0),(2,2),(1,2),(1,1),(1,0),(0,0)]) = [(0,2),(2,2),(2,1),(1,1),(1,0),(0,0)]
val flipt3 = flip([(0,2),(2,2),(2,1),(1,1),(1,0),(0,0)]) = [(0,2),(2,2),(2,1),(1,1),(1,0),(0,0)]

val sol0 = solution(0)
val sol1 = solution(1)
val sol2 = solution(2)
val sol3 = solution(3)
val sol4 = solution(4)

val st0 = listAsString(sol0)
val st1 = listAsString(sol1)
val st2 = listAsString(sol2)
val st3 = listAsString(sol3)
val st4 = listAsString(sol4)
*)
(* once you get all the above functions working, uncomment the driver *)
(*val dt0 = driver(listAsString, solution) 0
val dt1 = driver(listAsString, solution) 1
val dt2 = driver(listAsString, solution) 2
val dt3 = driver(listAsString, solution) 3
val dt4 = driver(listAsString, solution) 4
val dt5 = driver(listAsString, solution) 5

val a = print dt0
val b = print dt1
val c = print dt2
val d = print dt3
val e = print dt4 
val f = print dt5 *) 

