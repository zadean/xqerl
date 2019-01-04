(: Name: id-transform-expr-024 :)
(: Description: Evaluates a transform expression, where an attribute node is affected by more than one replace value expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return 
  copy $newVar := $var
  modify 
   (replace value of node $newVar/employee[1]/salary[1] with $newVar/employee[2]/salary[1], replace value of node $newVar/employee[1]/salary[1] with $newVar/employee[3]/salary[1])
    return $newVar