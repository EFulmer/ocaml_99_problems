(* Problem 5:
   Reverse a list.
*)

let rev ls =
  let rec aux ls rv = match ls, rv with
	| [], rv -> rv
	| l::ls, rv -> aux ls l::rv
  in
  aux ls []
