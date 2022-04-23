let double x = x * 2;;
let square x = x * x;;
let quad x = double (double x);;



(* MAP *)

let rec add1 = function
  | [] -> []
  | h :: t -> 
    let f = fun x -> x + 1 in
    f h :: add1 t;;

let rec concat_bang = function
  | [] -> []
  | h :: t ->
    let f = fun x -> x ^ "!" in
    f h :: concat_bang t;;

(* refactored using map *)
let rec map f = function
  | [] -> []
  | h :: t -> let h' = f h in h' :: map f t

let add1' = map (fun x -> x + 1);;

let concat_bang' = map (fun x -> x ^ "!");;


(* FILTER *)

let rec filter p = function
  | [] -> []
  | h :: t  -> if p h then h :: filter p t else filter p t;;


let even x = x mod 2 = 0
let odd x = x mod 2 = 1

let evens lst = filter even lst
let odds lst = filter odd lst


(* FOLD *)
let rec sum = function
  | [] -> 0
  | h :: t -> h + sum t


let rec concat = function
  | [] -> ""
  | h :: t -> h ^ concat t

(* Refactored*)

let rec combine init op = function
  | [] -> init
  | h :: t -> op h (combine init op t)

let sum' lst = combine 0 (+) lst;;
let concat' lst = combine "" (^) lst;;


let rec fold_right f lst acc = match lst with
  | [] -> acc
  | h :: t -> f h (fold_right f t acc);;

let rec fold_left f acc = function
  | [] -> acc
  | h :: t -> fold_left f (f acc h) t


(* Higher order functions on tree *)

type 'a tree =
  | Leaf
  | Node of 'a * 'a tree * 'a tree;;

let l = 
  Node (1,
        Node (2, Leaf, Leaf),
        Node (3, Leaf, Leaf))


let rec map f = function
  | Leaf -> Leaf
  | Node (v, l, r) -> Node(f v, map f l, map f r);;


let rec fold_tree f acc = function
  | Leaf -> acc
  | Node (v, l , r) -> f v (fold_tree f acc l) (fold_tree f acc r)

let size t = fold_tree (fun _ l r -> 1 + l + r) 0 t
let depth t = fold_tree (fun _ l r -> max l r) 0 t
let preorder t = fold_tree (fun x l r -> [x] @ l @ r) [] t