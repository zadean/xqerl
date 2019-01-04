(: Name: id-conditional-expr-019 :)
(: Description: Evaluation of a delete expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" returns the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
if (fn:true()) then
 rename node $var/hours[1] as "hours1"
else
  ()