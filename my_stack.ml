module MyStack = struct
  type 'a stack = 
    | Empty
    | Entry of 'a * 'a stack
  
  let empty = Empty

  let push x s =
    Entry(x, s)

  let peek = function
    | Empty -> failwith "Empty Stack"
    | Entry(x, _) -> x

  let pop = function
    | Empty -> failwith "Empty stack"
    | Entry(_, s) -> s
    
end


module ListStack = struct
  type 'a stack = 'a list

  let empty = []

  let push x s = 
    x :: s
  
  let peek = function
  | [] -> failwith "Empty stack"
  | h :: _ -> h
  
  let pop = function
  | [] -> failwith "Empty Stack"
  | _ :: tl -> tl
end

let s = ListStack.empty
let s' = ListStack.push 10 s
let p = ListStack.peek s'