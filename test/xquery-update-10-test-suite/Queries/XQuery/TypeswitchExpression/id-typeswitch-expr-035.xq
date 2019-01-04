(: Name: id-typeswitch-expr-035 :)
(: Description: Evaluation of insert expression used with typeswitch expression where a branch (the "default") is an updating expression. :)
(: All other branches return a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return
typeswitch(xs:int(1))
 case $i as xs:string
        return "This test should not fail"
 case $i as xs:double
    return "This test should not fail"
 default
    return (copy $newVar := $var modify delete node $newVar/salary[1]
    return $newVar) 