(: Name: id-transform-expr-019 :)
(: Description: Evaluates a transform expression, where a node is affected by more than one rename expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  copy $newVar := $var
  modify 
   (rename node $newVar/salary[1] as "salary1", rename node $newVar/salary[1] as "salary2")
    return $newVar