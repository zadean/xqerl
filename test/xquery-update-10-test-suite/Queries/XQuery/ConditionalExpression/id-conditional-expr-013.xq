(: Name: id-conditional-expr-013 :)
(: Description: Evaluation of a replace expression used with conditional expression where a branch (the "then") is an updating (replace) expression. :)
(: The "else" returns the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return 
if (fn:true()) then
 replace value of node $var/hours[1] with $var/hours[2]
else
  ()