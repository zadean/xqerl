(: Name: id-transform-expr-011 :)
(: Description: Evaluation of a transform expression where two variables are bounded :)
(: and both ones are transformed. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]
return 
  copy $newVar1 := $var/employee[1], $newVar2 := $var/employee[2]
  modify delete node ($newVar1/hours[1], $newVar2/hours[1])
  return ($newVar1, $newVar2)