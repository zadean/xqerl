(: Name: id-insert-expr-024 :)
(: Description: Evaluation of simple insert expression where target expression is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return 
  insert node <salary>100000</salary> into (insert node <salary>150000</salary> into $var)