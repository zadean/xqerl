(: Name: id-transform-expr-026 :)
(: Description: Evaluates a transform expression, where the source expression results in more than one single element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return 
  copy $newVar := $var/employee[position() < 3]
  modify 
   (delete node $newVar )
    return $newVar