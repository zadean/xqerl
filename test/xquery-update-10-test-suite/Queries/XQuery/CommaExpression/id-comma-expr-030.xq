(: Name: id-comma-expr-030 :)
(: Description: Evaluation of a transform expression used with comma expression where the :)
(: first expression is an updating expression.  The second one is the empty sequence :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
  (copy $newVar := $var modify delete node $newVar/hours[1] return $newVar,())