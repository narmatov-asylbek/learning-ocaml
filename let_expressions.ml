

let x : int = 42 in x + 1;; (*x is equal to 43 *)

let z : int = 55 in
  z + (let y = "44" in int_of_string y);;
