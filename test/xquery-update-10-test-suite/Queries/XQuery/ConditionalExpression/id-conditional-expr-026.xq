(: Name: id-conditional-expr-026 :)
(: Description: Evaluation of a transform expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" returns the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var :=$input-context/works[1]/employee[2]
return
if (fn:false()) then
   ()
else
   (copy $newVar := $var modify delete node $newVar/hours[1]
   return $newVar)