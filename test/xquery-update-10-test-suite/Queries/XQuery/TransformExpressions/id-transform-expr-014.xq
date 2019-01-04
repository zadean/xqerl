(: Name: id-transform-expr-014 :)
(: Description: Evaluation of a transform expression where the return expression contains an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return 
  copy $newVar := $var
  modify delete node $newVar/employee[1]
  return delete node $newVar/employee[2]