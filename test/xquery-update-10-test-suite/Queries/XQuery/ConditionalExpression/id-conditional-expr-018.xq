(: Name: id-conditional-expr-018 :)
(: Description: Evaluation of replace expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" print a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return
if (fn:false()) then
  "This test should fail"
else
  replace value of node $var/salary[1] with <salary>124000</salary>