(: Name: id-replace-expr-028 :)
(: Description: Evaluation of a replace expression where an empty traget is replaced with an attribute node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/works[1]/employee[100]
let $var2 := $input-context/works[1]/employee[1]
return replace node $var1 with $var2