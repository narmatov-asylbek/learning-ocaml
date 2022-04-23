module MyList = struct
  type 'a myList = 
    | Nil
    | Cons of 'a * 'a myList
    
  let rec map f = function
    | Nil -> Nil
    | Cons(h, t) -> Cons(f h, map f t);;
end

module Tree = struct
  type 'a tree = 
    | Leaf
    | Node of 'a * 'a tree * 'a tree

  let rec map f = function
    | Leaf -> Leaf
    | Node(v, l, r) -> Node(f v, map f l, map f r);;
end