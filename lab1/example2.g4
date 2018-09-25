grammar example2;
g : a=NUM '+' b=NUM
{ System.out.println("g=" + $a.text + " + " + $b.text); }
;
NUM : [0-9]+ ;
NEWLINE : [\r\n]+ ;