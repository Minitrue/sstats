{ open Parser }

rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
| "/*"  { comment lexbuf } (* Comment *)
| '(' { LPAREN } (* punctuation *)
| ')' { RPAREN }
| '{' { LBRACE }
| '}' { RBRACE }
| ';' { SEMI }
| ',' { COMMA }

| '+' { ADDITION } (* operators *)
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

| "char" { CHAR } (* types *)
| "int" { INT }
| "bool" { BOOL }
| "float" { FLOAT }
| "true" { TRUE }
| "false" { FALSE }
| eof { EOF }
