(: Name: id-comma-expr-018:)
(: Description: Evaluation of a replace expression used with comma expression where first :)
(: expression is an updating (replace) expression and the second one a call to fn:error().  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
 replace value of node $var/hours[1] with $var/hours[2], fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))