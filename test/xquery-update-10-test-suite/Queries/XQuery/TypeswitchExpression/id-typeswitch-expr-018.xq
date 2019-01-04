(: Name: id-typeswitch-expr-018 :)
(: Description: Evaluation of a replace expression used with typeswitch expression where branch (a "case") is an updating (replace) expression. :)
(: All other branches return "fn:error()". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:int
    return (replace value of node $input-context/works[1]/employee[1]/hours[1] with $input-context/works[1]/employee[2]/hours[1])
 case $i as xs:double
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
 default
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))