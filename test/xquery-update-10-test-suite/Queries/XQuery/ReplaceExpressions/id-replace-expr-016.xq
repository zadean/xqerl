(: Name: id-replace-expr-016 :)
(: Description: Evaluation of a replace expression where an attempt is made to replace an attribute with an element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[1]
let $var2 := $input-context/employees[1]/employee[2]/salary[1]
return replace node $var1/attribute::mgr with $var2