(: Name: id-conditional-expr-04 :)
(: Description: Evaluation of insert expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" returns fn:error(). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

if (fn:false()) then
  fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
else
 insert node <hours>25</hours> into $input-context/works[1]/employee[2]