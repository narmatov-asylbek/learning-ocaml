module type Fact = sig
  val fact : int -> int
end


module RecursiveFact : Fact = struct
  let rec fact n = 
    if n = 0 then 1 else n * fact(n - 1)
end


module type LIST_STACK = sig
  (** [Empty] is raised when an operation cannot be applied
      to an empty stack. *)
  exception Empty

  (** [empty] is the empty stack. *)
  val empty : 'a list

  (** [is_empty s] is whether [s] is empty. *)
  val is_empty : 'a list -> bool

  (** [push x s] pushes [x] onto the top of [s]. *)
  val push : 'a -> 'a list -> 'a list

  (** [peek s] is the top element of [s].
      Raises [Empty] if [s] is empty. *)
  val peek : 'a list -> 'a

  (** [pop s] is all but the top element of [s].
      Raises [Empty] if [s] is empty. *)
  val pop : 'a list -> 'a list
end

module MyStack: LIST_STACK = struct
  exception Empty

  let empty = []

  let is_empty = function
    | [] -> true
    | _ -> false

  let push x s = x :: s

  let peek = function
    | [] -> raise Empty
    | h :: _ -> h
  
    let pop = function
      | [] -> raise Empty
      | _ :: tl -> tl
end