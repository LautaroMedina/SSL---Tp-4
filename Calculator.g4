grammar Calculator;
prog: stat+ ;
stat : decl | assign | (expr SEMI) ;
decl : (LET | VAR) ID (EQ expr)? ;
assign : ID EQ expr SEMI ;
expr: expr  (MULT|DIV) expr 
     | expr (SUM|RES) expr
     | expr LPAREN expr RPAREN
     | ID
     |INT
     ;
//Lexemas
AND : 'and' ;
OR : 'or' ;
NOT : 'not' ;
EQ : '=' ;
COMMA : ',' ;
SEMI : ';' ;
LPAREN : '(' ;
RPAREN : ')' ;
LCURLY : '{' ;
RCURLY : '}' ;
LET : 'let'  ;
VAR : 'var'  ;
MULT : '*'   ;
DIV : '/'    ;
SUM : '+'    ;
RES : '-'   ;
INT : [0-9]+ ;
ID: [a-zA-Z_][a-zA-Z_0-9]* ;
WS: [ \t\n\r\f]+ -> skip ;