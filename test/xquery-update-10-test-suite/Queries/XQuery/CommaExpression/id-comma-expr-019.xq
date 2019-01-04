(: Name: id-comma-expr-019 :)
(: Description: Evaluation of a replace expression used with comma expression where first :)
(: expression is a call to fn:error() and the second one updating (replace)expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
(fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000')),replace value of node $var/hours[1] with $var/hours[2])