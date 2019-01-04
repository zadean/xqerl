(: Name: id-transform-expr-02 :)
(: Description: Evaluation of transform expression with modify clause set to a delete expression. :)
(: Transform of an element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  copy $newVar := $var
  modify delete node $newVar/pnum[1]
  return $newVar