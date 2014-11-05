(* use "..\\day12\\day12.sml"; *)

fun addRecord(a, b, c, d, li) =
    {name = a, phone = b, date = c, dur = d}::li
    
fun isLessThan(r1 : {date: string, id: int}, r2 : {date: string, id: int}) = 
    #id r1 < #id r2;
    
fun message(grade : char) =
    case grade of
        #"A" => "very good"
    |   #"B" => "good"
    |   #"C" => "avg"
    |   #"D" => "poor"
    |   _ => "hmmmm"
    
    
datatype mytype = TwoInts of int * int
                | Str of string
                | Pizza
                
fun f(x : mytype) = 
    case x of 
        Pizza => 3
        | Str(s) => 8
        | TwoInts(i1, i2) => i1 + i2