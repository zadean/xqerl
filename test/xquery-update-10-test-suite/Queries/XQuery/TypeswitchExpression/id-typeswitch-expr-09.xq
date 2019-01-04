(: Name: id-typeswitch-expr-09 :)
(: Description: Evaluation of a delete expression used with typeswitch expression where the branch (a "case") is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

 typeswitch(xs:int(1))
  case $i as xs:int
    return (delete node $input-context/works[1]/employee[1]/hours[1])
  case $i as xs:double
    return () 
  default
    return () 