(: Name: id-typeswitch-expr-027 :)
(: Description: Evaluation of a rename expression used with typeswitch expression where a branch (a "case") is an updating expression. :)
(: All other branches return a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

typeswitch(xs:int(1))
 case $i as xs:int
    return rename node $input-context/employees[1]/salary[1] as "salary1"
 case $i as xs:double
    return "This test should fail"
 default
    return "This test should fail"