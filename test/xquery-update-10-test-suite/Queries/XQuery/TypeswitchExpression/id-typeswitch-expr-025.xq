(: Name: id-typeswitch-expr-025 :)
(: Description: Evaluation of a rename expression used with typeswitch expression where branch (a "case") is an updating expression. :)
(: All other branches invoke "fn:error()". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:int
    return rename node $input-context/works[1]/employee[2]/hours[1] as "hours1"
 case $i as xs:double
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
 default
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))