(: Name: id-transform-expr-015 :)
(: Description: Evaluation of a transform expression where the pending updating list contains a node not created within :)
(: this transform expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[1]
let $var2 := $input-context/employees[1]/employee[2]
return 
  copy $newVar := $var1
  modify delete node $var2/salary[1]
  return $newVar