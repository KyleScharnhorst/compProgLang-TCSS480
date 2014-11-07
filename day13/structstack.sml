use "signstack.sml";

structure Stack :> STACK = 
    struct
      type 'a stack = 'a list
      exception Empty

      val empty = []

      fun isEmpty (l: 'a list) = 
         null l

      fun push (x: 'a, l: 'a stack) = 
         x::l

      fun pop (l: 'a stack) = 
         case l of 
           [] => raise Empty
         | x::xs => (x, xs) 

      fun map (f:'a -> 'b) (l: 'a stack) = List.map f l

    end