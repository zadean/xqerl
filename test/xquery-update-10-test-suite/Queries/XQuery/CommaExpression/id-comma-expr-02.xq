(: Name: id-comma-expr-02 :)
(: Description: Evaluation of insert expression used with comma expression where first :)
(: expression is an updating expression and the secon one is ().  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
(insert node <hours>20</hours> as last into $var, ())