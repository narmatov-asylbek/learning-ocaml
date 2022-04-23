let rec fact n = if n = 0 then 1 else fact n - 1;;


let inc = fun x -> x + 1;;
let square x = x * x;;


(* These are equal *)
5 |> inc |> square;;
square (inc 5);;


(* Partial functions *)

let add x y = x + y;;
let add5 = add 5;;
let seven = add5 2;;

