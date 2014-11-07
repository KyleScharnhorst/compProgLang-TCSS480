signature STACK = 
    sig
      type 'a stack

      val empty : 'a stack
      val isEmpty : 'a stack -> bool
      val push : ('a * 'a stack) -> 'a stack
      val pop : 'a stack -> 'a * 'a stack
      val map : ('a -> 'b) -> 'a stack -> 'b stack
  
   end    