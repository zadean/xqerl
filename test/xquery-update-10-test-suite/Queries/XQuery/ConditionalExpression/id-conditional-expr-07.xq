(: Name: id-conditional-expr-07 :)
(: Description: Evaluation of a delete expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" returns the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
 if (fn:true()) then
   delete node $var/hours[1]
 else
  ()