(: Name: id-replace-expr-023 :)
(: Description:  Evaluation of a replace expression, where the target node is an attribute and the replacement list is not exclusively attribute nodes. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[1]/@dept
return replace node $var1 with (attribute name {"joe"}, <hours>10</hours>)