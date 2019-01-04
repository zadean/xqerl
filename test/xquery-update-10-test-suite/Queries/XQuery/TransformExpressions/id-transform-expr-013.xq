(: Name: id-transform-expr-013 :)
(: Description: Evaluation of a transform expression where the modify clause contains a non-updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return 
  copy $newVar := $var
  modify xs:integer(1) + xs:integer(2)
  return $newVar