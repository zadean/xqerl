(: Name: id-typeswitch-expr-016 :)
(: Description: Evaluation of a replace expression used with typeswitch expression where the branch (a "case") is an updating (replace) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:int
    return (replace value of node $input-context/works[1]/employee[1]/hours[1] with $input-context/works[1]/employee[2]/hours[1])
 case $i as xs:double
    return () 
 default
   return ()