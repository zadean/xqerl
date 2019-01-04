(: Name: id-typeswitch-expr-019 :)
(: Description: Evaluation of a replace expression used with typeswitch expression where a branch (the "default") is an updating (replace) expression. :)
(: All other branches return "fn:error()". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]

return 
typeswitch("string")
 case $i as xs:int
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
 case $i as xs:double
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
 default
     return replace value of node $var/hours[1] with $var/hours[2]