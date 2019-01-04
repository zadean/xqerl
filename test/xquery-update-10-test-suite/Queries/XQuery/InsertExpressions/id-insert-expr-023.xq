(: Name: id-insert-expr-023 :)
(: Description: Evaluation of simple insert expression where source expression is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return 
  insert node (insert node <salary>150000</salary> into $var) into $var