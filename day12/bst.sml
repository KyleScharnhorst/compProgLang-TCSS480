(*     use "..\\day12\\bst.sml";       *)

datatype bstree = Empty | Node of int * bstree * bstree

fun insert(bst: bstree, n:int) =
    case bst of 
        Empty => Node(n, Empty, Empty)
        | Node(v, left, right) => if n < v then Node(v, insert(left, n), right)
                                  else if n > v then Node(v, left, insert(right, n)) 
                                  else bst

fun contains(bst: bstree, n:int) = 
    case bst of
        Empty => false
        | Node(v, left, right) => if n < v then contains(left, n)
                                  else if n > v then contains(right, n)
                                  else true
        
        
fun treeHeight(bst : bstree) = 
    case bst of
        Empty => 0
        | Node(v, left, right) => (let val val1 = treeHeight(left)
                                       val val2 = treeHeight(right)
                                   in
                                     if val1 > val2 then 1+ val1
                                     else 1 + val2
                                   end)