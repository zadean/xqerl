(: Name: id-insert-expr-051 :)
(: Description: Same as id-insert-expr-01, but using keyword "nodes". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return insert nodes <hours>25</hours> after $var/hours[1]