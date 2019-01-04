(: Name: id-comma-expr-026 :)
(: Description: Evaluation of a rename expression used with comma expression where first :)
(: expression is a call to fn:error() and the second one updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
 (fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000')),rename node $var/hours[1] as "hours1")