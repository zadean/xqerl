(: Name: id-comma-expr-031 :)
(: Description: Evaluation of a transform expression used with comma expression where the :)
(: the first expression is the empty sequence.  The second one is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var :=  $input-context/works[1]/employee[1]
return
  ((), copy $newVar := $var modify delete node $newVar/hours[1] return $newVar)