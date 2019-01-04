(: Name: id-typeswitch-expr-028 :)
(: Description: Evaluation of rename expression used with typeswitch expression where a branch (the "default") is an updating expression. :)
(: All other branches return a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:string
        return "This test should fail"
 case $i as xs:double
    return "This test should fail"
 default
    return rename node $input-context/employees[1]/salary[1] as "salary1"