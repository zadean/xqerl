(: Name: id-typeswitch-expr-034 :)
(: Description: Evaluation of a transform expression used with typeswitch expression where a branch (a "case") is an updating expression. :)
(: All other branches return a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return
typeswitch(xs:int(1))
 case $i as xs:int
    return (copy $newVar := $var modify delete node $newVar/salary[1]
    return $newVar) 
 case $i as xs:double
    return "This test should not fail"
 default
    return "This test should not fail"