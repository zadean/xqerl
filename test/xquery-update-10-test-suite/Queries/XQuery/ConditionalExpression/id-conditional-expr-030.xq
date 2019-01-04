(: Name: id-conditional-expr-030 :)
(: Description: Evaluation of a transform expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" returns a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return
if (fn:false()) then
  "This test should fail"
else
  (copy $newVar := $var modify delete node $newVar/salary[1]
  return $newVar)
