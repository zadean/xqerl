(: Name: id-typeswitch-expr-024 :)
(: Description: Evaluation of a rename expression used with typeswitch expression where the branch (a "default") is an updating expression. :)
(: Other branches are equal to the empty sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:string
    return ()
 case $i as xs:double
    return () 
 default
   return (rename node $input-context/works[1]/employee[2]/hours[1] as "hours1")