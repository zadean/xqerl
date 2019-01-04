(: Name: id-comma-expr-029 :)
(: Description: Evaluation of a transform expression used with comma expression where both :)
(: expressions are updating expressions.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
  (copy $newVar1 := $var modify delete node $newVar1/hours[1] return $newVar1,
   copy $newVar2 := $var modify delete node $newVar2/hours[2] return $newVar2)