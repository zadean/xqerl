(: Name: id-transform-expr-07 :)
(: Description: Evaluation of a transform expression where an attribute is transformed. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  copy $newVar := $var
  modify delete node $newVar/attribute::name
  return $newVar