

type 'a tree = 
  | Leaf
  | Node of 'a  * 'a tree * 'a tree

let l = 
  Node (1,
        Node (2, Leaf, Leaf),
        Node (3, Leaf, Leaf))


let rec size = function 
  | Leaf -> 0
  | Node (_, l, r) -> 1 + size l + size r;;


let rec sum = function
  | Leaf -> 0
  | Node (v, l, r) -> v + sum l + sum r;;