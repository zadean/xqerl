(: Name: id-delete-expr-07 :)
(: Description: Evaluation of a delete expression where target expression is mathematical. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  delete node (xs:integer($var/salary) + 3)