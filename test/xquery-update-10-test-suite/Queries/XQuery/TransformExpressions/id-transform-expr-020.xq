(: Name: id-transform-expr-020 :)
(: Description: Evaluates a transform expression, where a node is affected by more than one replace expression (no "value of" being specified. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return 
  copy $newVar := $var
  modify 
   (replace node $newVar/employee[1]/salary[1] with $newVar/employee[2]/salary[1], replace node $newVar/employee[1]/salary[1] with $newVar/employee[3]/salary[1])
    return $newVar