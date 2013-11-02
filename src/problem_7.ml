(* Problem 7:
   Flatten a nested list structure.
*)

type 'a node =
  | One of 'a
  | Many of 'a node list;;

let rec flatten lst = match lst with
  | [] -> []
  | One(x)::more -> x::(flatten more)
  | Many(xs)::more -> (flatten xs) @ (flatten more)
