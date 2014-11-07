(*  use "..\\day13\\day13.sml";   *)

fun double_or_triple(x) = 
    if(x mod 2) = 0
    then fn y => 2*y
    else fn y => 3*y
    
fun dPrice (price: real, dis: real) =
    (1.0 - dis) * price
    
fun taxPrice (pr: real, tax: real) = 
    pr + (pr * tax) 
    
fun taxPrice2(f: real * real -> real, pr: real, d: real, tax: real) = 
    let
        val nPrice = f(pr, d)
    in
        nPrice + nPrice * tax
    end
    
fun comp(f, g) = fn (x,y,z) => f (g (x,y), z)