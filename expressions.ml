1322;;

let x = 4213 in x;;
let z = 13;;

let c = 3 in (let d = 4 in c + d);;


(fun x -> x + 1);;

(fun x y -> x + y) 25 40;;

let inc = (fun x -> x + 1);;
inc 55;;

let inc x y = x + y;;

(* Comments *)

let rec fact n = 
    if n = 0 then 1
    else n * fact (n - 1);;