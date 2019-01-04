(: Name: id-transform-expr-06 :)
(: Description: Evaluation of transform expression where multiple element nodes are bounded. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/child::employee
return 
  copy $newVar := $var
  modify delete node $newVar[position() > 1]
  return $newVar