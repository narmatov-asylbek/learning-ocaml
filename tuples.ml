(10, 10, "hello");;

type time = int * int * string;;

let t : time = (10, 10, "am");;


type point = float * float;;

let p : point = (5., 6.);;

fst p;; (* Will return first *)
snd p;; (* Will return second *)

