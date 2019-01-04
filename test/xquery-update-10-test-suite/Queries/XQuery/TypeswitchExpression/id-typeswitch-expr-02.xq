(: Name: id-typeswitch-expr-02 :)
(: Description: Evaluation of insert expression used with typeswitch expression where the branch (a "case") is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:int
    return (insert node <hours>20</hours> into $input-context/works[1]/employee[1])
 case $i as xs:double
    return () 
 default
   return ()