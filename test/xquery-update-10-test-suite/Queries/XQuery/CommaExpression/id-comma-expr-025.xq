(: Name: id-comma-expr-025 :)
(: Description: Evaluation of a rename expression used with comma expression where first :)
(: expression is an updating expression and the second one a call to fn:error().  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
 rename node $var/hours[1] as "hours1" , fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))