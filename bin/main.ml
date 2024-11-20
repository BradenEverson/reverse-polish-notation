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


let rec read_reverse_polish_notation stack = 
    let s = read_line () in 
    if is_number s then 
        let num = int_of_string s in
        read_reverse_polish_notation (num :: stack)
    else if is_operator s then match s with 
                | "*" -> 
                        print_endline "Multiplication";
                        read_reverse_polish_notation stack
                | "+" -> 
                        print_endline "Addition";
                        read_reverse_polish_notation stack

                | "-" -> 
                        print_endline "Subtraction";
                        read_reverse_polish_notation stack

                | "/" -> 
                        print_endline "Division";
                        read_reverse_polish_notation stack

                | "=" -> 
                        print_endline "Get Result";
                        ()
                |  _ -> ();
    else read_reverse_polish_notation stack

let () = 
    read_reverse_polish_notation []

