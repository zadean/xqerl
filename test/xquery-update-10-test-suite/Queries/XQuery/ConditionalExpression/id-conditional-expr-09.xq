(: Name: id-conditional-expr-09 :)
(: Description: Evaluation of a delete expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" returns fn:error(). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
 if (fn:true()) then
  delete node $var/hours[1]
 else
  fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))