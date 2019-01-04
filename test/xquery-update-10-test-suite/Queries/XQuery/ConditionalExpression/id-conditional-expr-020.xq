(: Name: id-conditional-expr-020 :)
(: Description: Evaluation of a rename expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" returns the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
if (fn:false()) then
 ()
else
  rename node $var/hours[1] as "hours1"