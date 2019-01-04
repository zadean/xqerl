(: Name: id-replace-expr-024 :)
(: Description:  Evaluates a replace expression with value of clause, where the target is a comment node and replacement string contains two adjacents hypens. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[4]/comment()
return replace value of node $var1 with "String with -- in it"