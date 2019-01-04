(: Name: id-delete-expr-09 :)
(: Description: Evaluation of a delete expression where target expression is set to "()":)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  delete node ()