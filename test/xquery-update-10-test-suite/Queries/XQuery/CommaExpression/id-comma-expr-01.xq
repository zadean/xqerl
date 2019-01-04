(: Name: id-comma-expr-01 :)
(: Description: Evaluation of insert expression used with comma expression where both :)
(: expressions are updating expressions.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var :=$input-context/works[1]/employee[1]
return
(insert node <hours>20</hours> as last into $var, insert node <hours>25</hours> as last into $var)