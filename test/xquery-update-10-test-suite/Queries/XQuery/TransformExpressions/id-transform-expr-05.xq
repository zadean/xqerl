(: Name: id-transform-expr-05 :)
(: Description: Evaluation of transform expression with modify clause set to a replace expression expression. :)
(: Transform of an element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
let $var1 := <pnum>P1-1</pnum>
return 
  copy $newVar := $var
  modify replace node $newVar/pnum[1] with $var1
  return $newVar