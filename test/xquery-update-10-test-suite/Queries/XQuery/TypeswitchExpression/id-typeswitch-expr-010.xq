(: Name: id-typeswitch-expr-010 :)
(: Description: Evaluation of delete expression used with typeswitch expression where the branch (a "default") is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

 typeswitch(xs:int(1))
  case $i as xs:string
    return ()
  case $i as xs:double
    return () 
  default
   return (delete node $input-context/works[1]/employee[1]/hours[1])