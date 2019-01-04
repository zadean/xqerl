(: Name: id-typeswitch-expr-037 :)
(: Description: Vacuous typeswitch expression in an updating typeswitch expression.
 :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   typeswitch(xs:int(10))
      case $i as xs:double
         return 
            typeswitch(xs:int(10))
               case $i as xs:int
                  return ()
               case $i as xs:double
                  return ()
               default
                  return ()
      case $i as xs:int
         return replace value of node $input-context/works[1]/employee[1]/hours[1] with 44
      default
         return ()
