(: Name: id-transform-expr-08 :)
(: Description: Evaluation of a transform expression where a comment node is transformed. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return
  copy $newVar := $var
  modify delete node $newVar/child::comment()
  return $newVar