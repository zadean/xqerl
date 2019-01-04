(: Name: id-conditional-expr-01 :)
(: Description: Evaluation of insert expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" returns the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

if (fn:true()) then
 insert node <hours>25</hours> into $input-context/works[1]/employee[2]
else
  ()