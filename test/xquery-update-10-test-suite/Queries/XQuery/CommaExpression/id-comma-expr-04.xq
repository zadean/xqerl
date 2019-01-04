(: Name: id-comma-expr-04 :)
(: Description: Evaluation of insert expression used with comma expression where first :)
(: expression is an updating expression and the second one a call to fn:error().  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[3]
return
(insert node <hours>20</hours> as last into $var, fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000')))