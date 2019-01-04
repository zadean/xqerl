(: Name: id-insert-expr-027 :)
(: Description: Evaluation of insert expression where the target expression is a sequence of nodes. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := ($input-context/employees[1]/employee[1],$input-context/employees[1]/employee[2])
return 
  insert node <salary>100000</salary> into $var