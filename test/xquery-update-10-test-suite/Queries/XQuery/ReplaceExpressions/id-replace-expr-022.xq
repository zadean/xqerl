(: Name: id-replace-expr-022 :)
(: Description: Evaluation of a replace expression where an Element node value is replaced with an attribute node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/works[1]/employee[1]
let $var2 := $input-context/works[1]/employee[1]/@gender
return replace node $var1/hours[1] with $var2