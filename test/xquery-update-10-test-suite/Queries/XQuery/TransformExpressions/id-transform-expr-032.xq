(: Name: id-transform-expr-032 :)
(: Description: Transform with copy binding to an empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  copy $newVar := $var/*[100]
  modify delete node $newVar/*[1]
  return $newVar
