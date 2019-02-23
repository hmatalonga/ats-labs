grammar umer;

log
  : statement*
  ;

statement
  : 'login' user=STRING pass=STRING
  | 'registar' stmt_register
  | 'solicitar' tuple
  | 'recusar' 'viagem'
  | 'viajar'
  | 'logout'
  ;

stmt_register
  : 'condutor' reg_condutor
  | 'empresa' user=STRING pass=STRING
  | 'cliente' email=STRING user=STRING pass=STRING address=STRING birthday=date position=tuple
  ;

reg_condutor
  : email=STRING user=STRING pass=STRING address=STRING birthday=date code=number
  | email=STRING user=STRING pass=STRING address=STRING birthday=date code=number service=STRING
  ;

number
  : DIGIT +
  ;

decimal
  : DIGIT + '.' DIGIT +
  ;

tuple
  : '(' x=decimal ',' y=decimal ')'
  ;

date
  : DIGIT DIGIT DIGIT DIGIT '-' DIGIT? DIGIT '-' DIGIT? DIGIT ;


STRING
  : '"' ~ ["\r\n]* '"'
  ;

DIGIT
  : [0-9]
  ;

STMT_END
  : ';' -> skip
  ;

WS
  : [ \t\r\n]+ -> skip
  ;