#require "base";;

open Base;;


[1; 2; 3];;
1::2::3::[];;


let rec sum = function
  | [] -> 0
  | hd::tl -> hd + sum tl;;


let rec drop_val lst to_drop = 
  match lst with
  | [] -> []
  | hd :: tl ->
    let new_tl = drop_val tl to_drop in
    if hd  = to_drop then new_tl else hd :: new_tl;;


List.fold ~init:0 ~f:(+) [1;2;3;4;5]

(* Not Optimized code*)
let rec length = function
  | [] -> 0
  | _ :: tl -> 1 + length tl;;


let rec length_plus_n lst n = 
  match lst with
  | [] -> n
  | _ :: tl -> length_plus_n tl (n + 1);;

let length lst = length_plus_n lst 0;;