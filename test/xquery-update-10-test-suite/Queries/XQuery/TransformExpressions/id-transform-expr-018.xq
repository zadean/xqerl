(: Name: id-transform-expr-018 :)
(: Description: Evaluates a transform expression, which contains an embedded Transform expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  copy $newVar := $var
  modify 
   (copy $newVar1 := $newVar modify (insert node <hours>40</hours> as last into $newVar1) return $newVar1)
    return $newVar