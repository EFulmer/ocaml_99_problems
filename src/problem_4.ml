let rec length ls =
  let rec aux n ls =
	match ls with
	| [] -> n
	| l::ls -> aux (n + 1) ls
  in
    aux 0 ls
