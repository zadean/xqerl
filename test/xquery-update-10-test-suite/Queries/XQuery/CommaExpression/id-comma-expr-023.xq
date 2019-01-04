(: Name: id-comma-expr-023:)
(: Description: Evaluation of a rename expression used with comma expression where first :)
(: expression is an updating expression and the second one is ().  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
 rename node $var/hours[1] as "hours1", ()