let rec last_two l =
  match l with
  | l :: m :: [] -> Some (l, m)
  | [_] | [] -> None
  | l :: ls -> last_two ls
