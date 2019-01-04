(: Name: id-conditional-expr-05 :)
(: Description: Evaluation of insert expression used with conditional expression where a branch (the "then") is an updating expression. :)
(: The "else" print a string. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

if (fn:true()) then
 insert node <salary>25000</salary> into $input-context/employees[1]/employee[2]
else
  "This test should fail"