(: Name: id-transform-expr-016 :)
(: Description: Evaluates a transform expression, which inserts a node and deletes the same node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  copy $newVar := $var
  modify 
   (delete node $newVar/hours[1], insert node <hours>40</hours> as last into $newVar)
  return $newVar