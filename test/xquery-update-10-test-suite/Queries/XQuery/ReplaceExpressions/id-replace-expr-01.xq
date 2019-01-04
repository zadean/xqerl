(: Name: id-replace-expr-01 :)
(: Description: Evaluation of a replace expression that replaces an element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace node $var/hours[1] with <hours>25</hours>