(: Name: id-conditional-expr-027 :)
(: Description: Evaluation of a transform expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" returns is an invokation to the fn:error function. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
if (fn:true()) then
  (copy $newVar := $var modify delete node $newVar/hours[1]
  return $newVar)
else
  fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))