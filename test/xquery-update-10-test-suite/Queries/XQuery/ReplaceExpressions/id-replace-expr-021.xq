(: Name: id-replace-expr-021 :)
(: Description: Evaluation of a replace expression where an attribute node's value is replaced with an element node :)
(: and usage of the "value of" keyword. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[1]
let $var2 := <salary>200000</salary>
return replace value of node $var1/attribute::mgr with $var2