let x = 
    match not true with
    | true -> "yep"
    | false -> "Nope";;


let y  = 
    match 42 with
    | foo -> foo;;


let z = 
    match "foo" with
    | "bar" -> 0
    | "far" -> -1
    | _ -> 1;;


let k = 
    match [1; 2] with
    | [] -> "empty"
    | _ -> "not empty";;


(* Recursive function for sum of elements *)
let rec sum lst = 
    match lst with
    | [] -> 0
    | h :: t -> h + sum t;;



let rec length lst = 
    match lst with
    | [] -> 0
    | _ :: t -> 1 + length t;;


let rec append lst1 lst2 = 
  match lst1 with
  | [] -> lst2
  | h :: t -> h :: (append t lst2);;


(* Function keyword is syntaxic sugar  that can help us to avoid duplicate match keyword*)

let rec sum = function
  | [] -> 0
  | h :: t -> h + (sum t);;



type car_color = Red | Blue | Green;;

type point = float * float;;

type shape = 
  | Circle of {center: point; radius: float}
  | Rectangle of {left: float; right: float}


let c1 = Circle {center = (0., 0.); radius = 1.};;
let c2 = Rectangle {left = 20.; right = 40.1};;

let g2 = function
  | Circle {center; radius} -> center
  | Rectangle {left; right} -> (20., 20.);;
