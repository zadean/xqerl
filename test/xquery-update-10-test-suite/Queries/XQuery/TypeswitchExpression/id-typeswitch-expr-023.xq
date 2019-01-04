(: Name: id-typeswitch-expr-023 :)
(: Description: Evaluation of a rename expression used with typeswitch expression where the branch (a "case") is an updating expression. :)
(: The other branches are the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


typeswitch(xs:int(1))
 case $i as xs:int
    return rename node $input-context/works[1]/employee[1]/hours[1] as "hours1"
 case $i as xs:double
    return () 
 default
   return ()