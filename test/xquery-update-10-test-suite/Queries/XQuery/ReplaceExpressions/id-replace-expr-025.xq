(: Name: id-replace-expr-025 :)
(: Description: Evaluates a replace expression with value of clause, where the target is a PI node and replacement string contains "?>".:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[4]/processing-instruction()
return replace value of node $var1 with "String with ?> in it"