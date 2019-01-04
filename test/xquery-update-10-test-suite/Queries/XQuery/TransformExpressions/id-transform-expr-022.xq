(: Name: id-transform-expr-022 :)
(: Description: Evaluates a transform expression, where an attribute node is affected by more than one replace expression (no "value of" being specified. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return 
  copy $newVar := $var
  modify 
   (replace node $newVar/employee[1]/@dept with $newVar/empoloyee[2]/@dept, replace node $newVar/employee[1]/@dept with $newVar/employee[3]/@dept)
    return $newVar