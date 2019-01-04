(: Name: id-conditional-expr-015 :)
(: Description: Evaluation of a replace expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" invokes fn:error(). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return 
if (fn:true()) then
  replace value of node $var/hours[1] with $var/hours[2]
else
  fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))