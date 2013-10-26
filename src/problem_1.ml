open List

let rec last l = match l with
  | l :: more -> if List.is_empty more then Some l else more
  | [] -> None
