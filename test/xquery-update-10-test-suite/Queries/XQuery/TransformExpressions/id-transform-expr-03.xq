(: Name: id-transform-expr-03 :)
(: Description: Evaluation of transform expression with modify clause set to a rename expression. :)
(: Transform of an element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  copy $newVar := $var
  modify rename node $newVar/pnum[1] as "pnum1"
  return $newVar