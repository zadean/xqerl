(: Name: id-conditional-expr-06 :)
(: Description: Evaluation of insert expression used with conditional expression where a branch (the "else") is an updating expression. :)
(: The "then" print a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

if (fn:false()) then
  "This test should fail"
else
 insert node <salary>25000</salary> into $input-context/employees[1]/employee[2]