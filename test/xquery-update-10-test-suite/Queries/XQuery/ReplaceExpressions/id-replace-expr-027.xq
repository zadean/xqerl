(: Name: id-replace-expr-027 :)
(: Description: Evaluates a replace expression with value of clause, where the target expression is set to "()".:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return replace value of node () with <hours>20</hours>