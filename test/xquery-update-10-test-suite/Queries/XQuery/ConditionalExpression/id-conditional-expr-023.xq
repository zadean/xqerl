(: Name: id-conditional-expr-023 :)
(: Description: Evaluation of rename expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" print a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[3]
return
if (fn:true()) then
  rename node $var/salary[1] as "salary1"
else
  "This test should fail"