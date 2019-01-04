(: Name: id-conditional-expr-03 :)
(: Description: Evaluation of insert expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" returns fn:error(). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

if (fn:true()) then
  insert node <hours>25</hours> into $input-context/works[1]/employee[2]
else
  fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))