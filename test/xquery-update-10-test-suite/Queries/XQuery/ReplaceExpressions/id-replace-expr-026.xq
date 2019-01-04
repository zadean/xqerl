(: Name: id-replace-expr-026 :)
(: Description: Evaluates a replace expression with value of clause, where the target expression results in an empty sequence.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]
return replace value of node ($var/employee[1]/hours[1], $var/employee[2]/hours[1]) with <hours>20</hours>