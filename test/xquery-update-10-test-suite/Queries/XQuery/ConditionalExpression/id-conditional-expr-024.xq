(: Name: id-conditional-expr-024 :)
(: Description: Evaluation of a rename expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" prints a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[3]
return
if (fn:false()) then
  "This test should fail"
else
  rename node $var/hours[1] as "hours1"