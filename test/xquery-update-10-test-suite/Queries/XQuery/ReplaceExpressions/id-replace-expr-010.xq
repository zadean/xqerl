(: Name: id-replace-expr-010 :)
(: Description: Evaluation of a replace expression that replaces an element with the empty sequence :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return replace node $var/salary[1] with ()