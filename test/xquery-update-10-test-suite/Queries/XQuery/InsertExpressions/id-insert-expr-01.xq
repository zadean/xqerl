(: Name: id-insert-expr-01 :)
(: Description: Evaluation of simple insert expression that uses "after" :)
(: clause of element bound to a variable. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return insert node <hours>25</hours> after $var/hours[1]