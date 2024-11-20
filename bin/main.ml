let is_number str = 
    let len = String.length str in 
    let rec check_digits i = 
        if i = len then true
            else 
                let char = String.get str i in 
                if '0' <= char && char <= '9' then check_digits (i + 1)
                else false
                in
                check_digits 0

let is_operator str = 
    let len = String.length str in 
    if len != 1 then false
        else 
            let char = String.get str 0 in
            match char with 
            | '+' | '-' | '*' | '/' | '=' -> true
            | _ -> false


let rec read_input () = 
    let s = read_line () in 
    match s with
        | "" -> ()
        | _ ->
                if is_number s then 
                    let num = int_of_string s in
                    Printf.printf "Number: %d\n" num
                else if is_operator s then Printf.printf "Operator %s\n" s
                else print_endline "Non-number";
                read_input ()

let () = 
    read_input ()

