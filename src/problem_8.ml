(* Problem 8:
   Eliminate consecutive duplicates of list elements.
*)

let rec compress = function
  | [] -> []
  | [x] -> [x]
  | x::y::ys -> if x = y then compress (y::ys) else x::(compress (y::ys))
