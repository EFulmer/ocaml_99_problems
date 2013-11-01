(* Problem 6:
   Find out whether a list is a palindrome.
*)

let rev ls =
  let rec aux ls rv = match ls, rv with
	| [], rv -> rv
	| l::ls, rv -> aux ls (l::rv)
  in
  aux ls []

let is_palindrome ls = (rev ls) = ls
