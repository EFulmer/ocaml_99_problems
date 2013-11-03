(* Problem 8:
   Eliminate consecutive duplicates of list elements.
*)

open Core.Std

let pack ls = 
  let rec aux ls acc streak =
	match ls, streak with
		(* If the end of the list has been reached, add the current streak onto the accumulator and reverse the result (since we're building up the accumulator as we go from the front to the end of the list, earlier streaks show up near the end of the list ) *)
	  | [], _ -> List.rev (streak::acc)
	  | x::xs, y::ys -> if x = y 
		then aux xs acc (x::y::ys) 
		else aux xs (streak::acc) [x]
	  | x::xs, [] -> aux xs [] [x]
  in
  aux ls [ [] ] []
