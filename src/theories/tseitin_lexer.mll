{
  open Term_parser
}

let atom_sym = ['a'-'z' 'A'-'Z' '0'-'9' ' ' '(' ')' ',' '=' '<' '>' '-'] | "<=" | ">=" | "!="

rule token = parse
  | [' ' '\t' '\n' '\r'] 			{ token lexbuf }   

  | '('						{ LPAREN }  
  | ')'						{ RPAREN } 
   
  | "\\/"					{ OR }
  | '~'					        { NOT }
  | "=>"					{ IMP }
  | "<=>"				        { EQU }
  | "/\\"					{ AND }

  | ['a'-'z'] atom_sym* as s 	                { Printf.printf "%s parsed\n%!" s;ATOM s }
  
  | eof                                         { EOF }
