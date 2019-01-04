(: Name: id-transform-expr-04 :)
(: Description: Evaluation of transform expression with modify clause set to an insert expression expression. :)
(: Transform of an element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  copy $newVar := $var
  modify insert node <pnum1>P1-1</pnum1> after $newVar/pnum[1]
  return $newVar