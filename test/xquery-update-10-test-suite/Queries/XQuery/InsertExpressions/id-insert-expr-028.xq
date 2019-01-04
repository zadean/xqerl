(: Name: id-insert-expr-028 :)
(: Description: Evaluation of insert expression where the target expression is the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return 
  insert node <salary>100000</salary> into ()