(: Name: id-transform-expr-023 :)
(: Description: Evaluates a transform expression, where an attribute node is affected by more than one replace value expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return 
  copy $newVar := $var
  modify 
   (replace value of node $newVar/employee[1]/@dept with $newVar/employee[2]/@dept, replace value of node $newVar/employee[1]/@dept with $newVar/employee[3]/@dept)
    return $newVar