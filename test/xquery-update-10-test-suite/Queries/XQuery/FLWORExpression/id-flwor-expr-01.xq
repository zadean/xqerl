(: Name: id-flwor-expr-01 :)
(: Description: Evaluation of insert expression use with FLWOR expression where let clause is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
let $var1 := insert node <salary>110000</salary> into $var
return 
  "This Test Should Fail"