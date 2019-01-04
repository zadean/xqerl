(: Name: id-typeswitch-expr-033 :)
(: Description: Evaluation of a transform expression used with typeswitch expression where branch (the default) is an updating (a transform) expression. :)
(: All other branches return "fn:error()". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var :=$input-context/works[1]/employee[2]
return
typeswitch(xs:int(1))
 case $i as xs:string
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
 case $i as xs:double
    return fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
 default
    return (copy $newVar := $var modify delete node $newVar/hours[2]
    return $newVar) 