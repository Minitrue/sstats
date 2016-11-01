%{ open Ast %}

%token SEMI LPAREN RPAREN LBRACE RBRACE COMMA
%token ADDITION SUBTRACTION MULTIPLICATION DIVISION MODULO
%token ASSIGN NEG LT GT LTE GTE EQ NEQ
%token AND OR

%token CHAR INT BOOL FLOAT

%token <int> LITERAL

%token EOF

%start program
%type <Ast.program> program

%%

program: EOF { }

expr:
  LITERAL { Lit($1) }
