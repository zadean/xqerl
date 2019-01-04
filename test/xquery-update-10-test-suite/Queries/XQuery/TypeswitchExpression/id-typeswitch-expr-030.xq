(: Name: id-typeswitch-expr-030 :)
(: Description: Evaluation of a transform expression used with typeswitch expression where the branch (a "case") is an updating (transform) expression. :)
(: Other branches are the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return typeswitch(xs:int(1))
 case $i as xs:int
    return (copy $newVar := $var modify delete node $newVar/hours[1]
    return $newVar)                          
 case $i as xs:double
   return ()
 default
   return ()