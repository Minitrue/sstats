{ open Parser }

rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
| "/*"  { comment lexbuf } (* Comment *)
| '(' { LPAREN }
| ')' { RPAREN }
| '{' { LBRACE }
| '}' { RBRACE }
| ';' { SEMI }
| ',' { COMMA }
| '+' { ADDITION }
| '-' { SUBTRACTION }
| '*' { MULTIPLICATION }
| '/' { DIVISION }
| '%' { MODULO }
| '=' { ASSIGN }
| '!' { NEG }
| '<' { LT }
| '>' { GT }
| "<=" { LTE }
| ">=" { GTE }
| "==" { EQ }
| "!=" { NEQ }
| "&&" { AND }
| "||" { OR }
| eof { EOF }
