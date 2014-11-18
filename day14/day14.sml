(*    use "..\\day14\\day14.sml";   *)

fun area (r) = 
    Math.pi * r * r
    
fun circ (r) = 
    2.0 * Math.pi * r
 
 fun diameter(r) = 
    2.0 * r
    
val func = [area, circ, diameter]
val radii = [1.0, 2.5, 6.78, 1.25, 3.4]

val areas = List.map (hd func) radii
val circum = List.map (hd(tl func)) radii
val ds = List.map (hd(tl(tl func))) radii

fun mapper(fs, rs) =
    if null fs then rs::[]
    else (List.map (hd fs) rs)::mapper(tl fs, rs)
    
fun length(myList) = 
    List.fold1 (fn (y, acc) => acc+1) 0 myList