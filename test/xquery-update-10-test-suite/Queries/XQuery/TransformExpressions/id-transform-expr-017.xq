(: Name: id-transform-expr-017 :)
(: Description: Evaluates a transform expression, which deletes a node and then isnserts a node with the same node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  copy $newVar := $var
  modify 
   (insert node <hours>40</hours> as last into $newVar, delete node $newVar/hours[1])
  return $newVar