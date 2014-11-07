(* Programming Languages, Dan Grossman, Jan-Mar 2013 *)
(* Section 4: Modules for Namespace Management *)

structure MyMathLib =
struct

fun fact x =
    if x=0
    then 1
    else x * fact (x - 1)

val half_pi = Math.pi / 2.0

fun doubler y = y + y

end