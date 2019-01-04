(: Name: id-transform-expr-012 :)
(: Description: Evaluation of a transform expression where the source expression is an updating expression :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  copy $newVar1 := delete node $var/salary[1] 
  modify ()
  return $newVar1