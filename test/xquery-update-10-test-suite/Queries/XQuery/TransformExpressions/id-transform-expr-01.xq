(: Name: id-transform-expr-01 :)
(: Description: Evaluation of transform expression with modify clause set to "()" :)
(: Transform of an element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/works[1]/employee[1]
let $var2 := $input-context/works[1]/employee[2]
return 
  copy $var2 := $var1
  modify ()
  return $var2