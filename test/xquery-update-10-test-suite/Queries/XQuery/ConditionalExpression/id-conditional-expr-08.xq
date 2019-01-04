(: Name: id-conditional-expr-08 :)
(: Description: Evaluation of a delete expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" returns the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
 if (fn:false()) then
  ()
 else
  delete node $var/hours[1]