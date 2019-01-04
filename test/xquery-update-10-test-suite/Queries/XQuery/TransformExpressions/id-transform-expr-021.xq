(: Name: id-transform-expr-021 :)
(: Description: Evaluates a transform expression, where a attribute node is affected by more than one rename expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  copy $newVar := $var
  modify 
   (rename node $newVar/@dept as "dept1", rename node $newVar/@dept as "dept2")
    return $newVar