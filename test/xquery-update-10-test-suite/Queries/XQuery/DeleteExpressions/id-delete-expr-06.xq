(: Name: id-delete-expr-06 :)
(: Description: Evaluation of a delete expression where target expression is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  delete node (delete node $var/salary[1])