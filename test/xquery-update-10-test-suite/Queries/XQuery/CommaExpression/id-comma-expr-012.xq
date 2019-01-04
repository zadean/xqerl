(: Name: id-comma-expr-012 :)
(: Description: Evaluation of a delete expression used with comma expression where first :)
(: expression is a call to fn:error() and the second one updating expression .  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
 (fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000')),delete node $var/hours[1])