#require "base";;
open Base;;

let ratio x y = Float.of_int x /. Float.of_int y

let sum_if_true test first second = 
  (if test first then first else 0) + (if test second then second else 0)

let even x =
  x % 2 = 0;;

sum_if_true even 3 4;;


let first_if_true test x y = if test x then x else y;;

let long_string s = String.length s > 6;;

first_if_true long_string "short" "looooong";;

let rec sum lst = 
  match lst with
  | [] -> 0
  | hd :: tl -> hd + sum tl;;


let divide x y = if x = 0 then None else Some(x/y)

type point2d = {x: float; y: float};;

let p = {x = 3.; y = -4.};;
p.x;;
p.y;;


let (ints, strings) = List.unzip [(1,"one"); (2,"two"); (3,"three")];;;;


fun x -> x + 5;;
(fun x -> x + 5) 8;;
List.map ~f:(fun x -> x + 1) [1; 2; 3; 4];;

let rec find_first_repeat_list lst = 
  match lst with
  | [] | [_] -> None
  | x :: y :: tl -> if x = y then Some x else find_first_repeat_list(y::tl);;

let some_or_zero = function
  | Some x -> x
  | None -> 0

let some_or_default default = function
  | Some x -> x
  | None -> default
