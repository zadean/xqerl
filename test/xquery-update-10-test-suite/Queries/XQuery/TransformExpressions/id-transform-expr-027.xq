(: Name: id-transform-expr-027 :)
(: Description: Evaluates a transform expression, where the source expression results in more than one single attribute node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return 
  copy $newVar := $var/employee[1]/attribute::*
  modify 
   (delete node $newVar)
    return $newVar