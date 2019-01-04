(: Name: id-conditional-expr-035 :)
(: Description: Evaluates a conditional expression, where both braches contains a transform expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
if (fn:true()) then
 copy $newVar := $var modify delete node $newVar/hours[1] return $newVar
else
 copy $newVar := $var modify delete node $newVar/hours[1] return $newVar