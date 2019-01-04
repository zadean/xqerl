(: Name: id-typeswitch-expr-031 :)
(: Description: Evaluation of a transform expression used with typeswitch expression where the branch (a "default") is an updating (a transform) expression. :)
(: Other branches are the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
typeswitch(xs:int(1))
 case $i as xs:string
    return ()
 case $i as xs:double
    return () 
 default
   return (copy $newVar := $var modify delete node $newVar/hours[2]
   return $newVar)