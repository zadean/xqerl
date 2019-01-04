(: Name: id-conditional-expr-02 :)
(: Description: Evaluation of insert expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" returns the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

if (fn:false()) then
 ()
else
  insert node <hours>25</hours> into $input-context/works[1]/employee[2]