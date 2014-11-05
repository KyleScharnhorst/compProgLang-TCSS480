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
        
datatype cardrank = Ace | King | Queen | Jack | Num of int

fun valueinSkat(c) = 
    case c of
    Ace => 11
    | King => 4
    | Queen => 3
    | Jack => 2
    | Num(x) => ( case x of
                    10 => 10
                    | _ => 0 )
                    
fun valueinRummy(c) = 
    case c of 
        Ace => 1
        | Num(x) => x
        | _ => 10

datatype number = Instructure of int | Recons of real

fun addNumbers(num1, num2) = 
    case num1 of
        Instructure(val1) => ( case num2 of
                                Instructure(val2) => real(val1) + real(val2)
                                | Recons(val2) => real(val1) + val2
                              )
        | Recons(val1) => ( case num2 of
                                Instructure(val2) => val1 + real(val2)
                                | Recons(val2) => val1 + val2
                              )