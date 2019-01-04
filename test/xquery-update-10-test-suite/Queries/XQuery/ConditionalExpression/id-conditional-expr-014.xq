(: Name: id-conditional-expr-014 :)
(: Description: Evaluation of replace expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" returns the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return 
if (fn:false()) then
 ()
else
  replace value of node $var/hours[1] with $var/hours[2]