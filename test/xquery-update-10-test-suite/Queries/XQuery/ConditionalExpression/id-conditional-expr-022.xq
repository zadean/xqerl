(: Name: id-conditional-expr-022 :)
(: Description: Evaluation of a rename expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" returns fn:error(). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
if (fn:false()) then
  fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
else
  rename node $var/hours[1] as "hours1"