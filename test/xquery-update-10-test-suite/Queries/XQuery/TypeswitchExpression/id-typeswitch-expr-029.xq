(: Name: id-typeswitch-expr-029 :)
(: Description: Evaluation of a transform expression used with typeswitch expression where the operand is an updating (transform) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return
typeswitch(copy $newVar := $var 
 modify delete node $newVar/salary[1]
 return $newVar)
 case $i as xs:string
    return "not this one"
 case $i as xs:double
    return "not this one"
 default $i
   return ($i, $var)